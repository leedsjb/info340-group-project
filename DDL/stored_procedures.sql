CREATE FUNCTION transporatable_dogs (plane_capacity int)
  RETURNS dogsAvailable AS $$
    SELECT Dog.name, shelter.name
    FROM dog JOIN shelter ON dog.shelter_id = shelter.id
    WHERE dog.weight <= plane_capacity;
  $$ language = 'sql' $
