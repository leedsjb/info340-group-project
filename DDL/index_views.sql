-- Indexes

CREATE INDEX lnglat_idx
ON Location (long, lat);

CREATE INDEX sent_datetime_idx
ON Message (sent_datetime);

-- Views

CREATE VIEW dog_shelter_view AS 
SELECT pet_id, dog.name AS dog_name, shelter.name AS shelter_name, weight, age, breed, pet_license, rescuer_id FROM Dog 
JOIN shelter ON dog.shelter_id = shelter.id;

CREATE VIEW shelter_location_view AS
SELECT shelter.name, lat, long FROM shelter
JOIN location ON shelter.location_id = location.id;