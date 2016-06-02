package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
	"os"
)

type bingResponse struct {
	ResourceSets []struct {
		Resources []struct {
			Point struct {
				Type        string        `json:"type"`
				Coordinates []json.Number `json:"coordinates"`
			} `json:"point"`
		} `json:"resources"`
	} `json:"resourceSets"`
	statusCode uint16
}

func geocode(location string) (string, string) {
	var apiKey = os.Getenv("API_KEY")
	url := fmt.Sprintf("http://dev.virtualearth.net/REST/v1/Locations/%s?maxResults=1&key=%s", location, apiKey)
	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		panic(err)
	}

	client := &http.Client{}
	rsp, err := client.Do(req)
	if err != nil {
		panic(err)
	}

	defer rsp.Body.Close()
	body, err := ioutil.ReadAll(rsp.Body)
	if err != nil {
		panic(err)
	}

	var data bingResponse
	json.Unmarshal(body, &data)
	if err != nil {
		panic(err)
	}
	coordinates := data.ResourceSets[0].Resources[0].Point.Coordinates

	lat := coordinates[0].String()
	lng := coordinates[1].String()

	return lat, lng
}
