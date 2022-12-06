insert into `MOVIES` (TITLE, DESCRIPTION, RATING, CATEGORY, RELEASE_DATE) values ('The Shawshank Redemption', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'R', 'Drama', '1994/8/10');
insert into `MOVIES` (TITLE, DESCRIPTION, RATING, CATEGORY, RELEASE_DATE) values ('The Godfather', 'The aging patriarch of an organized crime dynasty in postwar New York City transfers control of his clandestine empire to his reluctant youngest son.', 'R', 'Drama', '1972/3/14');
insert into `MOVIES` (TITLE, DESCRIPTION, RATING, CATEGORY, RELEASE_DATE) values ('The Dark Knight', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'PG13', 'Drama', '2008/7/14');
insert into `MOVIES` (TITLE, DESCRIPTION, RATING, CATEGORY, RELEASE_DATE) values ('The Godfather Part II', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.', 'R', 'Drama', '1974/12/12');
insert into `MOVIES` (TITLE, DESCRIPTION, RATING, CATEGORY, RELEASE_DATE) values ('12 Angry Men', 'The jury in a New York City murder trial is frustrated by a single member whose skeptical caution forces them to more carefully consider the evidence before jumping to a hasty verdict.', 'PG', 'Drama', '1957/4/10');
insert into `MOVIES` (TITLE, DESCRIPTION, RATING, CATEGORY, RELEASE_DATE) values ('Schindlers List', 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.', 'R', 'Drama', '1993/11/30');

insert into `actors` (STAGE_NAME, FIRST_NAME, LAST_NAME, BIRTH_DATE) values ('Tim Robbins', 'Timothy', 'Robbins', '1958/10/16');
insert into `actors` (STAGE_NAME, FIRST_NAME, LAST_NAME, BIRTH_DATE) values ('Marlon Brando', 'Marlon', 'Brando Jr.', '1924/4/3');
insert into `actors` (STAGE_NAME, FIRST_NAME, LAST_NAME, BIRTH_DATE) values ('Christian Bale', 'Christian Charles', 'Philip Bale', '1974/1/30');
insert into `actors` (STAGE_NAME, FIRST_NAME, LAST_NAME, BIRTH_DATE) values ('Liam Neeson', 'William John', 'Neeson', '1952/6/7');

INSERT INTO `star_billings` (`ACTOR_ID`, `TITLE_ID`, `COMMENTS`) VALUES ('1001', '1', 'A beloved, incessantly revisited, stone-cold classic.');
INSERT INTO `star_billings` (`ACTOR_ID`, `TITLE_ID`, `COMMENTS`) VALUES ('1002', '2', 'Now half a century old, Francis Ford Coppolas revered New Hollywood masterpiece has one of the best-known final shots in film history - but it almost had a much more Catholic ending.');
INSERT INTO `star_billings` (`ACTOR_ID`, `TITLE_ID`, `COMMENTS`) VALUES ('1003', '3', 'You will feel utterly numb after the screening of The Dark Knight. The film is bleak and brilliant.');
INSERT INTO `star_billings` (`ACTOR_ID`, `TITLE_ID`, `COMMENTS`) VALUES ('1004', '6', 'Using every ounce of his awe some technical skill, the man who sent T. rex and Indiana Jones racing through our imagination brings us a story of human horror beyond imagination.');

INSERT INTO `customers` (`LAST_NAME`, `FIRST_NAME`, `HOME_PHONE`, `ADDRESS`, `CITY`, `STATE`, `EMAIL`, `CELL_PHONE`) VALUES ('Rodriguez', 'Juan Pablo', '4497653498', 'San Gerardo 224', 'Calvillo', 'Aguascalientes', 'up20077@alumnos.upa.edu.mx', '4499412623');
INSERT INTO `customers` (`LAST_NAME`, `FIRST_NAME`, `HOME_PHONE`, `ADDRESS`, `CITY`, `STATE`, `EMAIL`, `CELL_PHONE`) VALUES ('Silva', 'Jose Angel', '4493561974', 'Trojes 145', 'Aguascalientes', 'Aguascalientes', 'up19051@alumnos.upa.edu.mx', '4496478161');
INSERT INTO `customers` (`LAST_NAME`, `FIRST_NAME`, `HOME_PHONE`, `ADDRESS`, `CITY`, `STATE`, `EMAIL`, `CELL_PHONE`) VALUES ('Alcala', 'Juan Pablo', '4493163562', 'Lomas del sur 255', 'Aguascalientes', 'Aguascalientes', 'up20054@alumnos.upa.edu.mx', '4494494494');
INSERT INTO `customers` (`LAST_NAME`, `FIRST_NAME`, `HOME_PHONE`, `ADDRESS`, `CITY`, `STATE`, `EMAIL`, `CELL_PHONE`) VALUES ('Rojas', 'Juan Pablo', '4497986435', 'Boulevares 3664', 'Aguascalientes', 'Aguascalientes', 'up20031@alumnos.upa.edu.mx', '4493290430');
INSERT INTO `customers` (`LAST_NAME`, `FIRST_NAME`, `HOME_PHONE`, `ADDRESS`, `CITY`, `STATE`, `EMAIL`, `CELL_PHONE`) VALUES ('Garcia', 'Daniel', '4496553638', 'Canteras 488', 'Aguascalientes', 'Aguascalientes', 'up20051@alumnos.upa.edu.mx', '4495689412');
INSERT INTO `customers` (`LAST_NAME`, `FIRST_NAME`, `HOME_PHONE`, `ADDRESS`, `CITY`, `STATE`, `EMAIL`, `CELL_PHONE`) VALUES ('Perez', 'Luis Ernesto', '4496162378', 'Santa Monica 101', 'Aguascalientes','Aguascalientes', 'up20096@alumnos.upa.edu.mx', '4491223131');

INSERT INTO `media` (`FORMAT`, `TITLE_ID`) VALUES ('DVD', '1');
INSERT INTO `media` (`FORMAT`, `TITLE_ID`) VALUES ('VHS', '1');
INSERT INTO `media` (`FORMAT`, `TITLE_ID`) VALUES ('DVD', '2');
INSERT INTO `media` (`FORMAT`, `TITLE_ID`) VALUES ('VHS', '2');
INSERT INTO `media` (`FORMAT`, `TITLE_ID`) VALUES ('DVD', '3');
INSERT INTO `media` (`FORMAT`, `TITLE_ID`) VALUES ('VHS', '3');
INSERT INTO `media` (`FORMAT`, `TITLE_ID`) VALUES ('DVD', '4');
INSERT INTO `media` (`FORMAT`, `TITLE_ID`) VALUES ('VHS', '4');
INSERT INTO `media` (`FORMAT`, `TITLE_ID`) VALUES ('DVD', '5');
INSERT INTO `media` (`FORMAT`, `TITLE_ID`) VALUES ('VHS', '5');
INSERT INTO `media` (`FORMAT`, `TITLE_ID`) VALUES ('DVD', '6');
INSERT INTO `media` (`FORMAT`, `TITLE_ID`) VALUES ('VHS', '6');

INSERT INTO `rental_history` (`MEDIA_ID`, `RENTAL_DATE`, `CUSTOMER_ID`, `RETURN_DATE`) VALUES ('94', '2002/04/07', '102', '2002/04/17');
INSERT INTO `rental_history` (`MEDIA_ID`, `RENTAL_DATE`, `CUSTOMER_ID`, `RETURN_DATE`) VALUES ('95', '2022/05/27', '106', '2022/06/05');
INSERT INTO `rental_history` (`MEDIA_ID`, `RENTAL_DATE`, `CUSTOMER_ID`, `RETURN_DATE`) VALUES ('97', '2009/06/04', '103', '2009/06/28');
INSERT INTO `rental_history` (`MEDIA_ID`, `RENTAL_DATE`, `CUSTOMER_ID`, `RETURN_DATE`) VALUES ('99', '2020/03/20', '105', NULL);