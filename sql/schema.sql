DROP TABLE IF EXISTS click_counts;

CREATE TABLE click_counts (
  id SERIAL PRIMARY KEY,
  remote_id VARCHAR(255),
  clicks INT
);

INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (1, 'Luke Skywalker', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (2, 'C-3PO', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (3, 'R2-D2', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (4, 'Darth Vader', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (5, 'Leia Organa', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (6, 'Owen Lars', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (7, 'Beru Whitesun lars', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (8, 'R5-D4', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (9, 'Biggs Darklighter', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (10, 'Obi-Wan Kenobi', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (11, 'Anakin Skywalker', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (12, 'Wilhuff Tarkin', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (13, 'Chewbacca', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (14, 'Han Solo', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (15, 'Greedo', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (16, 'Jabba Desilijic Tiure', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (17, 'Wedge Antilles', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (18, 'Jek Tono Porkins', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (19, 'Yoda', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (20, 'Palpatine', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (21, 'Boba Fett', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (22, 'IG-88', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (23, 'Bossk', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (24, 'Lando Calrissian', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (25, 'Lobot', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (26, 'Ackbar', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (27, 'Mon Mothma', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (28, 'Arvel Crynyd', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (29, 'Wicket Systri Warrick', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (30, 'Nien Nunb', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (31, 'Qui-Gon Jinn', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (32, 'Nute Gunray', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (33, 'Finis Valorum', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (34, 'Jar Jar Binks', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (35, 'Roos Tarpals', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (36, 'Rugor Nass', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (37, 'Ric Olié', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (38, 'Watto', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (39, 'Sebulba', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (40, 'Quarsh Panaka', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (41, 'Shmi Skywalker', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (42, 'Darth Maul', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (43, 'Bib Fortuna', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (44, 'Ayla Secura', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (45, 'Dud Bolt', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (46, 'Gasgano', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (47, 'Ben Quadinaros', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (48, 'Mace Windu', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (49, 'Ki-Adi-Mundi', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (50, 'Kit Fisto', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (51, 'Eeth Koth', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (52, 'Adi Gallia', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (53, 'Saesee Tiin', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (54, 'Yarael Poof', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (55, 'Plo Koon', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (56, 'Mas Amedda', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (57, 'Gregar Typho', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (58, 'Cordé', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (59, 'Cliegg Lars', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (60, 'Poggle the Lesser', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (61, 'Luminara Unduli', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (62, 'Barriss Offee', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (63, 'Dormé', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (64, 'Dooku', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (65, 'Bail Prestor Organa', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (66, 'Jango Fett', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (67, 'Zam Wesell', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (68, 'Dexter Jettster', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (69, 'Lama Su', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (70, 'Taun We', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (71, 'Jocasta Nu', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (72, 'Ratts Tyerell', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (73, 'R4-P17', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (74, 'Wat Tambor', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (75, 'San Hill', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (76, 'Shaak Ti', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (77, 'Grievous', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (78, 'Tarfful', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (79, 'Raymus Antilles', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (80, 'Sly Moore', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (81, 'Tion Medon', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (82, 'Finn', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (83, 'Rey', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (84, 'Poe Dameron', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (85, 'BB8', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (86, 'Captain Phasma', 1);
INSERT INTO public.click_counts (id, remote_id, clicks) VALUES (87, 'Padmé Amidala', 1);


--
-- Name: click_counts_id_seq; Type: SEQUENCE SET; Schema: public;
--

SELECT pg_catalog.setval('public.click_counts_id_seq', 87, true);

