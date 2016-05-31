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

--plane
INSERT INTO plane VALUES ('N307', 'KSEA');
INSERT INTO plane VALUES ('N443', 'KSEA');
INSERT INTO plane VALUES ('N530', 'KSEA');
INSERT INTO plane VALUES ('N238', 'KSEA');
INSERT INTO plane VALUES ('KSEA', 'N414');
INSERT INTO plane VALUES ('N593', 'KJCI');
INSERT INTO plane VALUES ('N653', 'KJCI');
INSERT INTO plane VALUES ('N121', 'KPDX');
INSERT INTO plane VALUES ('N704', 'KPDX');
INSERT INTO plane VALUES ('N255', 'KPDX');
INSERT INTO plane VALUES ('N773', 'KPDX');
INSERT INTO plane VALUES ('N342', 'KGEG');
INSERT INTO plane VALUES ('N688', 'KGEG');
INSERT INTO plane VALUES ('N627', 'KGEG');
INSERT INTO plane VALUES ('N108', 'KPDX');
INSERT INTO plane VALUES ('N710', 'KBDN');
INSERT INTO plane VALUES ('N458', 'KBDN');


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

--pilot
INSERT INTO pilot VALUES (6, 522737);
INSERT INTO pilot VALUES (7, 719947);
INSERT INTO pilot VALUES (13, 831347);
INSERT INTO pilot VALUES (21, 953595);
INSERT INTO pilot VALUES (22, 959287);

--rescuer
INSERT INTO rescuer VALUES (1);
INSERT INTO rescuer VALUES (2);
INSERT INTO rescuer VALUES (3);
INSERT INTO rescuer VALUES (4);
INSERT INTO rescuer VALUES (5);
INSERT INTO rescuer VALUES (8);
INSERT INTO rescuer VALUES (9);
INSERT INTO rescuer VALUES (10);
INSERT INTO rescuer VALUES (11);
INSERT INTO rescuer VALUES (12);
INSERT INTO rescuer VALUES (14);
INSERT INTO rescuer VALUES (16);
INSERT INTO rescuer VALUES (17);
INSERT INTO rescuer VALUES (18);
INSERT INTO rescuer VALUES (19);
INSERT INTO rescuer VALUES (20);

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
--INSERT INTO message VALUES (message_id, sender_user_id, reply_to_message_id[N], sent_datetime, title, message_text);
INSERT INTO message VALUES (DEFAULT, 1, 2016-05-29 12:23:24, 'Biscuit from Seattle', 'Thank you so much for offering to fly our dog Biscuit to a no-kill shelter!');
INSERT INTO message VALUES (DEFAULT, 2, 2016-05-29 10:16:23, 'Availability for transport', 'Will you still be able to make it this week?');
INSERT INTO message VALUES (DEFAULT, 2, 2, 2016-05-30 12:55:11, 'Availability for transport', 'That''s great to hear! Thank you!');
INSERT INTO message VALUES (DEFAULT, 3, 2016-05-30 13:14:08, 'Picking up Oscar', 'Thank you so much for being able to pick him up such last minute');
INSERT INTO message VALUES (DEFAULT, 4, 2016-05-30 08:08:19, 'Bad Weather', 'Will you still be able to make it tomorrow? The weather report shows a strong storm rolling in');
INSERT INTO message VALUES (DEFAULT, 5, 2016-05-30 15:20:12, 'Heavy winds an issue?', 'There''s supposed to be 70mph winds tomorrow, can you still make it?');
INSERT INTO message VALUES (DEFAULT, 6, 2016-05-31 20:49:29, 'Pickin up from Seattle', 'How long will you be in the area for?');
INSERT INTO message VALUES (DEFAULT, 6, 8, 2016-05-31 21:45:11, 'Picking up from Seattle', 'I''ll be around for about a week');
INSERT INTO message VALUES (DEFAULT, 7, 2016-05-31 07:05:23, 'Number of dogs to transport', 'I can transport 3-5 depending on their weight');
INSERT INTO message VALUES (DEFAULT, 8, 2016-05-31 21:22:56, 'Storm over?', 'Is the weather better there yet?');
INSERT INTO message VALUES (DEFAULT, 9, 2016-05-31 15:23:43, 'Transport availability', 'Are you still able to fly into town this week?');
INSERT INTO message VALUES (DEFAULT, 10, 2016-05-31 23:35:12, 'Post-rescue questions', 'Is Wawa still stressed out from the flight back?');
INSERT INTO message VALUES (DEFAULT, 11, 2016-05-31 16:45:23, 'Flight cancellation', 'I unfortunately won''t be able to help out this Friday on transporting Winston to Seattle');
INSERT INTO message VALUES (DEFAULT, 12, 2016-05-31 06:34:55, 'Nearby shelters', 'Do you know of any shleters in the area that also have animals that could be picked up? I have the extra space');

