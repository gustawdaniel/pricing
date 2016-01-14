#
# TABLE STRUCTURE FOR: admin
#

DROP TABLE IF EXISTS admin;

CREATE TABLE `admin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (1, 'hoeger', 'wndw', '2011-03-31 05:23:04');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (2, 'nikolaus', 'uyvn', '1993-03-25 06:52:46');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (3, 'steuber', 'iqec', '1988-09-11 03:43:22');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (4, 'feilconnelly', 'tnux', '2007-07-15 13:09:55');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (5, 'connellyvonrueden', 'qzcu', '2001-10-30 15:17:58');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (6, 'okon', 'dqkl', '2008-09-01 14:46:11');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (7, 'stehr', 'szzk', '1999-11-05 06:10:51');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (8, 'hodkiewicz', 'eanb', '1983-02-03 18:59:01');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (9, 'flatley', 'ocbn', '1971-03-28 15:32:17');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (10, 'stracke', 'ezsz', '1989-08-27 10:03:07');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (11, 'armstrong', 'srjv', '1976-09-02 14:42:19');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (12, 'berge', 'xbmv', '2009-02-08 00:42:28');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (13, 'rogahn', 'eosf', '2001-05-09 03:31:40');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (14, 'ohara', 'tekm', '1971-08-26 20:39:59');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (15, 'stehr', 'mvpq', '1989-03-19 12:02:56');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (16, 'farrell', 'lqai', '2008-04-12 22:42:43');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (17, 'durgan', 'jpdo', '1986-02-01 11:44:04');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (18, 'strosin', 'fnmn', '1989-09-23 08:35:50');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (19, 'smithfeeney', 'vzom', '1995-10-24 12:23:09');
INSERT INTO admin (`id`, `login`, `pass`, `last_login`) VALUES (20, 'wilderman', 'lgup', '2011-10-20 10:50:36');


#
# TABLE STRUCTURE FOR: kontakt
#

DROP TABLE IF EXISTS kontakt;

CREATE TABLE `kontakt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `czas` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opis` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (1, '1984-04-05 23:09:11', 'gail.gleason@example.org', 'Est molestias rerum voluptate. Consequatur optio ducimus ut minus praesentium animi.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (2, '1996-04-09 10:18:28', 'ao\'hara@example.com', 'Voluptatem asperiores tempora quia perspiciatis ad autem. Voluptatem labore veniam omnis vitae tenetur voluptatem et. A quidem similique eos autem nihil. Architecto debitis voluptatem laborum quos tempore.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (3, '1980-06-23 18:56:29', 'oral92@example.net', 'Sit consequatur voluptas aut explicabo modi. Molestiae est ut voluptatibus sunt porro et. Qui eaque nostrum velit suscipit itaque accusantium asperiores.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (4, '1991-08-10 01:31:39', 'bogisich.ursula@example.com', 'Fugit eveniet deleniti tempora. Aut necessitatibus eaque rerum est.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (5, '1995-02-06 21:23:52', 'roberts.haley@example.net', 'Tempore est aliquid atque sit rerum enim. Rerum non mollitia nobis quaerat eos et. Enim inventore velit eum doloribus delectus. Minus est qui illum consequatur laborum omnis placeat.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (6, '2015-08-21 18:05:39', 'kbarrows@example.org', 'Atque fugiat omnis et sint qui. Quos non dolor dicta laboriosam voluptatem. Qui velit incidunt eaque accusamus harum.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (7, '2012-01-25 18:01:56', 'vilma.ward@example.org', 'Quia saepe laborum voluptate. Dicta et blanditiis pariatur occaecati. Sit consectetur ab et at iusto mollitia. Alias dolorem libero dolor libero nihil porro. Praesentium nihil sed repudiandae id amet veniam illum.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (8, '1980-11-22 12:02:49', 'ssawayn@example.net', 'Vero dicta quis minima et saepe voluptates. Architecto laborum non id vitae voluptatem a et. Ut et ex libero id vitae.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (9, '1999-08-22 13:39:55', 'marcelina.graham@example.net', 'Voluptatem voluptates repudiandae sint temporibus atque. Commodi harum et necessitatibus ratione voluptas. Expedita accusantium error minus illo repudiandae nobis praesentium consequatur. Dignissimos et rerum illo est. Voluptatibus explicabo eaque rem temporibus nulla qui consequatur.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (10, '2014-09-16 18:24:09', 'melyssa86@example.org', 'Voluptatem quae sequi magnam quia. Adipisci quos molestiae occaecati libero consequuntur cum numquam. Dolor quis ipsa ea sunt natus.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (11, '2015-12-10 16:21:13', 'fred05@example.com', 'Sit beatae eos et reiciendis a sunt quasi aliquam. Voluptatem animi molestias rem excepturi ut. Vel voluptas qui laboriosam repellendus iure.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (12, '1974-01-25 06:23:07', 'makenzie.senger@example.net', 'Et temporibus harum illum incidunt. Perspiciatis incidunt sint repudiandae excepturi voluptatem et aliquid. Nihil magni qui sunt.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (13, '1973-06-25 08:21:34', 'gottlieb.jayce@example.net', 'Sit ut non tenetur consequuntur voluptas fugit. Sunt quaerat autem corporis neque cumque. Et saepe ut dolores asperiores doloremque. Excepturi et molestias sapiente.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (14, '1980-07-26 20:00:29', 'lamont48@example.com', 'Fugit voluptas consequatur et odit voluptas sequi ea. Veritatis at et in suscipit quam. Ratione quis consectetur quasi rerum.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (15, '1970-07-29 08:35:38', 'paucek.matt@example.org', 'Qui asperiores ab id et et quos officiis. Error quis voluptate ut repellendus nesciunt itaque laborum. Odit illum vero modi consequatur eum harum nemo dolor.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (16, '1971-02-20 18:28:44', 'roderick58@example.net', 'Facere nisi doloribus architecto nostrum quibusdam quod. Quisquam voluptates rerum autem. Molestiae illum et perspiciatis veritatis odio officia molestias.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (17, '1989-09-26 23:48:27', 'lera46@example.com', 'Pariatur occaecati ad voluptates explicabo voluptas aut perspiciatis. Modi dolores quaerat soluta non et similique iste blanditiis.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (18, '1992-02-09 04:44:32', 'haag.trudie@example.org', 'Porro ratione quia sunt illum earum est. Aut aut ipsum saepe odio sit eum nostrum. Non voluptas quia fugit facere aut libero repudiandae ducimus. Quo aut amet saepe saepe. Sequi in consequatur eos reprehenderit eius consequatur.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (19, '2015-01-02 11:39:07', 'aaron91@example.org', 'Culpa et unde necessitatibus laudantium magni veniam sed. Non provident quia voluptatem aut modi aut officiis. Qui cumque molestiae quasi id. Delectus non dolor possimus vero qui.');
INSERT INTO kontakt (`id`, `czas`, `email`, `opis`) VALUES (20, '1987-11-06 04:19:52', 'vance.stroman@example.net', 'Officiis enim rerum neque dolorem amet. Fuga quo deserunt eligendi quia cumque. Dolore officia temporibus nesciunt voluptas maiores enim ut. Et reprehenderit deleniti et ipsum.');


#
# TABLE STRUCTURE FOR: kursy
#

DROP TABLE IF EXISTS kursy;

CREATE TABLE `kursy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_nauczyciela` bigint(20) unsigned NOT NULL,
  `id_miejsca` bigint(20) unsigned NOT NULL,
  `czas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `temat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opis` text COLLATE utf8_unicode_ci,
  `cena` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_nauczyciela` (`id_nauczyciela`),
  KEY `id_miejsca` (`id_miejsca`),
  CONSTRAINT `kursy_ibfk_1` FOREIGN KEY (`id_nauczyciela`) REFERENCES `nauczyciele` (`id`),
  CONSTRAINT `kursy_ibfk_2` FOREIGN KEY (`id_miejsca`) REFERENCES `miejsca` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (21, 5, 9, '07:42:20', 'Maiores voluptas id cumque eius omnis natus fugit.', 'Rerum delectus praesentium praesentium. Officiis itaque repellat possimus quibusdam odio. Occaecati magni eius dolor. Deserunt temporibus nesciunt sequi in enim. Ea qui quas incidunt nisi.', '0.13');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (22, 6, 5, '08:59:15', 'Dolores vitae voluptas magnam id assumenda maxime et eum.', 'Sed enim rerum voluptate repellendus. Velit molestiae libero a voluptates in omnis. Eligendi veniam consequatur voluptas sed quis recusandae voluptatem. Blanditiis quam animi debitis mollitia eius. Consequatur et aut iure occaecati harum.', '13.73');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (23, 9, 3, '17:41:12', 'Rerum et aut laboriosam aliquam quia sunt.', 'Eum aliquam sunt quae sunt sit. Enim nam aut velit optio. A minus asperiores quaerat et est dicta quas voluptas. Dicta nostrum autem nihil rerum commodi rerum dolorem esse.', '610.35');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (24, 16, 4, '04:56:57', 'Debitis recusandae voluptatem aut qui deleniti vitae iure.', 'Ea distinctio dolore quibusdam possimus ratione. Sunt quia repellat quo sit delectus ducimus molestiae. Et consequuntur aut repellendus cupiditate sed culpa non enim. Quaerat aspernatur odit molestiae et.', '99999.99');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (25, 5, 5, '20:00:12', 'Vero accusamus animi minima cum.', 'Distinctio dolorem illo voluptas suscipit. Non sit nostrum porro qui saepe aspernatur aut. Expedita impedit saepe voluptatem molestias autem.', '116.48');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (26, 17, 13, '04:24:08', 'Velit culpa voluptas temporibus modi.', 'Molestiae autem repudiandae qui totam dolorem. Est reprehenderit vel dolores quia sed ipsam. Sit unde non iure voluptatem amet incidunt.', '99999.99');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (27, 9, 8, '19:45:33', 'Numquam similique temporibus est voluptatum distinctio accusantium.', 'Vero est atque cupiditate eveniet nam. Voluptas minus numquam molestias ducimus. Ut placeat illo modi cumque voluptatem. Porro ab at facere.', '47.60');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (28, 5, 11, '18:04:48', 'Eius ut et a.', 'Nostrum voluptates quos qui non ex autem. Minus praesentium neque ad in et omnis dolores quia. Est provident in quisquam quia quasi neque explicabo. Quas sequi cum quae aut omnis hic.', '0.96');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (29, 3, 1, '04:41:09', 'Voluptas accusantium molestias aut numquam.', 'Illo sed sint non neque. Neque voluptate explicabo voluptatem omnis dicta incidunt omnis autem. Est sit aut odio velit. Nostrum necessitatibus dolores non recusandae consequatur voluptatum.', '0.00');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (30, 5, 13, '22:56:59', 'Aut voluptatem quasi tempore dicta aut aut eum quia.', 'Velit eius suscipit voluptates dolores ipsa ullam. Ab est omnis quos commodi qui. Et ut sunt praesentium praesentium sapiente consequatur.', '99999.99');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (31, 15, 11, '13:58:39', 'Et sunt ea excepturi consequuntur adipisci nihil eaque.', 'Temporibus ea consequatur rerum. Et iure et earum reiciendis fuga accusamus. Ut vel illo nisi soluta et nesciunt et.', '0.00');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (32, 8, 18, '21:00:27', 'Perspiciatis et voluptas et quo.', 'Quaerat corrupti laboriosam vitae eveniet omnis labore nesciunt optio. Quia ut ut sunt dolores magni voluptatem. Asperiores sint ab nesciunt iusto similique autem qui in. Neque delectus harum in et sint optio optio voluptatem.', '99999.99');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (33, 19, 17, '03:47:57', 'Deserunt vel facere libero accusamus fugit quasi sequi.', 'Nihil voluptate consectetur iure eum sunt consequatur. Est ut quia omnis. Ut sint quia placeat deleniti enim eum. Ipsa facilis quo qui doloremque.', '12719.41');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (34, 19, 4, '05:40:01', 'Tempora consectetur molestiae tempore veniam error est iste.', 'Fugit suscipit dolorem qui ipsa. Necessitatibus quia nesciunt corrupti inventore est. Nulla eum quis animi qui.', '99999.99');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (35, 18, 12, '20:45:57', 'Illum eos porro voluptates quis quaerat.', 'Aut harum nobis et quos. Quas cum sed et officiis similique minus atque provident. Rerum cumque odit odit ut hic libero. Pariatur sed laboriosam aut quisquam esse et sed.', '99999.99');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (36, 17, 2, '12:57:07', 'Sequi et iure ut blanditiis nobis.', 'Nisi iure voluptatibus alias deserunt. Repellat aut ipsum labore magnam velit nobis aut molestiae. Officiis consectetur perferendis corrupti illo recusandae in id. Inventore est eveniet in deleniti fuga.', '99999.99');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (37, 14, 7, '02:58:23', 'Aspernatur voluptas nemo fugiat id tempore consequatur facilis.', 'Suscipit porro veritatis atque deleniti odit. Sunt voluptas ut inventore quis. Qui cupiditate qui ut.', '5950.84');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (38, 18, 1, '22:42:37', 'Quis iste aut dolorum repellat.', 'Est omnis quae possimus maiores non. Quae consequatur rerum consequatur officiis. Ullam autem voluptas et voluptas. Voluptas officia dignissimos illo labore a eos.', '99999.99');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (39, 18, 14, '02:05:14', 'Voluptatem provident est molestiae dolor molestiae quaerat quo.', 'Dolorem et deserunt voluptate eligendi eaque sequi nobis. Cumque nemo necessitatibus ut aut doloribus. Minus nam aliquam quasi et fuga corporis. Est a modi quidem eveniet.', '48.49');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (40, 16, 11, '22:33:15', 'Voluptate molestias voluptatem qui deleniti voluptatum maiores autem.', 'Et necessitatibus quasi vel tempora nemo non aut quibusdam. Recusandae beatae iure corrupti sed et qui. Reprehenderit voluptatum officiis corrupti enim doloremque ab laborum voluptatem.', '17.31');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (41, 1, 13, '12:04:12', 'Aperiam itaque est aut in ad.', 'Magni aut cum eligendi molestiae eos ipsum. Libero sapiente perferendis et quam asperiores blanditiis dolor quia. Amet odio nemo quas non dicta est dolorum exercitationem.', '99999.99');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (42, 6, 11, '00:20:51', 'Sapiente et quibusdam soluta non facilis.', 'Consequuntur occaecati ut quae numquam qui quo exercitationem. Qui a quo ea asperiores sint. Eaque vel accusamus tenetur rerum impedit voluptatibus optio est. Laudantium voluptate tempore totam nulla vero.', '99999.99');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (43, 13, 7, '06:07:32', 'Fuga sit voluptatem repudiandae natus aperiam dolorem aut.', 'Ipsam et rerum perferendis qui autem omnis perspiciatis. Sit tempora sapiente voluptates ut fuga. Perspiciatis ab consectetur nihil sed incidunt quaerat aspernatur quod. Blanditiis labore deleniti cum quia dolores tempore sunt est.', '242.27');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (44, 18, 10, '21:02:54', 'Omnis eaque voluptatem maiores quidem sed qui quia optio.', 'Vero a quidem laudantium rerum. Voluptatem ab est qui odio velit.', '0.79');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (45, 6, 7, '21:29:59', 'Nisi ratione aut et dicta dolore.', 'Minus nisi maxime odit sapiente ut odit. Sit nostrum necessitatibus culpa laborum eaque natus autem. Atque consequuntur maxime aut debitis dolore excepturi.', '13.52');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (46, 11, 17, '12:39:46', 'Eos rerum optio voluptatem accusamus et ratione.', 'Sed qui nam quaerat occaecati quod ratione. Nulla enim dicta et voluptatem impedit tempore. Accusantium quia perferendis voluptatibus eius velit sint eligendi. Ea minima sequi deleniti error iure accusamus fugiat. Totam eum qui explicabo sint.', '12822.19');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (47, 6, 20, '14:24:24', 'Qui dolores optio sit itaque odit blanditiis consequatur.', 'Aut qui illum ea est. Cumque quo quaerat iste. Neque minus dicta maiores quae aliquid quia aut labore.', '99999.99');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (48, 1, 12, '16:32:22', 'Consequatur impedit tempora voluptas hic ab.', 'Eum aut inventore accusantium quo sit sint. Fugiat dolores ad ab aliquid ad. Unde nihil rem ab iusto fuga fugiat.', '864.00');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (49, 5, 14, '21:25:27', 'Ipsam cupiditate vitae nemo eos provident reiciendis.', 'Quam libero repellendus qui error voluptas expedita dignissimos saepe. Repellendus et ut repellendus. Aliquid modi ex voluptatibus sunt. Laboriosam eos cum ducimus sint ex a.', '99999.99');
INSERT INTO kursy (`id`, `id_nauczyciela`, `id_miejsca`, `czas`, `temat`, `opis`, `cena`) VALUES (50, 20, 1, '18:14:27', 'Mollitia sit dignissimos culpa error quasi et earum.', 'Qui similique libero aut cupiditate tempora saepe non. Quibusdam doloribus ut porro quas. Ullam molestias tenetur explicabo.', '11640.30');


#
# TABLE STRUCTURE FOR: miejsca
#

DROP TABLE IF EXISTS miejsca;

CREATE TABLE `miejsca` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `szerokosc` double DEFAULT NULL,
  `dlugosc` double DEFAULT NULL,
  `icon_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (1, 'South', '394 Marquis Road Suite 085\nWest Kelvinland, OR 94588-6400', '53.663281', '-20.722194', 'http://stoltenberg.com/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (2, 'New', '754 Reynolds Light Suite 020\nSouth Devante, NJ 70329', '28.416115', '7.380542', 'http://www.waelchi.net/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (3, 'New', '22095 Mallory Vista Suite 580\nPourosborough, AZ 09574-5277', '-31.306817', '-55.972302', 'http://hickle.net/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (4, 'West', '812 Hackett Cliffs Apt. 027\nFlorenceborough, FL 78703-8294', '53.101872', '62.7381', 'http://www.kuvalisyundt.com/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (5, 'Lake', '73972 Jenkins Manor Apt. 440\nRaynorstad, KS 54658-7432', '164.61741', '-3.865448', 'http://dibbertlemke.com/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (6, 'Port', '453 Cruz Unions\nNew Luisatown, ND 15414', '160.085202', '-32.737325', 'http://www.yost.com/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (7, 'South', '22936 Lavon Valleys Suite 313\nEast Cindyborough, KY 91877', '151.795365', '-27.453746', 'http://schimmelgerlach.net/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (8, 'Lake', '75466 Petra Drive Apt. 399\nPort Domenica, LA 87009-9236', '163.167657', '-54.051363', 'http://www.greenholtmcdermott.net/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (9, 'New', '11104 Leuschke Rest Suite 676\nLisettemouth, OR 81839-2119', '-22.863162', '35.91616', 'http://www.lind.biz/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (10, 'New', '7297 Mraz Pike\nWaelchiport, MS 21578', '28.007301', '19.59669', 'http://turcotte.com/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (11, 'Lake', '512 Lynch Rest\nWest Fernchester, SC 17102', '-131.002993', '4.7925', 'http://www.leuschke.org/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (12, 'North', '1211 Raymond Hollow\nHuelsburgh, SC 35975', '-152.674127', '44.530832', 'http://www.turcotte.com/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (13, 'Lake', '3659 Antonette Terrace Apt. 868\nEast Deonte, WV 09609', '138.674085', '4.032371', 'http://wisozk.com/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (14, 'North', '237 Charlotte Rest\nRussburgh, DE 63454', '-50.262713', '58.236453', 'http://www.emard.info/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (15, 'South', '37965 Davis Burgs\nJaclynland, GA 75244-5302', '8.488994', '-23.033533', 'http://langlarkin.net/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (16, 'South', '79170 Schulist Plain\nSouth Cleveland, ME 06670', '-148.580771', '23.346848', 'http://www.lang.com/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (17, 'West', '933 Frami Gardens Apt. 691\nNorth Lempiland, MS 98582-7702', '-88.326992', '-35.121291', 'http://stiedemann.com/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (18, 'Lake', '764 Treva Well Apt. 845\nDuncanberg, LA 76621', '-132.753035', '53.864471', 'http://www.farrelllarkin.com/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (19, 'East', '117 Spencer Mills\nCarrollberg, DC 00991', '168.115075', '37.631597', 'http://lueilwitzmurray.com/');
INSERT INTO miejsca (`id`, `nazwa`, `adres`, `szerokosc`, `dlugosc`, `icon_url`) VALUES (20, 'New', '1272 Koepp Street\nSouth Hattieton, AL 77253-0284', '41.835882', '-50.495383', 'http://www.johnswatsica.com/');


#
# TABLE STRUCTURE FOR: nauczyciele
#

DROP TABLE IF EXISTS nauczyciele;

CREATE TABLE `nauczyciele` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `imie` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nazwisko` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `doswiadczenie` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wyksztalcenie` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opis` text COLLATE utf8_unicode_ci,
  `data_urodzenia` date DEFAULT NULL,
  `photo_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (1, 'Arvel', 'Buckridge', 'minus', 'dicta', 'Quis hic esse dolorum autem porro harum.', '1984-05-13', 'tmp//2d6950c6cedeb3fd3adccc2cd936d81a.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (2, 'Winona', 'Gaylord', 'optio', 'quia', 'Totam sed laborum quas dolores.', '1991-11-06', 'tmp//145e41f2514414f292cc8a5ad23713e0.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (3, 'Aimee', 'Beatty', 'deserunt', 'magnam', 'Eaque in atque atque nulla culpa sunt.', '1995-01-11', 'tmp//c62a06c076918cd6150adc018e39178a.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (4, 'Myrtice', 'Gleason', 'nesciunt', 'optio', 'Nam et iste et corporis et assumenda et.', '1986-04-25', 'tmp//dae190c64cefe879c045e6828aca491c.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (5, 'Kurt', 'Haag', 'voluptatem', 'suscipit', 'Aspernatur mollitia reiciendis minima architecto sed laudantium quos eius.', '2000-04-07', 'tmp//a0dce3a966534ed6198a1df7f05007e6.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (6, 'Liliana', 'Langworth', 'eos', 'accusamus', 'A sint et quia aut ducimus voluptatem.', '1988-07-30', 'tmp//11d373c6c892d16430d30c8a85b1452b.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (7, 'Shane', 'Huel', 'quidem', 'repellat', 'Laudantium ratione enim molestiae delectus aperiam quis incidunt consectetur.', '1978-08-15', 'tmp//1782666c2fd81a95c5ab611b5dac5634.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (8, 'Merritt', 'Koelpin', 'cumque', 'aperiam', 'Ut totam est inventore voluptatem.', '1983-06-24', 'tmp//5f26452e621a3fa36b210985af588b8a.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (9, 'Jailyn', 'Gusikowski', 'molestiae', 'quasi', 'Harum sed quas maiores sint non delectus.', '1976-03-20', 'tmp//994a53df98dca576ce30fb94a2d8b25f.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (10, 'Hayden', 'Morar', 'cumque', 'voluptates', 'Ut eveniet quam asperiores fuga.', '1984-06-13', 'tmp//f54e8e9f340492f23d557f7765d93b9e.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (11, 'Mattie', 'Cummings', 'ipsa', 'explicabo', 'Quaerat dignissimos corporis omnis quod.', '1997-05-16', 'tmp//918b7c15a89b5a383a2a2c126efdee5f.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (12, 'Merritt', 'Sipes', 'aut', 'eum', 'Voluptas sit et quia at animi veniam sunt omnis.', '1987-05-24', 'tmp//372faab6b17384dfb66e3ec57ce72db4.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (13, 'Golda', 'Rempel', 'aut', 'veniam', 'Sit dolore vitae non nihil iure unde maxime et.', '2011-11-12', 'tmp//6372e6a51c5d03145ecee9afe424a73a.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (14, 'Margret', 'Eichmann', 'nobis', 'debitis', 'Quo sed ex quia ad.', '1986-01-06', 'tmp//3e483b8555a580a02688cf7660bc6e95.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (15, 'Hettie', 'Mann', 'quia', 'quas', 'Sequi debitis id similique quo.', '2014-06-04', 'tmp//af6dfc95ec36412c7b081503336190b0.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (16, 'Everette', 'Bartell', 'qui', 'labore', 'Nobis sit qui dolore illo.', '1986-01-18', 'tmp//926dce0b58be1fd9fe5966b54f6fd49a.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (17, 'Crystel', 'Kub', 'vero', 'repellendus', 'Quisquam cum perferendis labore tempore aut.', '1970-06-10', 'tmp//385b812cf137f144d497f03562a6c395.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (18, 'Ola', 'Cartwright', 'quod', 'incidunt', 'Vel suscipit dolor dolores vel laboriosam nobis eos.', '1987-02-15', 'tmp//f63d8a859511b8998d6f3bb312242ae7.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (19, 'Edison', 'Rutherford', 'facilis', 'quam', 'Dolor et et ipsa molestiae similique odio quas.', '1987-07-21', 'tmp//a3d84d1552e208dd663442a5db314e85.jpg');
INSERT INTO nauczyciele (`id`, `imie`, `nazwisko`, `doswiadczenie`, `wyksztalcenie`, `opis`, `data_urodzenia`, `photo_url`) VALUES (20, 'Ashton', 'Bartell', 'ut', 'saepe', 'Ullam praesentium dolores in.', '1980-06-15', 'tmp//1cf494cf7d1dc0987b47080b1ff8e60d.jpg');


#
# TABLE STRUCTURE FOR: opinie
#

DROP TABLE IF EXISTS opinie;

CREATE TABLE `opinie` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_nauczyciela` bigint(20) unsigned NOT NULL,
  `opis` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `id_nauczyciela` (`id_nauczyciela`),
  CONSTRAINT `opinie_ibfk_1` FOREIGN KEY (`id_nauczyciela`) REFERENCES `nauczyciele` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (1, 12, 'Voluptatem vel et officiis excepturi cupiditate. Quia maxime vitae dolorem nesciunt omnis eligendi. A sit nihil officia.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (2, 18, 'Deleniti ut placeat a id ut fuga. Quam dicta aut id laudantium minus esse vel repellat. Molestiae nesciunt tempora soluta aut labore quaerat alias.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (3, 1, 'Exercitationem dolore eius voluptas sunt rem voluptas dolores. Magnam blanditiis cupiditate nemo soluta. Et velit ea pariatur vel eos porro.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (4, 16, 'Dolores pariatur totam possimus necessitatibus inventore voluptas. Consectetur dolorem at consequatur vel voluptatibus sit. Harum placeat aut aut tempora. Ut qui tenetur eligendi libero.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (5, 20, 'Reprehenderit magnam hic ut ut magnam consequatur doloribus non. Quo aut dolor a nihil. Fuga voluptatem nobis dolorum.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (6, 16, 'Sed ut et fugiat id voluptas. Nobis recusandae labore commodi dolorem ipsa rem quasi. Distinctio earum et illo.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (7, 4, 'Quas quos ullam impedit. Mollitia qui ut ad. Quae omnis eos temporibus nostrum deleniti. Dolor officia consequatur et itaque quibusdam autem.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (8, 17, 'Error voluptatum quia earum distinctio facilis et soluta minus. Natus qui ipsam consequatur qui. Dolor temporibus et ratione veniam aut assumenda.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (9, 16, 'Iste et consequuntur voluptate deserunt a nihil. Quo necessitatibus placeat officia ut. Quibusdam perspiciatis et possimus ut sapiente sint. Unde odit aut sit quo.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (10, 13, 'Quis assumenda quasi minima non est suscipit. Ut velit totam numquam veritatis quod. Ipsa voluptatem necessitatibus minima rerum delectus.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (11, 17, 'Dolorem libero sint explicabo sint sint veniam. Distinctio quia quia neque. Necessitatibus et sequi repudiandae voluptas odit error. Odit error tenetur dolores aut et sapiente.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (12, 7, 'Quas at autem rerum in autem. Et dolorem vero ut quidem dolores nostrum suscipit. Officia id voluptate consequatur. Et quis quia explicabo magnam et ut.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (13, 14, 'Et aliquid provident quo aliquam et eaque soluta. Neque autem tempore animi. Enim et sint maiores ut perferendis asperiores laboriosam. Vero ea et itaque.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (14, 4, 'Ipsum omnis itaque quae dolorem quos eveniet magni dolores. Sit fugiat minus aliquam nihil deleniti id aut et. Sit et architecto id ut cum. Cupiditate blanditiis id et voluptates dolores.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (15, 9, 'Numquam tempore earum nobis tempore repellat in quos. Dolorem enim doloribus ut accusantium. Sed nihil qui tempora quia. Nostrum non neque praesentium aut ut ipsum quis.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (16, 10, 'Aperiam eius non dolor ut harum repellat exercitationem. Non officiis praesentium vel assumenda sed animi et alias. Dolor qui reiciendis provident omnis.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (17, 4, 'Pariatur illo exercitationem dolore aspernatur est at quidem. Nobis recusandae aut pariatur illum doloribus perferendis iusto. Molestias et consequatur ea ipsam molestiae est.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (18, 5, 'Et et voluptatum et consequatur atque sit. Et autem et aut non odit ut earum suscipit. Itaque cupiditate animi aperiam nisi.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (19, 19, 'Ipsa pariatur ut similique. Sunt non accusantium recusandae corporis dolorum mollitia. Est voluptatum vitae inventore. Quia eaque inventore voluptatum voluptas est possimus.');
INSERT INTO opinie (`id`, `id_nauczyciela`, `opis`) VALUES (20, 10, 'Est id sed velit autem consequuntur. Maiores vel eligendi accusamus quia. Nesciunt veritatis mollitia minus consectetur adipisci excepturi.');


#
# TABLE STRUCTURE FOR: przedmioty
#

DROP TABLE IF EXISTS przedmioty;

CREATE TABLE `przedmioty` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nazwa` (`nazwa`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO przedmioty (`id`, `nazwa`) VALUES (13, 'ab');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (16, 'alias');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (2, 'aliquid');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (4, 'dignissimos');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (15, 'doloribus');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (3, 'est');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (7, 'et');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (12, 'iusto');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (14, 'labore');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (9, 'molestiae');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (19, 'nam');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (5, 'nemo');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (20, 'officia');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (18, 'perspiciatis');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (11, 'qui');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (17, 'quis');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (1, 'quo');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (8, 'reiciendis');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (6, 'sed');
INSERT INTO przedmioty (`id`, `nazwa`) VALUES (10, 'totam');


#
# TABLE STRUCTURE FOR: przedmioty_nauczyciele
#

DROP TABLE IF EXISTS przedmioty_nauczyciele;

CREATE TABLE `przedmioty_nauczyciele` (
  `id_przedmiotu` bigint(20) unsigned NOT NULL,
  `id_nauczyciela` bigint(20) unsigned NOT NULL,
  `poziom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_przedmiotu`,`id_nauczyciela`),
  KEY `id_nauczyciela` (`id_nauczyciela`),
  CONSTRAINT `przedmioty_nauczyciele_ibfk_1` FOREIGN KEY (`id_przedmiotu`) REFERENCES `przedmioty` (`id`),
  CONSTRAINT `przedmioty_nauczyciele_ibfk_2` FOREIGN KEY (`id_nauczyciela`) REFERENCES `nauczyciele` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (1, 7, 'totam');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (1, 19, 'in');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (2, 19, 'aut');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (3, 3, 'porro');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (5, 7, 'in');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (5, 10, 'expedita');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (6, 8, 'pariatur');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (6, 19, 'atque');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (10, 8, 'ut');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (10, 14, 'illum');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (12, 17, 'quis');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (13, 3, 'praesentium');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (14, 10, 'voluptas');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (17, 11, 'eius');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (18, 15, 'praesentium');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (18, 18, 'commodi');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (19, 2, 'consequatur');
INSERT INTO przedmioty_nauczyciele (`id_przedmiotu`, `id_nauczyciela`, `poziom`) VALUES (19, 13, 'et');


#
# TABLE STRUCTURE FOR: zajecia
#

DROP TABLE IF EXISTS zajecia;

CREATE TABLE `zajecia` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_nauczyciela` bigint(20) unsigned NOT NULL,
  `id_miejsca` bigint(20) unsigned NOT NULL,
  `id_przedmiotu` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_nauczyciela` (`id_nauczyciela`),
  KEY `id_miejsca` (`id_miejsca`),
  KEY `id_przedmiotu` (`id_przedmiotu`),
  CONSTRAINT `zajecia_ibfk_1` FOREIGN KEY (`id_nauczyciela`) REFERENCES `nauczyciele` (`id`),
  CONSTRAINT `zajecia_ibfk_2` FOREIGN KEY (`id_miejsca`) REFERENCES `miejsca` (`id`),
  CONSTRAINT `zajecia_ibfk_3` FOREIGN KEY (`id_przedmiotu`) REFERENCES `przedmioty` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (1, 14, 15, 5);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (2, 6, 17, 15);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (3, 14, 7, 17);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (4, 9, 17, 17);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (5, 16, 19, 12);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (6, 16, 20, 3);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (7, 1, 7, 1);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (8, 12, 19, 11);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (9, 1, 1, 19);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (10, 17, 4, 1);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (11, 12, 2, 11);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (12, 3, 7, 9);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (13, 1, 8, 4);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (14, 16, 12, 10);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (15, 18, 8, 7);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (16, 15, 9, 15);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (17, 5, 3, 7);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (18, 17, 20, 13);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (19, 5, 4, 11);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (20, 17, 7, 7);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (21, 6, 11, 15);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (22, 6, 7, 14);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (23, 13, 6, 16);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (24, 8, 11, 7);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (25, 8, 18, 7);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (26, 5, 6, 20);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (27, 12, 5, 7);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (28, 11, 18, 8);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (29, 17, 18, 18);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (30, 7, 15, 16);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (31, 13, 15, 9);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (32, 1, 7, 20);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (33, 20, 11, 8);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (34, 1, 19, 11);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (35, 11, 4, 7);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (36, 18, 2, 20);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (37, 17, 1, 15);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (38, 19, 20, 7);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (39, 17, 4, 17);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (40, 5, 12, 1);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (41, 2, 7, 9);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (42, 5, 8, 20);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (43, 14, 18, 11);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (44, 16, 2, 7);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (45, 9, 5, 6);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (46, 20, 17, 12);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (47, 2, 9, 17);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (48, 16, 4, 17);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (49, 15, 3, 4);
INSERT INTO zajecia (`id`, `id_nauczyciela`, `id_miejsca`, `id_przedmiotu`) VALUES (50, 17, 9, 10);


