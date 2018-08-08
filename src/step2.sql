SET NAMES utf8mb4;

CREATE DATABASE classdb;

USE classdb;

CREATE TABLE `class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `begins` date NOT NULL,
  `ends` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

insert into class (name, begins, ends) values ('HTML/CSS', '2018-08-24', '2018-10-13');
insert into class (name, begins, ends) values ('Javascript 1', '2018-08-27', '2018-10-06');
insert into class (name, begins, ends) values ('Javascript 2', '2018-08-20', '2018-12-30');
insert into class (name, begins, ends) values ('Javascript 3', '2018-08-25', '2018-10-23');
insert into class (name, begins, ends) values ('Nodejs', '2018-09-05', '2018-12-22');
insert into class (name, begins, ends) values ('Databases', '2018-08-29', '2018-10-17');
insert into class (name, begins, ends) values ('React', '2018-09-11', '2018-12-07');


insert into student (name, email, phone, class_id) values ('Noland Rosenbarg', 'nrosenbarg0@oracle.com', '469-635-0175', 6);
insert into student (name, email, phone, class_id) values ('Afton Cruse', 'acruse1@kickstarter.com', '452-213-9989', 6);
insert into student (name, email, phone, class_id) values ('Bernetta Brehat', 'bbrehat2@unc.edu', '166-155-3344', 1);
insert into student (name, email, phone, class_id) values ('Buddy Bloomfield', 'bbloomfield3@umich.edu', '337-249-6709', 1);
insert into student (name, email, phone, class_id) values ('Rhody McNeely', 'rmcneely4@google.com', '434-490-0519', 5);
insert into student (name, email, phone, class_id) values ('Miguelita Pittman', 'mpittman5@studiopress.com', '833-672-1624', 3);
insert into student (name, email, phone, class_id) values ('Bren Butner', 'bbutner6@infoseek.co.jp', '104-470-3272', 6);
insert into student (name, email, phone, class_id) values ('Shel Eouzan', 'seouzan7@rambler.ru', '451-875-2861', 7);
insert into student (name, email, phone, class_id) values ('Fidelity Lies', 'flies8@surveymonkey.com', '714-698-1396', 3);
insert into student (name, email, phone, class_id) values ('Nichole Riccioppo', 'nriccioppo9@sciencedirect.com', '265-855-5363', 3);
insert into student (name, email, phone, class_id) values ('Ardyth Aleveque', 'aalevequea@spiegel.de', '105-413-9804', 2);
insert into student (name, email, phone, class_id) values ('Beatrice Tabbernor', 'btabbernorb@cargocollective.com', '791-328-1275', 5);
insert into student (name, email, phone, class_id) values ('Malinda Edelston', 'medelstonc@lulu.com', '212-707-0940', 3);
insert into student (name, email, phone, class_id) values ('Gena Lucian', 'gluciand@sciencedirect.com', '283-730-5148', 5);
insert into student (name, email, phone, class_id) values ('Port Gledhill', 'pgledhille@tumblr.com', '487-952-3295', 5);
insert into student (name, email, phone, class_id) values ('Jermain Chamberlin', 'jchamberlinf@bing.com', '309-871-7062', 7);
insert into student (name, email, phone, class_id) values ('Cornie Wolverson', 'cwolversong@over-blog.com', '733-449-1322', 4);
insert into student (name, email, phone, class_id) values ('Rufe Iacovielli', 'riacoviellih@cnet.com', '810-459-5639', 2);
insert into student (name, email, phone, class_id) values ('Andree Narey', 'anareyi@answers.com', '727-753-5629', 4);
insert into student (name, email, phone, class_id) values ('Korella Mattheeuw', 'kmattheeuwj@google.com.hk', '985-121-9306', 5);
insert into student (name, email, phone, class_id) values ('Angel Antonovic', 'aantonovick@patch.com', '904-845-6610', 1);
insert into student (name, email, phone, class_id) values ('Hesther Prewett', 'hprewettl@about.me', '615-352-5887', 4);
insert into student (name, email, phone, class_id) values ('Selle Matessian', 'smatessianm@tinypic.com', '372-253-8894', 3);
insert into student (name, email, phone, class_id) values ('Lynde Bedford', 'lbedfordn@instagram.com', '609-653-6558', 5);
insert into student (name, email, phone, class_id) values ('Saree Reford', 'srefordo@mtv.com', '866-683-3728', 2);
insert into student (name, email, phone, class_id) values ('Iain Harnor', 'iharnorp@wp.com', '903-291-6962', 1);
insert into student (name, email, phone, class_id) values ('Alix Zielinski', 'azielinskiq@unicef.org', '998-379-2430', 6);
insert into student (name, email, phone, class_id) values ('Sheri Lennon', 'slennonr@trellian.com', '982-182-8484', 2);
insert into student (name, email, phone, class_id) values ('Bonni Caherny', 'bcahernys@infoseek.co.jp', '814-710-9840', 3);
insert into student (name, email, phone, class_id) values ('Field Saltman', 'fsaltmant@zimbio.com', '869-165-8618', 6);
insert into student (name, email, phone, class_id) values ('Shelley Drawmer', 'sdrawmeru@typepad.com', '938-865-5293', 4);
insert into student (name, email, phone, class_id) values ('Rriocard de Aguirre', 'rdev@howstuffworks.com', '145-466-1088', 2);
insert into student (name, email, phone, class_id) values ('Cad Sheryn', 'csherynw@sourceforge.net', '154-801-9044', 3);
insert into student (name, email, phone, class_id) values ('Roobbie Faull', 'rfaullx@opensource.org', '683-257-4777', 2);
insert into student (name, email, phone, class_id) values ('Fionnula Castan', 'fcastany@symantec.com', '139-750-0450', 5);
insert into student (name, email, phone, class_id) values ('Abbie Urrey', 'aurreyz@ox.ac.uk', '559-947-7772', 6);
insert into student (name, email, phone, class_id) values ('Gweneth Heffron', 'gheffron10@sbwire.com', '665-469-7161', 6);
insert into student (name, email, phone, class_id) values ('Willdon Stefanovic', 'wstefanovic11@tamu.edu', '974-993-9989', 6);
insert into student (name, email, phone, class_id) values ('Dwight Breawood', 'dbreawood12@tamu.edu', '947-603-0321', 7);
insert into student (name, email, phone, class_id) values ('Ameline Milmore', 'amilmore13@vimeo.com', '840-171-3607', 5);
insert into student (name, email, phone, class_id) values ('Albina Willsmore', 'awillsmore14@jalbum.net', '996-424-5677', 2);
insert into student (name, email, phone, class_id) values ('Kendal Sighart', 'ksighart15@tripadvisor.com', '161-383-4345', 4);
insert into student (name, email, phone, class_id) values ('Valentino Wellen', 'vwellen16@narod.ru', '402-479-5363', 4);
insert into student (name, email, phone, class_id) values ('Nollie Catteroll', 'ncatteroll17@economist.com', '904-346-4932', 4);
insert into student (name, email, phone, class_id) values ('Sherry Jodlowski', 'sjodlowski18@liveinternet.ru', '381-513-5290', 4);
insert into student (name, email, phone, class_id) values ('Liz Kennington', 'lkennington19@ning.com', '804-433-4065', 4);
insert into student (name, email, phone, class_id) values ('Townie Keddy', 'tkeddy1a@jimdo.com', '221-403-0294', 6);
insert into student (name, email, phone, class_id) values ('Chaddie Pyrke', 'cpyrke1b@ustream.tv', '355-146-7447', 5);
insert into student (name, email, phone, class_id) values ('Loralie Tarrant', 'ltarrant1c@toplist.cz', '787-838-0178', 1);
insert into student (name, email, phone, class_id) values ('Bernelle Bonney', 'bbonney1d@skyrock.com', '625-205-2457', 1);
insert into student (name, email, phone, class_id) values ('Randolf Kingswoode', 'rkingswoode1e@census.gov', '295-683-2758', 7);
insert into student (name, email, phone, class_id) values ('Boote Dufton', 'bdufton1f@deviantart.com', '686-354-2460', 5);
insert into student (name, email, phone, class_id) values ('Orland Wakes', 'owakes1g@flickr.com', '898-789-0254', 1);
insert into student (name, email, phone, class_id) values ('Nichol Richardsson', 'nrichardsson1h@nationalgeographic.com', '566-410-2440', 4);
insert into student (name, email, phone, class_id) values ('Eula Eskriet', 'eeskriet1i@digg.com', '955-847-9373', 1);
insert into student (name, email, phone, class_id) values ('Hercules Semour', 'hsemour1j@mozilla.org', '364-327-1676', 6);
insert into student (name, email, phone, class_id) values ('Salli Fiorentino', 'sfiorentino1k@ca.gov', '409-622-4331', 6);
insert into student (name, email, phone, class_id) values ('Caritta Luckey', 'cluckey1l@woothemes.com', '274-700-0862', 5);
insert into student (name, email, phone, class_id) values ('Torre Casebourne', 'tcasebourne1m@foxnews.com', '462-135-8860', 2);
insert into student (name, email, phone, class_id) values ('Darrin Pellew', 'dpellew1n@bloglines.com', '309-744-2583', 7);
insert into student (name, email, phone, class_id) values ('Cacilia Petcher', 'cpetcher1o@webnode.com', '769-578-6238', 4);
insert into student (name, email, phone, class_id) values ('Nye Roman', 'nroman1p@google.co.jp', '562-160-7233', 4);
insert into student (name, email, phone, class_id) values ('Sherwin Beecheno', 'sbeecheno1q@tamu.edu', '490-884-4647', 1);
insert into student (name, email, phone, class_id) values ('Buiron Elkins', 'belkins1r@flavors.me', '167-635-1629', 2);
insert into student (name, email, phone, class_id) values ('Guido Adamczewski', 'gadamczewski1s@unblog.fr', '848-474-1529', 6);
insert into student (name, email, phone, class_id) values ('Benji Snap', 'bsnap1t@nih.gov', '930-897-3618', 4);
insert into student (name, email, phone, class_id) values ('Babita Burgoine', 'bburgoine1u@apache.org', '562-335-2349', 7);
insert into student (name, email, phone, class_id) values ('Emmit Richings', 'erichings1v@cpanel.net', '753-528-2307', 7);
insert into student (name, email, phone, class_id) values ('Johann Lunnon', 'jlunnon1w@army.mil', '905-550-9727', 7);
insert into student (name, email, phone, class_id) values ('Corey Burland', 'cburland1x@goo.gl', '775-877-5365', 4);
insert into student (name, email, phone, class_id) values ('Hewe Nolan', 'hnolan1y@elpais.com', '502-598-6228', 2);
insert into student (name, email, phone, class_id) values ('Henriette Bush', 'hbush1z@google.it', '119-852-1853', 2);
insert into student (name, email, phone, class_id) values ('Sammie Berzon', 'sberzon20@vkontakte.ru', '485-868-5487', 2);
insert into student (name, email, phone, class_id) values ('Colette Tryme', 'ctryme21@latimes.com', '837-889-1679', 4);
insert into student (name, email, phone, class_id) values ('Dehlia Penchen', 'dpenchen22@typepad.com', '672-663-8832', 7);
insert into student (name, email, phone, class_id) values ('Florian Gerriets', 'fgerriets23@edublogs.org', '809-417-9836', 6);
insert into student (name, email, phone, class_id) values ('Zackariah Seckom', 'zseckom24@miitbeian.gov.cn', '119-203-9188', 6);
insert into student (name, email, phone, class_id) values ('Aundrea Denidge', 'adenidge25@github.io', '402-366-0162', 4);
insert into student (name, email, phone, class_id) values ('Minna Bonny', 'mbonny26@geocities.com', '310-174-9011', 3);
insert into student (name, email, phone, class_id) values ('Rebekkah Perrycost', 'rperrycost27@so-net.ne.jp', '461-270-2344', 6);
insert into student (name, email, phone, class_id) values ('Peggi Oseman', 'poseman28@arizona.edu', '297-146-7815', 7);
insert into student (name, email, phone, class_id) values ('Mellicent Syddie', 'msyddie29@ameblo.jp', '125-433-5758', 1);
insert into student (name, email, phone, class_id) values ('Roana Scarsbrooke', 'rscarsbrooke2a@google.it', '568-665-7902', 4);
insert into student (name, email, phone, class_id) values ('Granville Tupling', 'gtupling2b@indiegogo.com', '531-500-4490', 5);
insert into student (name, email, phone, class_id) values ('Allister Rockliffe', 'arockliffe2c@ucoz.com', '957-844-2167', 3);
insert into student (name, email, phone, class_id) values ('Kalvin Kob', 'kkob2d@hp.com', '286-736-5652', 6);
insert into student (name, email, phone, class_id) values ('Costa Seymer', 'cseymer2e@craigslist.org', '462-304-6228', 2);
insert into student (name, email, phone, class_id) values ('Harman Heart', 'hheart2f@jiathis.com', '474-794-3918', 2);
insert into student (name, email, phone, class_id) values ('Ambrosi Panter', 'apanter2g@arstechnica.com', '651-535-1118', 3);
insert into student (name, email, phone, class_id) values ('Grissel Mosen', 'gmosen2h@smh.com.au', '795-486-6372', 2);
insert into student (name, email, phone, class_id) values ('Kip Bushe', 'kbushe2i@seattletimes.com', '643-558-7409', 5);
insert into student (name, email, phone, class_id) values ('Harlene Golley', 'hgolley2j@google.com', '153-842-0650', 3);
insert into student (name, email, phone, class_id) values ('Oswald McIllroy', 'omcillroy2k@addtoany.com', '301-611-0495', 3);
insert into student (name, email, phone, class_id) values ('Rhoda Gubbins', 'rgubbins2l@wp.com', '993-344-2001', 2);
insert into student (name, email, phone, class_id) values ('Berte Yorston', 'byorston2m@etsy.com', '222-490-7938', 5);
insert into student (name, email, phone, class_id) values ('Bonny De la Zenne', 'bde2n@kickstarter.com', '317-503-8636', 3);
insert into student (name, email, phone, class_id) values ('Anabel Kearey', 'akearey2o@cornell.edu', '843-587-9472', 3);
insert into student (name, email, phone, class_id) values ('Archibald Boxe', 'aboxe2p@amazonaws.com', '240-778-0335', 5);
insert into student (name, email, phone, class_id) values ('Neile Saterthwait', 'nsaterthwait2q@hubpages.com', '600-317-2649', 7);
insert into student (name, email, phone, class_id) values ('Tobi Belliard', 'tbelliard2r@comcast.net', '385-979-2040', 2);


CREATE INDEX idx_name on student (name);
SHOW INDEX FROM student;

ALTER TABLE `class` ADD `status` enum ('not-started','ongoing','finished') NOT NULL;
SELECT * FROM class;