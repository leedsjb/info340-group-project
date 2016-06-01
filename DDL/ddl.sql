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
INSERT INTO message VALUES (DEFAULT, 20, NULL, '2016-05-29', 'Biscuit from Seattle', 'Thank you so much for offering to fly our dog Biscuit to a no-kill shelter!');
INSERT INTO message VALUES (DEFAULT, 18, NULL, '2016-05-29', 'Transport?', 'Will you still be able to make it this week?');
INSERT INTO message VALUES (DEFAULT, 18, 2, '2016-05-30', 'Transport?', 'That''s great to hear! Thank you!');
INSERT INTO message VALUES (DEFAULT, 24, NULL, '2016-05-30', 'Picking up Oscar', 'Thank you so much for being able to pick him up such last minute');
INSERT INTO message VALUES (DEFAULT, 22, NULL, '2016-05-30', 'Bad Weather', 'Will you still be able to make it tomorrow? The weather report shows a strong storm rolling in');
INSERT INTO message VALUES (DEFAULT, 19, NULL, '2016-05-30', 'Heavy winds an issue?', 'There''s supposed to be 70mph winds tomorrow, can you still make it?');
INSERT INTO message VALUES (DEFAULT, 22, NULL, '2016-05-31', 'Seattle pickup', 'How long will you be in the area for?');
INSERT INTO message VALUES (DEFAULT, 33, 8, '2016-05-31', 'Seattle pickup', 'I''ll be around for about a week');
INSERT INTO message VALUES (DEFAULT, 24, NULL, '2016-05-31', 'Dogs to Transport', 'I can transport 3-5 depending on their weight');
INSERT INTO message VALUES (DEFAULT, 32, NULL, '2016-05-31', 'Storm over?', 'Is the weather better there yet?');
--recipient
--INSERT INTO recipient VALUES (message_id, user_id, message_read, recipient_read_date)
INSERT INTO recipient VALUES (1, 22, FALSE, NULL);
INSERT INTO recipient VALUES (14, 22, TRUE, '2016-05-30');
INSERT INTO recipient VALUES (15, 22, FALSE, NULL);
INSERT INTO recipient VALUES (17, 18, FALSE, NULL);
INSERT INTO recipient VALUES (18, 32, FALSE, NULL);
INSERT INTO recipient VALUES (19, 30, TRUE, '2016-05-31');
INSERT INTO recipient VALUES (21, 22, FALSE, NULL);
INSERT INTO recipient VALUES (22, 33, FALSE, NULL);


--plane_pilot
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
INSERT INTO dog VALUES (DEFAULT, 10, 20, 1, TRUE, 'Biscuit', 20, 10, 'Pug', 203489);
INSERT INTO dog VALUES (DEFAULT, 10, 22, 2, TRUE, 'Max', 50, 3, 'German Shepherd', 34803);
INSERT INTO dog VALUES (DEFAULT, 10, 24, 3, TRUE, 'Charlie', 34, 5, 'Siberian Husky', 34095);
INSERT INTO dog VALUES (DEFAULT, 11, 26, 3, TRUE, 'Buddy', 22, 4, 'Golden Retriever', 34953);
INSERT INTO dog VALUES (DEFAULT, 11, 29, 3, TRUE, 'Lucy', 11, 2, 'German Shepherd', 23208);
INSERT INTO dog VALUES (DEFAULT, 12, 30, 4, TRUE, 'Molly', 93, 6, 'Pug', 265065);
INSERT INTO dog VALUES (DEFAULT, 12, 32, 4, TRUE, 'Daisy', 59, 3, 'Siberian Husky', 569785);
INSERT INTO dog VALUES (DEFAULT, 12, 18, 5, TRUE, 'Rocky', 83, 4, 'Pug', 573847);
INSERT INTO dog VALUES (DEFAULT, 13, 24, 5, TRUE, 'Jack', 25, 6, 'German Shepherd', 344560);
INSERT INTO dog VALUES (DEFAULT, 13, NULL, NULL, TRUE, 'Duke', 55, 9, 'Siberian Husky', 42323);
INSERT INTO dog VALUES (DEFAULT, 13, NULL, NULL, TRUE, 'Cooper', 12, 2, 'Pug', 6589498);
INSERT INTO dog VALUES (DEFAULT, 14, NULL, NULL, TRUE, 'Riley', 17, 3, 'Golden Retriever', 569849);
INSERT INTO dog VALUES (DEFAULT, 14, NULL, NULL, FALSE, 'Bear', 50, 1, 'Siberian Husky', 24509);


--trip
INSERT INTO trip VALUES (DEFAULT, 21, 51.53, '2016-04-16');
INSERT INTO trip VALUES (DEFAULT, 22, 102.23, '2016-05-04');
INSERT INTO trip VALUES (DEFAULT, 22, 230.11, '2016-05-04');
INSERT INTO trip VALUES (DEFAULT, 21, 134.55, '2016-05-04');
INSERT INTO trip VALUES (DEFAULT, 22, 82.85, '2016-05-04');