--recipient
--INSERT INTO recipient VALUES (message_id, user_id, message_read, recipient_read_date)
INSERT INTO recipient VALUES (1, 1, FALSE);
INSERT INTO recipient VALUES (2, 2, TRUE, 2016-05-30 11:01:59);
INSERT INTO recipient VALUES (3, 2, FALSE);
INSERT INTO recipient VALUES (4, 3, FALSE);
INSERT INTO recipient VALUES (5, 4, FALSE);
INSERT INTO recipient VALUES (6, 5, FALSE);
INSERT INTO recipient VALUES (7, 6, TRUE, 2016-05-31 21:11:33);
INSERT INTO recipient VALUES (8, 6, FALSE);
INSERT INTO recipient VALUES (9, 7, FALSE);
INSERT INTO recipient VALUES (10, 8, FALSE);
INSERT INTO recipient VALUES (11, 9, FALSE);
INSERT INTO recipient VALUES (12, 10, FALSE);
INSERT INTO recipient VALUES (13, 11, FALSE);
INSERT INTO recipient VALUES (14, 12, FALSE);

--plane_pilot
--INSERT INTO plane_pilot VALUES (id, pilot_id, plane_registration);
INSERT INTO plane_pilot VALUES (DEFAULT, 6, 'N307');
INSERT INTO plane_pilot VALUES (DEFAULT, 6, 'N443');
INSERT INTO plane_pilot VALUES (DEFAULT, 6, 'N530');
INSERT INTO plane_pilot VALUES (DEFAULT, 7, 'N238');
INSERT INTO plane_pilot VALUES (DEFAULT, 7, 'N414');
INSERT INTO plane_pilot VALUES (DEFAULT, 13, 'N593');
INSERT INTO plane_pilot VALUES (DEFAULT, 13, 'N653');
INSERT INTO plane_pilot VALUES (DEFAULT, 13, 'N121');
INSERT INTO plane_pilot VALUES (DEFAULT, 13, 'N704');
INSERT INTO plane_pilot VALUES (DEFAULT, 13, 'N255');
INSERT INTO plane_pilot VALUES (DEFAULT, 21, 'N773');
INSERT INTO plane_pilot VALUES (DEFAULT, 21, 'N342');
INSERT INTO plane_pilot VALUES (DEFAULT, 21, 'N688');
INSERT INTO plane_pilot VALUES (DEFAULT, 21, 'N627');
INSERT INTO plane_pilot VALUES (DEFAULT, 22, 'N108');
INSERT INTO plane_pilot VALUES (DEFAULT, 22, 'N710');
INSERT INTO plane_pilot VALUES (DEFAULT, 22, 'N458');

