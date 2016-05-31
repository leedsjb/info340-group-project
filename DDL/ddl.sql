--Insert Mock data

-- location_airport
INSERT INTO location VALUES (1, 47.443590, -122.296073); --SEATAC
INSERT INTO location VALUES (2, 45.589769, -122.595094); -- PDX
INSERT INTO location VALUES (3, 48.053837, -122.810658); -- Jefferson County Airport
INSERT INTO location VALUES (4, 47.621748, -117.534812); --Spokane Airport
INSERT INTO location VALUES (5, 44.093185, -121.202589); --Bend Airport

--location_member
INSERT INTO location VALUES (6, 48.117039, -122.760447); --Port Townsend
INSERT INTO location VALUES (7, 46.716214, -122.954297); --Centralia
INSERT INTO location VALUES (8, 45.523062, -122.676482); --Portland
INSERT INTO location VALUES (9, 44.052069, -123.086754); --Eugene
INSERT INTO location VALUES (10, 47.762320, -122.205403); --Bothell
INSERT INTO location VALUES (11, 46.602071, -120.505899); --Yakima
INSERT INTO location VALUES (12, 47.658780, -117.426047); --Spokane
INSERT INTO location VALUES (13, 44.942898, -123.035096); --Salem
INSERT INTO location VALUES (14, 44.564566, -123.262044); --Corvallis OR
INSERT INTO location VALUES (15, 48.118146, -123.430741); --Port Angeles
INSERT INTO location VALUES (16, 47.626208, -122.521245); --Bainbridge Island
INSERT INTO location VALUES (17, 48.749080, -122.478147); --Bellingham
INSERT INTO location VALUES (18, 47.606209, -122.332071); --Seattle
INSERT INTO location VALUES (19, 44.290949, -121.549212); --Sisters OR
INSERT INTO location VALUES (20, 43.884007, -121.438640); -- Sun River OR
INSERT INTO location VALUES (21, 45.638728, -122.661486); --Vancouver WA
INSERT INTO location VALUES (22, 48.633082, -122.928982); --Orcas Island WA

--location_shelter
INSERT INTO location VALUES (23, 47.638351, -122.376592); --Seattle Animal Shelter
INSERT INTO location VALUES (24, 47.233843, -122.471354); --The Humane Society for Tacoma & Pierce County
INSERT INTO location VALUES (25, 48.102802, -122.827917); --Jefferson County Animal Shelter
INSERT INTO location VALUES (26, 45.630069, -122.477112); --Humane Society for Southwest Washington
INSERT INTO location VALUES (27, 44.501004, -122.823676); --Linn County Animal Rescue
INSERT INTO location VALUES (28, 45.504352, 122.956679); --Bonnie L. Hays Animal Shelter
INSERT INTO location VALUES (29, 45.632156, -121.206355); --Home At Last Humane Society
INSERT INTO location VALUES (30, 46.715362, -117.161895); --Whitman County Humane Society
INSERT INTO location VALUES (31, 46.982722, -120.548158); --Ellensburg Animal Shelter
INSERT INTO location VALUES (32, 48.781676, -122.445832); --Whatcom Humane Society
INSERT INTO location VALUES (33, 46.674477, -122.910234); --Lewis County Animal Shelter

-- airports
INSERT INTO airport VALUES ('KSEA', 1);
INSERT INTO airport VALUES ('KPDX', 2);
INSERT INTO airport VALUES ('KJCI', 3);
INSERT INTO airport VALUES ('KGEG', 4);
INSERT INTO airport VALUES ('KBDN', 5);

--member
INSERT INTO member VALUES (DEFAULT, 6, 'Jay', 'Gatsby', 'Great_Gatsby',
   'd4149504fc5ac01450c94b500bc22634',TRUE);
INSERT INTO member VALUES (DEFAULT, 7, 'Lyra', 'Silvertongue', 'Compass',
   '83ca2d1346e6423497cb1b449c392cb7',TRUE);
INSERT INTO member VALUES (DEFAULT, 8, 'Holden', 'Caulfield', 'Rye',
   '4e3b6f9a0ec93941b64efc416638db4c',FALSE);
INSERT INTO member VALUES (DEFAULT, 9, 'Humbert', 'Humbert', 'Lolita',
   'd66d611eb79bd6804c990c1ad7ce373a',FALSE);
