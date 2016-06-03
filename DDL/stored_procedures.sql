CREATE FUNCTION transporatable_dogs(plane_capacity int)
  RETURNS dogsAvailable AS $$
    SELECT Dog.name, shelter.name
    FROM dog JOIN shelter ON dog.shelter_id = shelter.id
    WHERE dog.weight <= plane_capacity;
  $$ language = 'sql' $

CREATE FUNCTION notification_count()
  RETURNS notifications AS $$
    SELECT COUNT(*)
    FROM recipient
    WHERE message_read = FALSE
  $$ language = 'sql' $

CREATE FUNCTION display_unread_messages()
  RETURNS unreadMessages AS $$
    SELECT message.title, message.message_text, member.first_name, member.last_name
    FROM message JOIN recipient ON recipient.message_id = message.message_id
    JOIN member ON member.id = message.sender_user_id
    WHERE recipient.message_read = FALSE
  $$ language = 'sql' $
