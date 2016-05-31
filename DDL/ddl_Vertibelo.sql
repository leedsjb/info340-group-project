-- Vertibelo output
CREATE TABLE Airport (
    ICAO character(4) NOT NULL CONSTRAINT Airport_pk PRIMARY KEY,
    location_id integer NOT NULL,
    CONSTRAINT Airport_Location FOREIGN KEY (location_id)
    REFERENCES Location (id)
);

-- Table: Dog
CREATE TABLE Dog (
    pet_id integer NOT NULL CONSTRAINT Dog_pk PRIMARY KEY,
    shelter_id integer NOT NULL,
    rescuer_id integer NOT NULL,
    trip_id integer NOT NULL,
    isLiscensed boolean NOT NULL,
    name varchar(32),
    weight integer,
    age integer,
    breed varchar(32),
    pet_license integer,
    CONSTRAINT Rescuer_Dog FOREIGN KEY (rescuer_id)
    REFERENCES Rescuer (member_id),
    CONSTRAINT Shelter_Dog FOREIGN KEY (shelter_id)
    REFERENCES Shelter (id),
    CONSTRAINT Dog_Trip FOREIGN KEY (trip_id)
    REFERENCES Trip (id)
);

-- Table: Location
CREATE TABLE Location (
    id integer NOT NULL CONSTRAINT Location_pk PRIMARY KEY,
    long decimal(7,4) NOT NULL,
    lat decimal(7,4) NOT NULL
);

-- Table: Member
CREATE TABLE Member (
    id serial NOT NULL CONSTRAINT Member_pk PRIMARY KEY,
    location_id integer NOT NULL,
    first_name varchar(32),
    last_name varchar(32),
    login_name varchar(32) NOT NULL,
    hash_password varchar(32) NOT NULL,
    isPilot boolean NOT NULL,
    CONSTRAINT User_Location FOREIGN KEY (location_id)
    REFERENCES Location (id)
);

-- Table: Message
CREATE TABLE Message (
    message_id integer NOT NULL CONSTRAINT Message_pk PRIMARY KEY,
    sender_user_id integer NOT NULL,
    reply_to_message_id integer,
    sent_datetime date NOT NULL,
    title varchar(20) NOT NULL,
    message_text text,
    CONSTRAINT Thread_Comment_Thread_Comment FOREIGN KEY (reply_to_message_id)
    REFERENCES Message (message_id),
    CONSTRAINT Thread_Comment_User FOREIGN KEY (sender_user_id)
    REFERENCES Member (id)
);

-- Table: Pilot
CREATE TABLE Pilot (
    member_id integer NOT NULL CONSTRAINT Pilot_pk PRIMARY KEY,
    cert_num integer NOT NULL,
    CONSTRAINT User_Pilot FOREIGN KEY (member_id)
    REFERENCES Member (id)
);

-- Table: Plane
CREATE TABLE Plane (
    registration varchar(10) NOT NULL CONSTRAINT Plane_pk PRIMARY KEY,
    ICAO character(4) NOT NULL,
    CONSTRAINT Plane_Airport FOREIGN KEY (ICAO)
    REFERENCES Airport (ICAO)
);

-- Table: Plane_Pilot
CREATE TABLE Plane_Pilot (
    id integer NOT NULL CONSTRAINT Plane_Pilot_pk PRIMARY KEY,
    pilot_id integer NOT NULL,
    plane_registration varchar(10) NOT NULL,
    CONSTRAINT Pilot_Plane FOREIGN KEY (pilot_id)
    REFERENCES Pilot (member_id),
    CONSTRAINT Plane_Pilot_Plane FOREIGN KEY (plane_registration)
    REFERENCES Plane (registration)
);

-- Table: Recipient
CREATE TABLE Recipient (
    message_id integer NOT NULL,
    user_id integer NOT NULL,
    message_read boolean NOT NULL,
    recipient_read_date date,
    CONSTRAINT Recipient_pk PRIMARY KEY (message_id,user_id),
    CONSTRAINT Thread_Comment_Form_Thread FOREIGN KEY (message_id)
    REFERENCES Message (message_id),
    CONSTRAINT Form_Thread_User FOREIGN KEY (user_id)
    REFERENCES Member (id)
);

-- Table: Rescuer
CREATE TABLE Rescuer (
    member_id integer NOT NULL CONSTRAINT Rescuer_pk PRIMARY KEY,
    CONSTRAINT User_Rescuer FOREIGN KEY (member_id)
    REFERENCES Member (id)
);

-- Table: Shelter
CREATE TABLE Shelter (
    id serial NOT NULL CONSTRAINT Shelter_pk PRIMARY KEY,
    location_id integer NOT NULL,
    name varchar(32) NOT NULL,
    CONSTRAINT Shelter_Location FOREIGN KEY (location_id)
    REFERENCES Location (id)
);

-- Table: Trip
CREATE TABLE Trip (
    id integer NOT NULL CONSTRAINT Trip_pk PRIMARY KEY,
    pilot_id integer NOT NULL,
    distance decimal(5,2) NOT NULL,
    flight_date date NOT NULL,
    CONSTRAINT Pilot_Trip FOREIGN KEY (pilot_id)
    REFERENCES Pilot (member_id)
);