--dog
--INSERT INTO dog VALUES (pet_id, shelter_id, rescuer_id, isLiscensed, name, weight, age, breed, pet_license);
INSERT INTO dog VALUES (DEFAULT, 1, 19, TRUE, 'Biscuit', 20, 10, 'Pug', 203489234087);
INSERT INTO dog VALUES (DEFAULT, 1, 17, FALSE, 'Bailey', 12, 1, 'Golden Retriever', 430580345934);
INSERT INTO dog VALUES (DEFAULT, 2, 5, TRUE, 'Max', 50, 3, 'German Shepherd', 348030948590);
INSERT INTO dog VALUES (DEFAULT, 2, 8, TRUE, 'Charlie', 34, 5, 'Siberian Husky', 340958938899);
INSERT INTO dog VALUES (DEFAULT, 2, 12, TRUE, 'Buddy', 22, 4, 'Golden Retriever', 349539048585);
INSERT INTO dog VALUES (DEFAULT, 2, 6, FALSE, 'Bella', 08, 1, 'Bulldog', 130123808083);
INSERT INTO dog VALUES (DEFAULT, 2, 5, TRUE, 'Lucy', 11, 2, 'German Shepherd', 232089843904);
INSERT INTO dog VALUES (DEFAULT, 3, 1, TRUE, 'Molly', 93, 6, 'Pug', 265065060500);
INSERT INTO dog VALUES (DEFAULT, 3, 7, TRUE, 'Daisy', 59, 3, 'Siberian Husky', 569785697976);
INSERT INTO dog VALUES (DEFAULT, 3, 19, FALSE, 'Rocky', 83, 4, 'Pug', 573847538479);
INSERT INTO dog VALUES (DEFAULT, 4, 13, TRUE, 'Jack', 25, 6, 'German Shepherd', 344560864056);
INSERT INTO dog VALUES (DEFAULT, 4, 12, FALSE, 'Buster', 60, 7, 'Golden Retriever', 104890803849);
INSERT INTO dog VALUES (DEFAULT, 5, 15, TRUE, 'Duke', 55, 9, 'Siberian Husky', 423230947922);
INSERT INTO dog VALUES (DEFAULT, 6, 4, TRUE, 'Cooper', 12, 2, 'Pug', 658949856879);
INSERT INTO dog VALUES (DEFAULT, 7, 19, TRUE, 'Riley', 17, 3, 'Golden Retriever', 569849568456);
INSERT INTO dog VALUES (DEFAULT, 7, 8, FALSE, 'Bear', 50, 1, 'Siberian Husky', 245094068854);
INSERT INTO dog VALUES (DEFAULT, 8, 17, TRUE, 'Tucker', 39, 11, 'German Shepherd', 568954685866);
INSERT INTO dog VALUES (DEFAULT, 8, 12, TRUE, 'Sadie', 31, 7, 'Pug', 458694856865);
INSERT INTO dog VALUES (DEFAULT, 9, 1, TRUE, 'Chloe', 83, 2, 'German Shepherd', 239479283444);
INSERT INTO dog VALUES (DEFAULT, 9, 11, FALSE, 'Lola', 24, 1, 'Golden Retriever', 459679847564);
INSERT INTO dog VALUES (DEFAULT, 9, 9, TRUE, 'Wawa', 94, 3, 'Pug', 450968945086);
INSERT INTO dog VALUES (DEFAULT, 9, 10, TRUE, 'Ginger', 81, 7, 'German Shepherd', 129837892774);
INSERT INTO dog VALUES (DEFAULT, 10, 5, TRUE, 'Gracie', 83, 2, 'Siberian Husky', 489758945755);
INSERT INTO dog VALUES (DEFAULT, 10, 2, TRUE, 'Coco', 30, 1, 'Bulldog', 608406985968);
INSERT INTO dog VALUES (DEFAULT, 10, 6, FALSE, 'Emma', 29, 3, 'Pug', 739874598779);
INSERT INTO dog VALUES (DEFAULT, 11, 15, TRUE, 'Winston', 31, 6, 'Bulldog', 194298734729);

--trip
INSERT INTO trip VALUES (DEFAULT, 6, 51.53);
INSERT INTO trip VALUES (DEFAULT, 7, 102.23);
INSERT INTO trip VALUES (DEFAULT, 13, 230.11);
INSERT INTO trip VALUES (DEFAULT, 21, 134.55);
INSERT INTO trip VALUES (DEFAULT, 22, 82.85);
