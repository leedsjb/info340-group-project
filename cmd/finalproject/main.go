// by setting package as main, Go will compile this as an executable file.
// Any other package turns this into a library
package main

// These are your imports / libraries / frameworks
import (
	// this is Go's built-in sql library
	"database/sql"
	"log"
	"net/http"
	"os"
	"strconv"

	// this allows us to run our web server
	"github.com/gin-gonic/gin"
	// this lets us connect to Postgres DB's
	_ "github.com/lib/pq"
)

var (
	// this is the pointer to the database we will be working with
	// this is a "global" variable (sorta kinda, but you can use it as such)
	db *sql.DB
)

func main() {
	port := os.Getenv("PORT")
	if port == "" {
		log.Fatal("$PORT must be set")
	}

	var errd error
	// here we want to open a connection to the database using an environemnt variable.
	// This isn't the best technique, but it is the simplest one for heroku
	db, errd = sql.Open("postgres", os.Getenv("DATABASE_URL"))
	if errd != nil {
		log.Fatalf("Error opening database: %q", errd)
	}
	router := gin.New()
	router.Use(gin.Logger())
	router.LoadHTMLGlob("html/*")
	router.Static("/static", "static")

	router.GET("/", func(c *gin.Context) {
		c.HTML(http.StatusOK, "index.html", nil)
	})
	router.GET("/pilot_search.html", func(c *gin.Context) {
		c.HTML(http.StatusOK, "pilot_search.html", nil)
	})

	router.GET("/pilot_transport.html", func(c *gin.Context) {
		c.HTML(http.StatusOK, "pilot_transport.html", nil)
	})

	router.GET("/rescuer_edit.html", func(c *gin.Context) {
		c.HTML(http.StatusOK, "rescuer_edit.html", nil)
	})
	router.GET("/rescuer_list.html", func(c *gin.Context) {
		c.HTML(http.StatusOK, "rescuer_list.html", nil)
	})

	router.GET("/ping", func(c *gin.Context) {
		ping := db.Ping()
		if ping != nil {
			// our site can't handle http status codes, but I'll still put them in cause why not
			c.JSON(http.StatusOK, gin.H{"error": "true", "message": "db was not created. Check your DATABASE_URL"})
		} else {
			c.JSON(http.StatusOK, gin.H{"error": "false", "message": "db created"})
		}
	})

	router.GET("/query1", func(c *gin.Context) {
		table := "<table class='table'><thead><tr>"
		// put your query here
		rows, err := db.Query("SELECT dog.pet_id, dog.name, shelter.name, weight, age, breed FROM dog JOIN shelter ON shelter.id = dog.shelter_id") // <--- EDIT THIS LINE
		if err != nil {
			// careful about returning errors to the user!
			c.AbortWithError(http.StatusInternalServerError, err)
		}
		// foreach loop over rows.Columns, using value
		cols, _ := rows.Columns()
		if len(cols) == 0 {
			c.AbortWithStatus(http.StatusNoContent)
		}
		for _, value := range cols {
			table += "<th class='text-center'>" + value + "</th>"
		}
		// once you've added all the columns in, close the header
		table += "</thead><tbody>"
		// declare all your RETURNED columns here
		var petId int
		var dogName string     // <--- EDIT THESE LINES
		var shelterName string //<--- ^^^^
		var weight int
		var age int
		var breed string
		for rows.Next() {
			// assign each of them, in order, to the parameters of rows.Scan.
			// preface each variable with &
			rows.Scan(&petId, &dogName, &shelterName, &weight, &age, &breed) // <--- EDIT THIS LINE
			// can't combine ints and strings in Go. Use strconv.Itoa(int) instead
			table += "<tr><td>" + strconv.Itoa(petId) + "</td><td>" + dogName + "</td><td>" + shelterName + "</td><td>" + strconv.Itoa(weight) + "</td><td>" + strconv.Itoa(age) + "</td><td>" + breed + "</td><td><button type='button' id='" + strconv.Itoa(petId) + "' class='btn btn-primary'>Edit</button></td></tr>"
		}
		// finally, close out the body and table
		table += "</tbody></table>"
		c.Data(http.StatusOK, "text/html", []byte(table))
	})

	router.GET("/edit", func(c *gin.Context) {

		dogDetail, err := db.Query("SELECT dog.name, shelter.name, dog.weight, dog.age, dog.breed, dog.pet_license FROM dog JOIN shelter ON dog.shelter_id = shelter.id WHERE pet_id = 8")

		if err != nil {
			// careful about returning errors to the user!
			c.AbortWithError(http.StatusInternalServerError, err)
		}

		// type Login struct {
		// 	dogName string
		// }

		var dogName string
		var shelterName string
		var weight int
		var age int
		var breed string
		var petLicense int

		for dogDetail.Next() {
			dogDetail.Scan(&dogName, &shelterName, &weight, &age, &breed, &petLicense) // put columns here prefaced with &
		}

		log.Println(dogName, breed)

		c.JSON(http.StatusOK, gin.H{
			"dogName":     dogName,
			"shelterName": shelterName,
			"weight":      weight,
			"age":         age,
			"breed":       breed,
			"petLicense":  petLicense,
		})

	})

	router.GET("/query2", func(c *gin.Context) {
		table := "<table class='table'><thead><tr>"
		// put your query here
		rows, err := db.Query("SELECT dog.name, dog.weight, member.first_name, member.last_name" +
			" FROM dog JOIN rescuer ON dog.rescuer_id = rescuer.member_id" +
			" JOIN member ON rescuer.member_id = member.id") // <--- EDIT THIS LINE
		if err != nil {
			// careful about returning errors to the user!
			c.AbortWithError(http.StatusInternalServerError, err)
		}
		// foreach loop over rows.Columns, using value
		cols, _ := rows.Columns()
		if len(cols) == 0 {
			c.AbortWithStatus(http.StatusNoContent)
		}
		for _, value := range cols {
			table += "<th class='text-center'>" + value + "</th>"
		}
		// once you've added all the columns in, close the header
		table += "</thead><tbody>"
		// columns
		var dogName string
		var dogWeight int
		var rescuerFirstName string
		var rescuerLastName string

		for rows.Next() {
			rows.Scan(&dogName, &dogWeight, &rescuerFirstName, &rescuerLastName) // put columns here prefaced with &
			table +=
				"<tr><td>" + dogName +
					strconv.Itoa(dogWeight) +
					rescuerFirstName +
					rescuerLastName + "</td></tr>"
		}
		// finally, close out the body and table
		table += "</tbody></table>"
		c.Data(http.StatusOK, "text/html", []byte(table))
	})

	// router.GET("/query3", func(c *gin.Context) {
	// 	table := "<table class='table'><thead><tr>"
	// 	// put your query here
	// 	rows, err := db.Query("SELECT artist.name, COUNT(album.albumId) FROM artist NATURAL JOIN album GROUP BY artist.artistId") // <--- EDIT THIS LINE
	// 	if err != nil {
	// 		// careful about returning errors to the user!
	// 		c.AbortWithError(http.StatusInternalServerError, err)
	// 	}
	// 	// foreach loop over rows.Columns, using value
	// 	cols, _ := rows.Columns()
	// 	if len(cols) == 0 {
	// 		c.AbortWithStatus(http.StatusNoContent)
	// 	}
	// 	for _, value := range cols {
	// 		table += "<th class='text-center'>" + value + "</th>"
	// 	}
	// 	// once you've added all the columns in, close the header
	// 	table += "</thead><tbody>"
	// 	// columns
	// 	var name string
	// 	var count int
	// 	for rows.Next() {
	// 		rows.Scan(&name, &count) // put columns here prefaced with &
	// 		table += "<tr><td>" + name + "</td><td>" + strconv.Itoa(count) + "</td></tr>" // <--- EDIT THIS LINE
	// 	}
	// 	// finally, close out the body and table
	// 	table += "</tbody></table>"
	// 	c.Data(http.StatusOK, "text/html", []byte(table))
	// })

	// NO code should go after this line. it won't ever reach that point
	router.Run(":" + port)
}

/*
Example of processing a GET request

// this will run whenever someone goes to last-first-lab7.herokuapp.com/EXAMPLE
router.GET("/EXAMPLE", func(c *gin.Context) {
    // process stuff
    // run queries
    // do math
    //decide what to return
    c.JSON(http.StatusOK, gin.H{
        "key": "value"
        }) // this returns a JSON file to the requestor
    // look at https://godoc.org/github.com/gin-gonic/gin to find other return types. JSON will be the most useful for this
})

*/