INSERT INTO member VALUES (DEFAULT, 10, 'Rabbit', 'Angstrom', 'Run',
   'c5301693c4e792bcd5a479ef38fb8f8d',FALSE);
INSERT INTO member VALUES (DEFAULT, 11, 'Atticus', 'Finch', 'Mockingbird',
   'af0d120023df57010b63283c9f437ac6',TRUE);
INSERT INTO member VALUES (DEFAULT, 12, 'Alex', 'Portnoy', 'Complaint',
   'b510ff4b686f023f81a6b973c8928427',FALSE);
INSERT INTO member VALUES (DEFAULT, 13, 'Binx', 'Bolling', 'Moviegoer',
   'f4488aa2e3efd922e167f92b91f218ee',TRUE);
INSERT INTO member VALUES (DEFAULT, 14, 'Sam', 'Spade', 'Maltese_Falcon',
   'e4626ed508209fe9c6698622e93166c5',FALSE);
INSERT INTO member VALUES (DEFAULT, 15, 'Judge', 'Holden', 'Meridian',
   '065e9dcc2f558dbaf2ffaa25d52e9660',TRUE);
INSERT INTO member VALUES (DEFAULT, 16, 'Tom', 'Ripley', 'Talent',
   '6d43c13d7ff6e837002c976f99c9f449',FALSE);
INSERT INTO member VALUES (DEFAULT, 17, 'Henry', 'Chinaski', 'Post_Office',
   '4bd6c91a77d8a72fb9f17e0da1ff9e35',FALSE);
INSERT INTO member VALUES (DEFAULT, 18, 'Yuri', 'Zhivago', 'Doctor',
   'cbb67c65f2abd1005d46939a7b3aff5f',FALSE);
INSERT INTO member VALUES (DEFAULT, 19, 'Lennie', 'Small', 'Mice',
   '7c17e37c77a493d77bbd67ec442ee902',FALSE);
INSERT INTO member VALUES (DEFAULT, 20, 'Quentin', 'Compson', 'Sound_Fury',
   '67bce28aa21ea98facb7b68e61d61b0a',FALSE);
INSERT INTO member VALUES (DEFAULT, 21, 'George', 'Hayduke', 'Monkey_Wrench',
   '78e65fd98b609d9dac6e7a5d837159fc',TRUE);
INSERT INTO member VALUES (DEFAULT, 22, 'Jesse', 'Custer', 'Preacher',
   '786d47dddc5c43599ceff742b8ac81e4',TRUE);

--shelter
INSERT INTO shelter VALUES (DEFAULT, 23, 'Seattle Animal Shelter');
INSERT INTO shelter VALUES (DEFAULT, 24, 'The Humane Society for Tacoma & Pierce County');
INSERT INTO shelter VALUES (DEFAULT, 25, 'Jefferson County Animal Shelter');
INSERT INTO shelter VALUES (DEFAULT, 26, 'Humane Society for Southwest Washington');
INSERT INTO shelter VALUES (DEFAULT, 27, 'Linn County Animal Rescue');
INSERT INTO shelter VALUES (DEFAULT, 28, 'Bonnie L. Hays Animal Shelter');
INSERT INTO shelter VALUES (DEFAULT, 29, 'Home At Last Humane Society');
INSERT INTO shelter VALUES (DEFAULT, 30, 'Whitman County Humane Society');
INSERT INTO shelter VALUES (DEFAULT, 31, 'Ellensburg Animal Shelter');
INSERT INTO shelter VALUES (DEFAULT, 32, 'Whatcom Humane Society');
INSERT INTO shelter VALUES (DEFAULT, 33, 'Lewis County Animal Shelter');

--message
INSERT INTO message VALUES (message_id, sender_user_id, reply_to_message_id,
   sent_datetime,title, message_text);

--pilot
INSERT INTO pilot VALUES (member_id, cert_num);

--plane
INSERT INTO plane VALUES (registration, ICAO);

--plane_pilot
INSERT INTO plane_pilot VALUES (id, pilot_id, plane_registration);

--rescuer
INSERT INTO rescuer VALUES (member_id);

--dog
INSERT INTO dog VALUES (pet_id, shelter_id, rescuer_id,
   isLiscensed, name, weight, age, breed, pet_license);

--trip
INSERT INTO trip VALUES (id, pilot_id, distance, flight_date);
