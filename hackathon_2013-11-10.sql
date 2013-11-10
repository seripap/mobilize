# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.13)
# Database: hackathon
# Generation Time: 2013-11-10 15:24:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `content`;

CREATE TABLE `content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table directory_cat
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directory_cat`;

CREATE TABLE `directory_cat` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `title` text,
  `desc` text,
  `active` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

LOCK TABLES `directory_cat` WRITE;
/*!40000 ALTER TABLE `directory_cat` DISABLE KEYS */;

INSERT INTO `directory_cat` (`cid`, `parent`, `title`, `desc`, `active`, `date_mod`, `user`, `ord`)
VALUES
	(1,0,'Shelters','Shelters for Youth',1,'2013-11-09 08:05:46',1,1),
	(5,0,'Transportation','',1,'2013-11-09 08:05:47',1,2),
	(6,0,'Showers','',1,'2013-11-09 08:05:48',1,3),
	(7,0,'Other','',1,'2013-11-09 08:05:49',1,4),
	(8,0,'Childcare','',1,'2013-11-09 08:05:50',1,5),
	(9,0,'Clothes','',1,'2013-11-09 08:05:51',1,6),
	(10,0,'Dental','',1,'2013-11-09 08:05:52',1,7),
	(11,0,'Drop-in Center','',1,'2013-11-09 08:05:53',1,8),
	(12,0,'Employment','',1,'2013-11-09 08:05:54',1,9),
	(13,0,'Education','',1,'2013-11-09 08:05:55',1,10),
	(14,0,'Hotlines','',1,'2013-11-09 08:05:56',1,11),
	(15,0,'I.D.','',1,'2013-11-09 08:05:57',1,12),
	(16,0,'Legal','',1,'2013-11-09 08:05:58',1,13),
	(17,0,'Meals','',1,'2013-11-09 08:05:59',1,14),
	(18,0,'Medical','',1,'0000-00-00 00:00:00',1,15),
	(19,0,'Mental Health','',1,'0000-00-00 00:00:00',1,16),
	(20,0,'National Suicide Hotline','',1,'0000-00-00 00:00:00',1,17),
	(21,0,'National Drop-in Shelters and Housing','',1,'0000-00-00 00:00:00',1,18);

/*!40000 ALTER TABLE `directory_cat` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directory_entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directory_entries`;

CREATE TABLE `directory_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `title` text,
  `desc` text,
  `address` text,
  `url` text,
  `phone` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

LOCK TABLES `directory_entries` WRITE;
/*!40000 ALTER TABLE `directory_entries` DISABLE KEYS */;

INSERT INTO `directory_entries` (`id`, `cid`, `title`, `desc`, `address`, `url`, `phone`, `date_mod`, `active`, `user`, `ord`)
VALUES
	(204,1,'Atlanta City Baptist Rescue Mission','This is an all male shelter that offers 21 days of free temporary shelter each month. An extended stay may be granted with verifiable proof of employment. Shelter residents must attend religious activities.\n<br /><br />Service Hours : Opens at 4:30pm daily for walk-in intake\n<br /><br />Eligibity : Adult men only, clients must attend nightly chapel service & dinner\n<br /><br />Required Documents : State ID, social security card, birth certificate','316 Peters St. SW\n<br /><br />Atlanta, GA 30313','acbrm.com',2147483647,'2013-11-09 08:05:46',1,1,1),
	(205,1,'Atlanta Recovery Center','Established in 1969 ARC is a 175 bed transistional housing unit for men. They offer beds for $60 a week. They also offer counseling and mental health services.\n<br /><br />Service Hours : 24 hours a day\n<br /><br />Eligibility : Adult men (18+)\n<br /><br />Required Dcuments : State ID','169 Trinity Ave\n<br /><br />Atlanta, GA 30303','atlantarecoverycenter.com',2147483647,'2013-11-09 08:05:47',1,1,2),
	(206,1,'Atlanta Union Mission - My Sister?s House','This organization serves women and women with children by providing an emergency shelter and a long term Christ centered recovery program. Clients of the shelter are asked to make a 30-90 day commitment after an initial 7 days in the emergency shelter; clients of the Christ centered recovery program are asked to commit to a minimum of 12 months.\n<br /><br />Service Hours : Intake by referal via telephone\n<br /><br />Eligibility : Women and Women with Children (boys to 11 with mother)\n<br /><br />Required Documents : State ID, social security card','921 Howell Mill Rd\n<br /><br />Atlanta, GA 30318','atlantamission.org',2147483647,'2013-11-09 08:05:48',1,1,3),
	(207,1,'Atlanta Union Mission - The Shepherd\'s Inn','Operates a shelter that provide evening meals and chapel services for their night shelter guests. Shelter residents must attend religious activities. The Community Kitchen program provides breakfast and evening meals to emergency shelter guests and program clients. In addition they offer lunch to anyone in the community. The clothing program is for men only.\n<br /><br />Service Hours : Day shelter: 8am to 3pm daily; Night shelter walk-in intake: 4pm to 7pm daily; Soup kitchen: Noon to 1pm daily; Clothing: 1 to 3pm Thu - Sun\n<br /><br />Eligibility : Adult males\n<br /><br />Required Documents : State ID, social security card','156 Mills St. NW \n<br /><br />Atlanta, GA 30313','atlantamission.org',2147483647,'2013-11-09 08:05:49',1,1,4),
	(208,1,'CHRIS Kids','CHRIS Kids offers supportive housing to 17-24 yo single and parenting youth who are aging out of foster care. CHRIS Kids has recently launched a 90 day, four bed emergency program for street youth. Their program focuses on employment. Intake requires a face-to-face interview.\n<br /><br />Service Hours : Referal via phone from 8am to 5pm M-F\n<br /><br />Eligibility : Youth ages 17-24 who are homeless or exiting foster care\n<br /><br />Required Documents : Homeless verification or referal from partner agency','1017 Fayetteville Rd\n<br /><br />Atlanta, GA 30316','chriskids.org',2147483647,'2013-11-09 08:05:50',1,1,5),
	(209,1,'City of Refuge','This organization offers both life saving resources and life building tools to women and women with children in metro Atlanta who are living on the margin. Their resource center helps with ID, birth certificates, social security cards, shelter/transitional housing, bus fare, personal care supplies and clothing.\n<br /><br />Service Hours : Walk-in intake 4 - 6pm seven days a week\n<br /><br />Eligibility : Call for details\n<br /><br />Required Documents : None','1300 Joseph E. Boone Blvd.\n<br /><br />Atlanta, GA 30314\n','cityofrefugeinc.com',2147483647,'2013-11-09 08:05:51',1,1,6),
	(210,1,'Covenant House','Provides shelter and services to children and youth who are homeless or at great risk. In the spirit of open intake, services will be offered to all youth who seek help with a priority of concern and commitment to those for whom no other service is available.\n<br /><br />Service Hours : 24 hours, intake by appointment\n<br /><br />Eligibility : Youth 17 - 22 years old\n<br /><br />Required Documents : State ID','1559 Johnson Rd\n<br /><br />Atlanta, GA 30318','covenanthousega.org',2147483647,'2013-11-09 08:05:52',1,1,7),
	(211,1,'First Presbyterian','Provides a community shelter for females, soup kitchen, and clothing closet. In addition to providing homeless men with showers, laundry facilities, & bus fare assistance. Additionally they help one time only with out of state birth certificate.\n<br /><br />Service Hours : Walk-in intake 1 to 4pm Mon -Thu; clothing closet & showers 3pm Mon, Wed, & Fri (limit 20)\n<br /><br />Eligibility : Transitional housing: single women only; Showers: males only; Birth certificates: out of state only; Bus fare: only for work that can be verified; All other programs: no restrictions\n<br /><br />Required Documents : State ID, social security card','1328 Peachtree St. NE \n<br /><br />Atlanta, GA 30309 ','firstpresatl.org',2147483647,'2013-11-09 08:05:53',1,1,8),
	(212,1,'Gateway Center','The Gateway Center is a program facility designed to help persons transition out of homelessness. Gateway maintains ties with and will refer to various service providers.\n<br /><br />Walk-in services at Gateway 9am to 4pm\n<ul><li>Client Engagement Center (CEC) is the point of entry to Gateway. They provide these services to men and women: public toilets, showers/ hygiene kits, water fountains, telephones, clothing closet, coin-operated laundry, storage lockers</li>\n </ul>\n<br /><br />Shelter Services at Gateway are available via referral from the CEC or listed partner agency\n<ul><li>Emergency Beds (20) are available to adult men for 14 days</li> \n<li>Recuperative Beds (19) are available to adult men to recuperate from  illness or injury (referral by Grady) </li>\n<li>Employment Beds (62) are available to men with full or part-time employment for up to 90 days</li>\n<li>Training Beds (22) are available for men who are currently enrolled in work training programs for the length of the program</li>\n<li>Pre-Treatment Beds (32) are available to men coming off the street in preparation for admission into a drug treatment program (partnership with Recovery Consultants of Atlanta and Atlanta Center for Self Sufficiency)</li>\n<li>Mental Health Beds (42) are available to men and women with diagnosed mental health or co-occurring mental health and substance abuse issues (referral from Gateway PATH, United Way PATH, St Joseph?s PATH)</li>\n<li>Veterans Beds (46) are available for two year stays with a referral from Atlanta?s Homeless Veterans Program</li>\n<li>Women with Children (43) are available for single women with children</li>\n</ul>\n<br /><br />Service Hours : Open 9am to 4pm weekdays for walk-in intake\n<br /><br />Eligibility : Adult men & women with children.\n<br /><br />Required Documents : for shelter a homeless verification letter is needed; picture ID (helpful but not required); all other services: documents vary by program, call for details.','275 Pryor St. SW \n<br /><br />Atlanta, GA 30303','gatewayctr.org',2147483647,'2013-11-09 08:05:54',1,1,9),
	(213,1,'Gwinnett Children\'s Shelter','Provides temporary emergency shelter for youth who have run away from, have been pushed out of their homes, or are acting out and at risk for abuse pending return to their own families or suitable alternative placement.\n<br /><br />Service Hours : 24 hours, Intake by appointment\n<br /><br />Eligibility : Youth 12 - 17 years old\n<br /><br />Required Documents : None','P.O. Box 527 \n<br /><br />Buford, GA 30515 ','gwinnettchildrenshelter.org',2147483647,'2013-11-09 08:05:55',1,1,10),
	(214,1,'Jefferson Place','Jefferson Place provides a continuum of homeless services including emergency shelter, transitional housing, case management, secondary substance addiction counseling, resettlement assistance, transportation, and follow-along services. Jefferson Place also provides 18 month transitional housing. Participants do not work nor attend school for the first 6 months.\n<br /><br />Service Hours : Intake from 5pm to 9pm daily. Check out at 6am.\n<br /><br />Eligibility : Men only age 18 and up\n<br /><br />Required Documents : TB test results are an absolute requirement for admission.','1135 Jefferson St NW\n<br /><br />Atlanta, GA 30318','',2147483647,'2013-11-09 08:05:56',1,1,11),
	(215,1,'Lost-n-Found','Lost-n-Found operates a street outreach program and emergency shelter for homeless or at-risk LGBTQ youth in the Atlanta metro area. Lost-n-Found provides food, hygiene, blankets, and supplies to LGBTQ street youth. Youth in the five week emergency shelter are provided with job search tools and assistance, health screenings and referrals, assistance obtaining state ID and documents, individual and group counseling, and GED or educational assistance.\n<br /><br />Service Hours : 24 hours, Intake by appointment\n<br /><br />Eligibility : Homeless LGBT youth 18-26 years of age.\n<br /><br />Required Documents : None required','470 Candler Park Dr. \n<br /><br />Atlanta GA 30307','lost-n-found.org',2147483647,'2013-11-09 08:05:57',1,1,12),
	(216,1,'Mary Hall Freedom House','Provides emergency shelter and drug rehabilitation services to women.\n<br /><br />Service Hours : 8am to 6pm M-F, intake via telephone and by referal\n<br /><br />Eligibility : Women ages 18 and above and women with no more than 3 children under the age of 13.\n<br /><br />Required Documents : State ID, Homeless verification letter, TB test results.','200 Hannover Park Rd\n<br /><br />Atlanta, GA 30350','maryhallfreedomhouse.org',2147483647,'2013-11-09 08:05:58',1,1,13),
	(217,1,'Metro Atlanta Taskforce for the Homeless ','Operates a 24 hour hot line, day shelter, and 500 bed emergency shelter for men.\n<br /><br />Service Hours : Day Shelter from 8:30am to 5pm Mon - Fri.\n<br /><br />Eligibility : Day shelter for all ages & genders; Emergency shelter for men only\n<br /><br />Required Documents : ','477 Peachtree St\n<br /><br />Atlanta, GA 30308','homelesstaskforce.org',2147483647,'2013-11-09 08:05:59',1,1,14),
	(218,1,'Salvation Army','Their emergency housing program provides shelter for single adults up to seven days once per calendar year. This is a night shelter program only. All participants must leave each morning at 7am. Clients will receive a bed, locker and two meals per day. Some beds cost 30% of income up to $10 per day.\n<br /><br />They have reserved four beds specifically for transgender persons. \n<br /><br />Service Hours : Referral by telephone 7am to end-of-day Mon - Fri; Walk-in intake starts at 3:30pm Mon - Fri\n<br /><br />Eligibility : No restrictions\n<br /><br />Required Documents : State ID, social security card, birth certificate, proof of residence or lease, proof of income, eviction notice, utility cut-off notice, homeless verification letter','400 Luckie St. NW \n<br /><br />Atlanta, GA 30313','salvationarmyatlanta.org',2147483647,'0000-00-00 00:00:00',1,1,15),
	(219,1,'Travelers Aid','Provides emergency services to stranded, disabled, mentally-ill travelers, low-income newcomers, runaways, homeless and at-risk residents in crisis.\n<br /><br />Service Hours : Intake by telephone 9am to 4pm Mon, Tue, Thu, & Fri\n<br /><br />Eligibility : Families with children and verified special needs, newcomers, transient mentally ill, individuals living with HIV/AIDs, runaways, resettling homeless, assist food stamps recipients, and assist clients in subsidized housing\n<br /><br />Required Documents : State ID','75 Marietta St. #400\n<br /><br />Atlanta, GA 30303','hopeatlanta.org',2147483647,'0000-00-00 00:00:00',1,1,16),
	(220,1,'Young Adult Guidance Center','Provides assistance in the form of emergency shelter, temporary and permanent housing, life skills training and workshops, job referrals and individual and group counseling. The overall strategy is aimed at giving those who participate in the program the necessary foundation socially, economically, and mentally to attain a self-sufficient lifestyle.\n<br /><br />Service Hours : 24 hours, Intake by appointment\n<br /><br />Eligibility : Males 13 - 21 years old\n<br /><br />Required Documents : birth certificate, state ID, social security card, and refferal from DFACS or social service agency','1230 Hightower Rd. NW \n<br /><br />Atlanta, GA 30318','yagc.net',2147483647,'0000-00-00 00:00:00',1,1,17),
	(221,1,'Young People Matter','Provides temporary emergency shelter for youth who have run away from, have been pushed out of their homes, or are acting out and at risk for abuse pending return to their own families or suitable alternative placement.\n<br /><br />Service Hours : 24 hours, Intake by appointment\n<br /><br />Eligibility : Youth 10 - 18 years old\n<br /><br />Required Documents : None','Lithonia, GA 30058','ypmatlanta.org',2147483647,'0000-00-00 00:00:00',1,1,18),
	(222,1,'Youth Connections - King\'s Manor Shelter','Provides temporary emergency shelter for male youth who have run away from, have been pushed out of their homes, or are acting out and at risk for abuse pending return to their own families or suitable alternative placement.\n<br /><br />Service Hours : 24 hours, Intake by appointment\n<br /><br />Eligibility : Male youth 10 - 17 years old\n<br /><br />Required Documents : None','College Park, GA 30349','youth-connect.net',2147483647,'0000-00-00 00:00:00',1,1,19),
	(223,5,'Atlanta Day Shelter for Women and Children','Offers job readiness programs, medical care, computer training, child care, meals, clothing, transportation, and mental health counseling to homeless women and children.\n<br /><br />Service Hours : 8am to 4pm daily; walk-in intake\n<br /><br />Eligibility : Primarily for homeless women and children\n<br /><br />Required Documents : None required','655 Ethel St. NW \n<br /><br />Atlanta, GA 30318','atlantadayshelter.org',2147483647,'0000-00-00 00:00:00',1,1,20),
	(224,5,'Central Presbyterian Outreach & Advocacy Center','Serves the poor and homeless by addressing basic needs with a focus on moving towards self-sufficiency and permanent housing. Clients may receive assistance with food, clothing, transportation, identification services, onsite healthcare, vision exams, legal aid and benefits screening through partnerships with outside agencies.\n<br /><br />Service Hours : walk-in intake 9am to 12:30pm Mon - Fri (excluding Wednesdays)\n<br /><br />Eligibility : Homeless\n<br /><br />Required Documents : Homeless verification','201 Washington St. SW \n<br /><br />Atlanta, GA 30303','centraloutreachandadvocacy.org',2147483647,'0000-00-00 00:00:00',1,1,21),
	(225,5,'City of Refuge','This organization offers both life saving resources and life building tools to women and women with children in metro Atlanta who are living on the margin. Their resource center helps with ID, birth certificates, social security cards, shelter/transitional housing, bus fare, personal care supplies and clothing.\n<br /><br />Service Hours : Walk-in intake 4 - 6pm seven days a week\n<br /><br />Eligibility : Call for details\n<br /><br />Required Documents : None','1300 Joseph E. Boone Blvd.\n<br /><br />Atlanta, GA 30314\n','cityofrefugeinc.com',2147483647,'0000-00-00 00:00:00',1,1,22),
	(226,5,'First Presbyterian','Provides a community shelter for females, soup kitchen, and clothing closet. In addition to providing homeless men with showers, laundry facilities, & bus fare assistance. Additionally they help one time only with out of state birth certificate.\n<br /><br />Service Hours : Walk-in intake 1 to 4pm Mon -Thu; clothing closet & showers 3pm Mon, Wed, & Fri (limit 20)\n<br /><br />Eligibility : Transitional housing: single women only; Showers: males only; Birth certificates: out of state only; Bus fare: only for work that can be verified; All other programs: no restrictions\n<br /><br />Required Documents : State ID, social security card','1328 Peachtree St. NE \n<br /><br />Atlanta, GA 30309 ','firstpresatl.org',2147483647,'0000-00-00 00:00:00',1,1,23),
	(227,5,'Megabus','Low cost bus service across the Eastern and Midwestern United States\n<br /><br />Service Hours : Varries\n<br /><br />Eligibility : No restrictions\n<br /><br />Required Documents : None','Civic Center MARTA Station','us.megabus.com',2147483647,'0000-00-00 00:00:00',1,1,24),
	(228,5,'Midtown Assistance Center','Provides emergency assistance to the working poor of Midtown & Downtown Atlanta in the form of rent, utility, grocery assistance & SNAP Applications, and MARTA fare assistance.\n<br /><br />Service Hours : 9:30am to 12:30pm Mon, Thu, Fri; 1pm to 4pm Tue & Wen; 5pm to 7pm Wen\n<br /><br />Eligibility : All services are provided to residents of service area only; employed or have been employed within the last 6 months and diligently searching for replacement job.\n<br /><br />Required Documents : State ID, social security card, birth certificate, proof of residence or homeless verification letter, proof of income','30 Porter Place NE\n<br /><br />Atlanta, GA 30308','midtownassistancectr.org',2147483647,'0000-00-00 00:00:00',1,1,25),
	(229,5,'Travelers Aid','Provides emergency services to stranded, disabled, mentally-ill travelers, low-income newcomers, runaways, homeless and at-risk residents in crisis.\n<br /><br />Service Hours : Intake by telephone 9am to 4pm Mon, Tue, Thu, & Fri\n<br /><br />Eligibility : Families with children and verified special needs, newcomers, transient mentally ill, individuals living with HIV/AIDs, runaways, resettling homeless, assist food stamps recipients, and assist clients in subsidized housing\n<br /><br />Required Documents : State ID','75 Marietta St. #400\n<br /><br />Atlanta, GA 30303','hopeatlanta.org',2147483647,'0000-00-00 00:00:00',1,1,26),
	(230,6,'First Presbyterian','Provides a community shelter for females, soup kitchen, and clothing closet. In addition to providing homeless men with showers, laundry facilities, & bus fare assistance. Additionally they help one time only with out of state birth certificate.\n<br /><br />Service Hours : Walk-in intake 1 to 4pm Mon -Thu; clothing closet & showers 3pm Mon, Wed, & Fri (limit 20)\n<br /><br />Eligibility : Transitional housing: single women only; Showers: males only; Birth certificates: out of state only; Bus fare: only for work that can be verified; All other programs: no restrictions\n<br /><br />Required Documents : State ID, social security card','1328 Peachtree St. NE \n<br /><br />Atlanta, GA 30309 ','firstpresatl.org',2147483647,'0000-00-00 00:00:00',1,1,27),
	(231,6,'Gateway Center','The Gateway Center is a program facility designed to help persons transition out of homelessness. Gateway maintains ties with and will refer to various service providers.\n<br /><br />Walk-in services at Gateway 9am to 4pm\n<ul><li>Client Engagement Center (CEC) is the point of entry to Gateway. They provide these services to men and women: public toilets, showers/ hygiene kits, water fountains, telephones, clothing closet, coin-operated laundry, storage lockers</li>\n </ul>\n<br /><br />Shelter Services at Gateway are available via referral from the CEC or listed partner agency\n<ul><li>Emergency Beds (20) are available to adult men for 14 days</li> \n<li>Recuperative Beds (19) are available to adult men to recuperate from  illness or injury (referral by Grady) </li>\n<li>Employment Beds (62) are available to men with full or part-time employment for up to 90 days</li>\n<li>Training Beds (22) are available for men who are currently enrolled in work training programs for the length of the program</li>\n<li>Pre-Treatment Beds (32) are available to men coming off the street in preparation for admission into a drug treatment program (partnership with Recovery Consultants of Atlanta and Atlanta Center for Self Sufficiency)</li>\n<li>Mental Health Beds (42) are available to men and women with diagnosed mental health or co-occurring mental health and substance abuse issues (referral from Gateway PATH, United Way PATH, St Joseph?s PATH)</li>\n<li>Veterans Beds (46) are available for two year stays with a referral from Atlanta?s Homeless Veterans Program</li>\n<li>Women with Children (43) are available for single women with children</li>\n</ul>\n<br /><br />Service Hours : Open 9am to 4pm weekdays for walk-in intake\n<br /><br />Eligibility : Adult men & women with children.\n<br /><br />Required Documents : for shelter a homeless verification letter is needed; picture ID (helpful but not required); all other services: documents vary by program, call for details.','275 Pryor St. SW \n<br /><br />Atlanta, GA 30303','gatewayctr.org',2147483647,'0000-00-00 00:00:00',1,1,28),
	(232,6,'StandUp for Kids','Provides on the street outreach to find, stabilize and assist homeless and street kids, ages 24 and under. Counselors assist kids in obtaining emergency items such as food, shelter, clothing, and hygiene products.\n<br /><br />Service Hours : Outreach Center open 6 - 9pm Mon and Wen\n<br /><br />Eligibility : Homeless or at-risk youth 24 and under\n<br /><br />Required Documents : None','83 Walton St. Suite 100\n<br /><br />Atlanta, GA 30303','standupforkids.org',2147483647,'0000-00-00 00:00:00',1,1,29),
	(233,7,'Midtown Assistance Center','Provides emergency assistance to the working poor of Midtown & Downtown Atlanta in the form of rent, utility, grocery assistance & SNAP Applications, and MARTA fare assistance.\n<br /><br />Service Hours : 9:30am to 12:30pm Mon, Thu, Fri; 1pm to 4pm Tue & Wen; 5pm to 7pm Wen\n<br /><br />Eligibility : All services are provided to residents of service area only; employed or have been employed within the last 6 months and diligently searching for replacement job.\n<br /><br />Required Documents : State ID, social security card, birth certificate, proof of residence or homeless verification letter, proof of income','30 Porter Place NE\n<br /><br />Atlanta, GA 30308','midtownassistancectr.org',2147483647,'0000-00-00 00:00:00',1,1,30),
	(234,7,'StandUp for Kids','Provides on the street outreach to find, stabilize and assist homeless and street kids, ages 24 and under. Counselors assist kids in obtaining emergency items such as food, shelter, clothing, and hygiene products.\n<br /><br />Service Hours : Outreach Center open 6 - 9pm Mon and Wen\n<br /><br />Eligibility : Homeless or at-risk youth 24 and under\n<br /><br />Required Documents : None','83 Walton St. Suite 100\n<br /><br />Atlanta, GA 30303','standupforkids.org',2147483647,'0000-00-00 00:00:00',1,1,31),
	(235,8,'Atlanta Day Shelter for Women and Children','Offers job readiness programs, medical care, computer training, child care, meals, clothing, transportation, and mental health counseling to homeless women and children.\n<br /><br />Service Hours : 8am to 4pm daily; walk-in intake\n<br /><br />Eligibility : Primarily for homeless women and children\n<br /><br />Required Documents : None required','655 Ethel St. NW \n<br /><br />Atlanta, GA 30318','atlantadayshelter.org',2147483647,'0000-00-00 00:00:00',1,1,32),
	(236,9,'Atlanta Day Shelter for Women and Children','Offers job readiness programs, medical care, computer training, child care, meals, clothing, transportation, and mental health counseling to homeless women and children.\n<br /><br />Service Hours : 8am to 4pm daily; walk-in intake\n<br /><br />Eligibility : Primarily for homeless women and children\n<br /><br />Required Documents : None required','655 Ethel St. NW \n<br /><br />Atlanta, GA 30318','atlantadayshelter.org',2147483647,'0000-00-00 00:00:00',1,1,33),
	(237,9,'Atlanta Union Mission - My Sister?s House','This organization serves women and women with children by providing an emergency shelter and a long term Christ centered recovery program. Clients of the shelter are asked to make a 30-90 day commitment after an initial 7 days in the emergency shelter; clients of the Christ centered recovery program are asked to commit to a minimum of 12 months.\n<br /><br />Service Hours : Intake by referal via telephone\n<br /><br />Eligibility : Women and Women with Children (boys to 11 with mother)\n<br /><br />Required Documents : State ID, social security card','921 Howell Mill Rd\n<br /><br />Atlanta, GA 30318','atlantamission.org',2147483647,'0000-00-00 00:00:00',1,1,34),
	(238,9,'Atlanta Union Mission - The Shepherd\'s Inn','Operates a shelter that provide evening meals and chapel services for their night shelter guests. Shelter residents must attend religious activities. The Community Kitchen program provides breakfast and evening meals to emergency shelter guests and program clients. In addition they offer lunch to anyone in the community. The clothing program is for men only.\n<br /><br />Service Hours : Day shelter: 8am to 3pm daily; Night shelter walk-in intake: 4pm to 7pm daily; Soup kitchen: Noon to 1pm daily; Clothing: 1 to 3pm Thu - Sun\n<br /><br />Eligibility : Adult males\n<br /><br />Required Documents : State ID, social security card','156 Mills St. NW \n<br /><br />Atlanta, GA 30313','atlantamission.org',2147483647,'0000-00-00 00:00:00',1,1,35),
	(239,9,'Bealah Baptist Church','This church offers a clothing closet complete with professional clothing, general clothing, winter coats, and shoes. All clothing is for adults (no children clothing) and free of charge.\n<br /><br />Service Hours : 9:30am to Noon on Wed\n<br /><br />Eligibility : No restrictions\n<br /><br />Required Documents : Application','170 Griffin St. NW\n<br /><br />Atlanta, GA 30314','beulahatl.org',2147483647,'0000-00-00 00:00:00',1,1,36),
	(240,9,'Buckhead Christian Ministries','Provides help with food via their pantry and clothing via thrift store vouchers. Clients can come by their office without making an appointment. Requires ID and homeless verification letter.\n<br /><br />Service Hours : 9am to 5pm Mon - Fri (Thu until 8 pm)\n<br /><br />Eligibility : \n<br /><br />Required Documents : State ID, homeless verification letter','2847 Piedmont Rd. NE\n<br /><br />Atlanta, GA 30305','buckheadchristianministry.org',2147483647,'0000-00-00 00:00:00',1,1,37),
	(241,9,'Central Presbyterian Outreach & Advocacy Center','Serves the poor and homeless by addressing basic needs with a focus on moving towards self-sufficiency and permanent housing. Clients may receive assistance with food, clothing, transportation, identification services, onsite healthcare, vision exams, legal aid and benefits screening through partnerships with outside agencies.\n<br /><br />Service Hours : walk-in intake 9am to 12:30pm Mon - Fri (excluding Wednesdays)\n<br /><br />Eligibility : Homeless\n<br /><br />Required Documents : Homeless verification','201 Washington St. SW \n<br /><br />Atlanta, GA 30303','centraloutreachandadvocacy.org',2147483647,'0000-00-00 00:00:00',1,1,38),
	(242,9,'City of Refuge','This organization offers both life saving resources and life building tools to women and women with children in metro Atlanta who are living on the margin. Their resource center helps with ID, birth certificates, social security cards, shelter/transitional housing, bus fare, personal care supplies and clothing.\n<br /><br />Service Hours : Walk-in intake 4 - 6pm seven days a week\n<br /><br />Eligibility : Call for details\n<br /><br />Required Documents : None','1300 Joseph E. Boone Blvd.\n<br /><br />Atlanta, GA 30314\n','cityofrefugeinc.com',2147483647,'0000-00-00 00:00:00',1,1,39),
	(243,9,'First Presbyterian','Provides a community shelter for females, soup kitchen, and clothing closet. In addition to providing homeless men with showers, laundry facilities, & bus fare assistance. Additionally they help one time only with out of state birth certificate.\n<br /><br />Service Hours : Walk-in intake 1 to 4pm Mon -Thu; clothing closet & showers 3pm Mon, Wed, & Fri (limit 20)\n<br /><br />Eligibility : Transitional housing: single women only; Showers: males only; Birth certificates: out of state only; Bus fare: only for work that can be verified; All other programs: no restrictions\n<br /><br />Required Documents : State ID, social security card','1328 Peachtree St. NE \n<br /><br />Atlanta, GA 30309 ','firstpresatl.org',2147483647,'0000-00-00 00:00:00',1,1,40),
	(244,9,'Gateway Center','The Gateway Center is a program facility designed to help persons transition out of homelessness. Gateway maintains ties with and will refer to various service providers.\n<br /><br />Walk-in services at Gateway 9am to 4pm\n<ul><li>Client Engagement Center (CEC) is the point of entry to Gateway. They provide these services to men and women: public toilets, showers/ hygiene kits, water fountains, telephones, clothing closet, coin-operated laundry, storage lockers</li>\n </ul>\n<br /><br />Shelter Services at Gateway are available via referral from the CEC or listed partner agency\n<ul><li>Emergency Beds (20) are available to adult men for 14 days</li> \n<li>Recuperative Beds (19) are available to adult men to recuperate from  illness or injury (referral by Grady) </li>\n<li>Employment Beds (62) are available to men with full or part-time employment for up to 90 days</li>\n<li>Training Beds (22) are available for men who are currently enrolled in work training programs for the length of the program</li>\n<li>Pre-Treatment Beds (32) are available to men coming off the street in preparation for admission into a drug treatment program (partnership with Recovery Consultants of Atlanta and Atlanta Center for Self Sufficiency)</li>\n<li>Mental Health Beds (42) are available to men and women with diagnosed mental health or co-occurring mental health and substance abuse issues (referral from Gateway PATH, United Way PATH, St Joseph?s PATH)</li>\n<li>Veterans Beds (46) are available for two year stays with a referral from Atlanta?s Homeless Veterans Program</li>\n<li>Women with Children (43) are available for single women with children</li>\n</ul>\n<br /><br />Service Hours : Open 9am to 4pm weekdays for walk-in intake\n<br /><br />Eligibility : Adult men & women with children.\n<br /><br />Required Documents : for shelter a homeless verification letter is needed; picture ID (helpful but not required); all other services: documents vary by program, call for details.','275 Pryor St. SW \n<br /><br />Atlanta, GA 30303','gatewayctr.org',2147483647,'0000-00-00 00:00:00',1,1,41),
	(245,9,'Lost-n-Found','Lost-n-Found operates a street outreach program and emergency shelter for homeless or at-risk LGBTQ youth in the Atlanta metro area. Lost-n-Found provides food, hygiene, blankets, and supplies to LGBTQ street youth. Youth in the five week emergency shelter are provided with job search tools and assistance, health screenings and referrals, assistance obtaining state ID and documents, individual and group counseling, and GED or educational assistance.\n<br /><br />Service Hours : 24 hours, Intake by appointment\n<br /><br />Eligibility : Homeless LGBT youth 18-26 years of age.\n<br /><br />Required Documents : None required','470 Candler Park Dr. \n<br /><br />Atlanta GA 30307','lost-n-found.org',2147483647,'0000-00-00 00:00:00',1,1,42),
	(246,9,'Providence Missionary Baptist Church','Offers outreach services to the community through a food pantry and clothing closet. Agency alternates services to seniors 62 years of age and above and the general public each week. Clients must call to see who they are providing services to that week.\n<br /><br />Service Hours : 10 to Noon on Fridays\n<br /><br />Eligibility : No restrictions\n<br /><br />Required Documents : Application, State ID (cannot assist without proof of legal status)','2295 Benjamin E. Mays Dr. SW \n<br /><br />Atlanta, GA 30311','providenceatlanta.org',2147483647,'0000-00-00 00:00:00',1,1,43),
	(247,9,'StandUp for Kids','Provides on the street outreach to find, stabilize and assist homeless and street kids, ages 24 and under. Counselors assist kids in obtaining emergency items such as food, shelter, clothing, and hygiene products.\n<br /><br />Service Hours : Outreach Center open 6 - 9pm Mon and Wen\n<br /><br />Eligibility : Homeless or at-risk youth 24 and under\n<br /><br />Required Documents : None','83 Walton St. Suite 100\n<br /><br />Atlanta, GA 30303','standupforkids.org',2147483647,'0000-00-00 00:00:00',1,1,44),
	(248,10,'Ben Massell Dental Clinic','Provides comprehensive, quality dental care to low and no income individuals in metro Atlanta. No emergency services available. Scheduled services can include the full range of dentistry specialties plus preventative services.\n<br /><br />Service Hours : 9am to 4pm Mon - Fri; walk-in intake at 9am on Mon (applicants are encouraged to call to find out if they are accepting new patients)\n<br /><br />Eligibility : homeless or low income individuals with no dental insurance\n<br /><br />Required Documents : State ID, homeless verification letter','700 14th St. NW \n<br /><br />Atlanta, GA 30318','benmasselldentalclinic.org',2147483647,'0000-00-00 00:00:00',1,1,45),
	(249,11,'Atlanta Day Shelter for Women and Children','Offers job readiness programs, medical care, computer training, child care, meals, clothing, transportation, and mental health counseling to homeless women and children.\n<br /><br />Service Hours : 8am to 4pm daily; walk-in intake\n<br /><br />Eligibility : Primarily for homeless women and children\n<br /><br />Required Documents : None required','655 Ethel St. NW \n<br /><br />Atlanta, GA 30318','atlantadayshelter.org',2147483647,'0000-00-00 00:00:00',1,1,46),
	(250,11,'Metro Atlanta Taskforce for the Homeless','Operates a 24 hour hot line, day shelter, and 500 bed emergency shelter for men.\n<br /><br />Service Hours : Day Shelter from 8:30am to 5pm Mon - Fri.\n<br /><br />Eligibility : Day shelter for all ages & genders; Emergency shelter for men only\n<br /><br />Required Documents : ','477 Peachtree St\n<br /><br />Atlanta, GA 30308','homelesstaskforce.org',2147483647,'0000-00-00 00:00:00',1,1,47),
	(251,11,'Evolution Project','A drop-in center for young black gay or bisexual men and transgender individuals between 18 and 28 years of age. Provides access to HIV testing, STD screening, and mental health services at on and off-site locations.\n<br /><br />Service Hours : 1pm to 8pm Mon, Tue, & Thu; 2pm to 7pm Fri\n<br /><br />Eligibility : 18 - 28 year old Gay or bisexual men, and M2F Transgender\n<br /><br />Required Documents : None','583 Juniper St. NE #1\n<br /><br />Atlanta, GA 30308','evolutionatl.org',2147483647,'0000-00-00 00:00:00',1,1,48),
	(252,11,'StandUp for Kids','Provides on the street outreach to find, stabilize and assist homeless and street kids, ages 24 and under. Counselors assist kids in obtaining emergency items such as food, shelter, clothing, and hygiene products.\n<br /><br />Service Hours : Outreach Center open 6 - 9pm Mon and Wen\n<br /><br />Eligibility : Homeless or at-risk youth 24 and under\n<br /><br />Required Documents : None','83 Walton St. Suite 100\n<br /><br />Atlanta, GA 30303','standupforkids.org',2147483647,'0000-00-00 00:00:00',1,1,49),
	(253,12,'Atlanta Center for Self Sufficiency - Career Works','Provides all the resources a homeless person needs to plan and carry out a successful job search. All participants are held accountable for meeting regularly with their employment counselor, attending workshops and actively searching for employment.\n<br /><br />Service Hours : 8am to 4pm weekdays; walk-in intake 8am to 11am weekdays\n<br /><br />Eligibility : No restriction\n<br /><br />Required Documents : State ID, social security card, proof of residence or homeless verification letter','75 Peachtree Pl. NW \n<br /><br />Atlanta, GA 30309','atlantacss.org',2147483647,'0000-00-00 00:00:00',1,1,50),
	(254,12,'Atlanta Central Library','GED classes and testing are offered through a partnership with the Atlanta Public Schools. Classes are free. Tests are $32 each (five classes total). The library also has an active employment service center and job board. All services are offered on the 4th floor.\n<br /><br />Service Hours : GED Classes meet 5pm to 8pm Tue, Wed, & Thu; GED walk-in registration is at 5pm on the second Tuesday of every month; General library hours are 9am to 8pm Mon - Fri.\n<br /><br />Eligibility : Ages 16 and above\n<br /><br />Required Documents : State ID','One Margaret Mitchell Square, 4th Floor\n<br /><br />Atlanta, GA 30303','afplweb.com',2147483647,'0000-00-00 00:00:00',1,1,51),
	(255,12,'Atlanta Workforce Development Agency','Provides a single point of entry for workforce information. Job fairs every Tuesday featuring various employers from the Atlanta area. All job candidates are encouraged to attend dressed in business attire and to bring multiple copies of their resume.\n<br /><br />Service Hours : 8am to 5pm Mon - Fri; Job Fair: 9am to Noon Tue; Orientation: 8am to 5pm Mon - Thu\n<br /><br />Eligibility : City of Atlanta resident\n<br /><br />Required Documents : Proof of Residence, Homeless Verification','818 Pollard Blvd. SW \n<br /><br />Atlanta, GA 30315','atlantaworkforce.org',2147483647,'0000-00-00 00:00:00',1,1,52),
	(256,12,'Fulton County Office of Workforce Development - Youth Employment Center','Comprehensive job assistance center offering various employment services to Fulton County residents (outside of the City of Atlanta)\n<br /><br />Service Hours : 8am to 5pm Mon - Fri, Intake by telephone, walk-in, & appointment\n<br /><br />Eligibility : Fulton County resident\n<br /><br />Required Documents : State ID, social security card, birth certificate, proof of residence or homeless verification letter','4842 Old National Highway\n<br /><br />College Park, GA  30349','fultoncountyga.gov/divisions-and-programs/workforce-development',2147483647,'0000-00-00 00:00:00',1,1,53),
	(257,12,'Georgia Department of Labor - South Metro Office','South Metro office of the State Department of Labor provides job seeker and employer services\n<br /><br />Service Hours : 7:30am to 4:30pm Mon - Fri\n<br /><br />Eligibility : varies by program\n<br /><br />Required Documents : State ID, social security card','2636-14 Martin Luther King Jr. Dr.\n<br /><br />Atlanta, GA 30311','www.dol.state.ga.us',2147483647,'0000-00-00 00:00:00',1,1,54),
	(258,12,'Job Corp','A no-cost education and vocational training program administered by the U.S. Department of Labor. JobCorp participants will be enrolled in their GED program.\n<br /><br />Service Hours : 8am - 5pm Mon - Fri, Intake is by telephone, walk-in, or appointment\n<br /><br />Eligibility : 18 - 24 years old, Must be a U.S. Citizen\n<br /><br />Required Documents : Social security card, birth certificate, proof of income, homeless verification letter','239 West Lake Ave. NW \n<br /><br />Atlanta, GA 30314','atlanta.jobcorps.gov',2147483647,'0000-00-00 00:00:00',1,1,55),
	(259,13,'Atlanta Central Library','GED classes and testing are offered through a partnership with the Atlanta Public Schools. Classes are free. Tests are $32 each (five classes total). The library also has an active employment service center and job board. All services are offered on the 4th floor.\n<br /><br />Service Hours : GED Classes meet 5pm to 8pm Tue, Wed, & Thu; GED walk-in registration is at 5pm on the second Tuesday of every month; General library hours are 9am to 8pm Mon - Fri.\n<br /><br />Eligibility : Ages 16 and above\n<br /><br />Required Documents : State ID','One Margaret Mitchell Square, 4th Floor\n<br /><br />Atlanta, GA 30303','afplweb.com',2147483647,'0000-00-00 00:00:00',1,1,56),
	(260,13,'Covenant House','Provides shelter and services to children and youth who are homeless or at great risk. In the spirit of open intake, services will be offered to all youth who seek help with a priority of concern and commitment to those for whom no other service is available.\n<br /><br />Service Hours : 24 hours, intake by appointment\n<br /><br />Eligibility : Youth 17 - 22 years old\n<br /><br />Required Documents : State ID','1559 Johnson Rd\n<br /><br />Atlanta, GA 30318','covenanthousega.org',2147483647,'0000-00-00 00:00:00',1,1,57),
	(261,13,'Atlanta Public Schools','The Homeless Education Program ensures access to a free appropriate public education (FAPE) for children and youth experiencing homelessness in accordance with McKinney-Vento Homeless Education Act, Title VII- B, reauthorized in 2002 as part of the No Child Left Behind Act. The Homeless Education Liaison acts as a link between family, shelter, school system and community resources to coordinate educational services for homeless students.  The ultimate role of the Liaison is to eliminate barriers to school enrollment, attendance and academic success for each child.','Sonya O. Hunte, Homeless Education Liaison\n<br /><br />130 Trinity Ave. 2nd Floor\n<br /><br />Atlanta, GA 30303','atlantapublicschools.us',2147483647,'0000-00-00 00:00:00',1,1,58),
	(262,13,'Job Corp','A no-cost education and vocational training program administered by the U.S. Department of Labor. JobCorp participants will be enrolled in their GED program.\n<br /><br />Service Hours : 8am - 5pm Mon - Fri, Intake is by telephone, walk-in, or appointment\n<br /><br />Eligibility : 18 - 24 years old, Must be a U.S. Citizen\n<br /><br />Required Documents : Social security card, birth certificate, proof of income, homeless verification letter','239 West Lake Ave. NW \n<br /><br />Atlanta, GA 30314','atlanta.jobcorps.gov',2147483647,'0000-00-00 00:00:00',1,1,59),
	(263,13,'StandUp for Kids','Provides on the street outreach to find, stabilize and assist homeless and street kids, ages 24 and under. Counselors assist kids in obtaining emergency items such as food, shelter, clothing, and hygiene products.\n<br /><br />Service Hours : Outreach Center open 6 - 9pm Mon and Wen\n<br /><br />Eligibility : Homeless or at-risk youth 24 and under\n<br /><br />Required Documents : None','83 Walton St. Suite 100\n<br /><br />Atlanta, GA 30303','standupforkids.org',2147483647,'0000-00-00 00:00:00',1,1,60),
	(264,14,'Georgia Crisis & Access Line','This hotline provides treatment and support services to people with mental illnesses and addictive diseases, and support to people with mental retardation and related developmental disabilities.\n<br /><br />Service Hours : 24 hours\n<br /><br />Eligibility : No restrictions\n<br /><br />Required Documents : None','','mygcal.com',2147483647,'0000-00-00 00:00:00',1,1,61),
	(265,14,'United Way 211','United Way 2-1-1 is a simple, easy-to-remember number for individuals across Georgia to call when they want to find or give help. Bilingual, Spanish-speaking referral specialists are available 24 hours a day and calls are conducted in 170 languages. Equipped with the most extensive database of its kind in metro Atlanta, United Way 2-1-1 employs trained referral specialists to assist callers with almost every conceivable human services need.\n<br /><br />Service Hours : 24 hours\n<br /><br />Eligibility : No restrictions\n<br /><br />Required Documents : None','','211online.unitedwayatlanta.org',211,'0000-00-00 00:00:00',1,1,62),
	(266,15,'Central Presbyterian Outreach & Advocacy Center','Serves the poor and homeless by addressing basic needs with a focus on moving towards self-sufficiency and permanent housing. Clients may receive assistance with food, clothing, transportation, identification services, onsite healthcare, vision exams, legal aid and benefits screening through partnerships with outside agencies.\n<br /><br />Service Hours : walk-in intake 9am to 12:30pm Mon - Fri (excluding Wednesdays)\n<br /><br />Eligibility : Homeless\n<br /><br />Required Documents : Homeless verification','201 Washington St. SW \n<br /><br />Atlanta, GA 30303','centraloutreachandadvocacy.org',2147483647,'0000-00-00 00:00:00',1,1,63),
	(267,15,'City of Refuge','This organization offers both life saving resources and life building tools to women and women with children in metro Atlanta who are living on the margin. Their resource center helps with ID, birth certificates, social security cards, shelter/transitional housing, bus fare, personal care supplies and clothing.\n<br /><br />Service Hours : Walk-in intake 4 - 6pm seven days a week\n<br /><br />Eligibility : Call for details\n<br /><br />Required Documents : None','1300 Joseph E. Boone Blvd.\n<br /><br />Atlanta, GA 30314\n','cityofrefugeinc.com',2147483647,'0000-00-00 00:00:00',1,1,64),
	(268,15,'First Presbyterian','Provides a community shelter for females, soup kitchen, and clothing closet. In addition to providing homeless men with showers, laundry facilities, & bus fare assistance. Additionally they help one time only with out of state birth certificate.\n<br /><br />Service Hours : Walk-in intake 1 to 4pm Mon -Thu; clothing closet & showers 3pm Mon, Wed, & Fri (limit 20)\n<br /><br />Eligibility : Transitional housing: single women only; Showers: males only; Birth certificates: out of state only; Bus fare: only for work that can be verified; All other programs: no restrictions\n<br /><br />Required Documents : State ID, social security card','1328 Peachtree St. NE \n<br /><br />Atlanta, GA 30309 ','firstpresatl.org',2147483647,'0000-00-00 00:00:00',1,1,65),
	(269,16,'Atlanta Police Dept LGBT Liason','LGBT Liason\n<br /><br />Officer Brian Sharp ','','',2147483647,'0000-00-00 00:00:00',1,1,66),
	(270,16,'Central Presbyterian Outreach & Advocacy Center','Serves the poor and homeless by addressing basic needs with a focus on moving towards self-sufficiency and permanent housing. Clients may receive assistance with food, clothing, transportation, identification services, onsite healthcare, vision exams, legal aid and benefits screening through partnerships with outside agencies.\n<br /><br />Service Hours : walk-in intake 9am to 12:30pm Mon - Fri (excluding Wednesdays)\n<br /><br />Eligibility : Homeless\n<br /><br />Required Documents : Homeless verification','201 Washington St. SW \n<br /><br />Atlanta, GA 30303','centraloutreachandadvocacy.org',2147483647,'0000-00-00 00:00:00',1,1,67),
	(271,16,'Georgia Law Center on Homelessness and Poverty','Provides free, quality civil legal services to homeless people and plays a leadership role in addressing the issues underlying homelessness. All cases are accepted based on a case by case basis and intake does not guarantee acceptance of a case.\n<br /><br />Service Hours : 9am to 5pm Mon - Fri; Walk-in intake 9am to Noon on Mon & 1pm to 4pm Tue & Thu\n<br /><br />Eligibility : Homeless or at imminent risk\n<br /><br />Required Documents : Homeless verification letter or court eviction order','100 Edgewood Ave. NE  #1625\n<br /><br />Atlanta, GA 30303','galawcenter.org',2147483647,'0000-00-00 00:00:00',1,1,68),
	(272,17,'Atlanta Day Shelter for Women and Children','Offers job readiness programs, medical care, computer training, child care, meals, clothing, transportation, and mental health counseling to homeless women and children.\n<br /><br />Service Hours : 8am to 4pm daily; walk-in intake\n<br /><br />Eligibility : Primarily for homeless women and children\n<br /><br />Required Documents : None required','655 Ethel St. NW \n<br /><br />Atlanta, GA 30318','atlantadayshelter.org',2147483647,'0000-00-00 00:00:00',1,1,69),
	(273,17,'Atlanta Union Mission - My Sister?s House','This organization serves women and women with children by providing an emergency shelter and a long term Christ centered recovery program. Clients of the shelter are asked to make a 30-90 day commitment after an initial 7 days in the emergency shelter; clients of the Christ centered recovery program are asked to commit to a minimum of 12 months.\n<br /><br />Service Hours : Intake by referal via telephone\n<br /><br />Eligibility : Women and Women with Children (boys to 11 with mother)\n<br /><br />Required Documents : State ID, social security card','921 Howell Mill Rd\n<br /><br />Atlanta, GA 30318','atlantamission.org',2147483647,'0000-00-00 00:00:00',1,1,70),
	(274,17,'Atlanta Union Mission - The Shepherd\'s Inn','Operates a shelter that provide evening meals and chapel services for their night shelter guests. Shelter residents must attend religious activities. The Community Kitchen program provides breakfast and evening meals to emergency shelter guests and program clients. In addition they offer lunch to anyone in the community. The clothing program is for men only.\n<br /><br />Service Hours : Day shelter: 8am to 3pm daily; Night shelter walk-in intake: 4pm to 7pm daily; Soup kitchen: Noon to 1pm daily; Clothing: 1 to 3pm Thu - Sun\n<br /><br />Eligibility : Adult males\n<br /><br />Required Documents : State ID, social security card','156 Mills St. NW \n<br /><br />Atlanta, GA 30313','atlantamission.org',2147483647,'0000-00-00 00:00:00',1,1,71),
	(275,17,'Buckhead Christian Ministries','Provides help with food via their pantry and clothing via thrift store vouchers. Clients can come by their office without making an appointment. Requires ID and homeless verification letter.\n<br /><br />Service Hours : 9am to 5pm Mon - Fri (Thu until 8 pm)\n<br /><br />Eligibility : \n<br /><br />Required Documents : State ID, homeless verification letter','2847 Piedmont Rd. NE\n<br /><br />Atlanta, GA 30305','buckheadchristianministry.org',2147483647,'0000-00-00 00:00:00',1,1,72),
	(276,17,'Central Presbyterian Outreach & Advocacy Center','Serves the poor and homeless by addressing basic needs with a focus on moving towards self-sufficiency and permanent housing. Clients may receive assistance with food, clothing, transportation, identification services, onsite healthcare, vision exams, legal aid and benefits screening through partnerships with outside agencies.\n<br /><br />Service Hours : walk-in intake 9am to 12:30pm Mon - Fri (excluding Wednesdays)\n<br /><br />Eligibility : Homeless\n<br /><br />Required Documents : Homeless verification','201 Washington St. SW \n<br /><br />Atlanta, GA 30303','centraloutreachandadvocacy.org',2147483647,'0000-00-00 00:00:00',1,1,73),
	(277,17,'First Presbyterian','Provides a community shelter for females, soup kitchen, and clothing closet. In addition to providing homeless men with showers, laundry facilities, & bus fare assistance. Additionally they help one time only with out of state birth certificate.\n<br /><br />Service Hours : Walk-in intake 1 to 4pm Mon -Thu; clothing closet & showers 3pm Mon, Wed, & Fri (limit 20)\n<br /><br />Eligibility : Transitional housing: single women only; Showers: males only; Birth certificates: out of state only; Bus fare: only for work that can be verified; All other programs: no restrictions\n<br /><br />Required Documents : State ID, social security card','1328 Peachtree St. NE \n<br /><br />Atlanta, GA 30309 ','firstpresatl.org',2147483647,'0000-00-00 00:00:00',1,1,74),
	(278,17,'Gateway Center','The Gateway Center is a program facility designed to help persons transition out of homelessness. Gateway maintains ties with and will refer to various service providers.\n<br /><br />Walk-in services at Gateway 9am to 4pm\n<ul><li>Client Engagement Center (CEC) is the point of entry to Gateway. They provide these services to men and women: public toilets, showers/ hygiene kits, water fountains, telephones, clothing closet, coin-operated laundry, storage lockers</li>\n </ul>\n<br /><br />Shelter Services at Gateway are available via referral from the CEC or listed partner agency\n<ul><li>Emergency Beds (20) are available to adult men for 14 days</li> \n<li>Recuperative Beds (19) are available to adult men to recuperate from  illness or injury (referral by Grady) </li>\n<li>Employment Beds (62) are available to men with full or part-time employment for up to 90 days</li>\n<li>Training Beds (22) are available for men who are currently enrolled in work training programs for the length of the program</li>\n<li>Pre-Treatment Beds (32) are available to men coming off the street in preparation for admission into a drug treatment program (partnership with Recovery Consultants of Atlanta and Atlanta Center for Self Sufficiency)</li>\n<li>Mental Health Beds (42) are available to men and women with diagnosed mental health or co-occurring mental health and substance abuse issues (referral from Gateway PATH, United Way PATH, St Joseph?s PATH)</li>\n<li>Veterans Beds (46) are available for two year stays with a referral from Atlanta?s Homeless Veterans Program</li>\n<li>Women with Children (43) are available for single women with children</li>\n</ul>\n<br /><br />Service Hours : Open 9am to 4pm weekdays for walk-in intake\n<br /><br />Eligibility : Adult men & women with children.\n<br /><br />Required Documents : for shelter a homeless verification letter is needed; picture ID (helpful but not required); all other services: documents vary by program, call for details.','275 Pryor St. SW \n<br /><br />Atlanta, GA 30303','gatewayctr.org',2147483647,'0000-00-00 00:00:00',1,1,75),
	(279,17,'Lutheran Community Food Ministry','Provides a daily meal to the homeless in the Midtown area\n<br /><br />Service Hours : 10:30am to 11:30am Mon - Fri.\n<br /><br />Eligibility : No restrictions\n<br /><br />Required Documents : None','731 Peachtree St. NE \n<br /><br />Atlanta, GA 30308','redeemer.org',2147483647,'0000-00-00 00:00:00',1,1,76),
	(280,17,'Midtown Assistance Center','Provides emergency assistance to the working poor of Midtown & Downtown Atlanta in the form of rent, utility, grocery assistance & SNAP Applications, and MARTA fare assistance.\n<br /><br />Service Hours : 9:30am to 12:30pm Mon, Thu, Fri; 1pm to 4pm Tue & Wen; 5pm to 7pm Wen\n<br /><br />Eligibility : All services are provided to residents of service area only; employed or have been employed within the last 6 months and diligently searching for replacement job.\n<br /><br />Required Documents : State ID, social security card, birth certificate, proof of residence or homeless verification letter, proof of income','30 Porter Place NE\n<br /><br />Atlanta, GA 30308','midtownassistancectr.org',2147483647,'0000-00-00 00:00:00',1,1,77),
	(281,17,'Providence Missionary Baptist Church','Offers outreach services to the community through a food pantry and clothing closet. Agency alternates services to seniors 62 years of age and above and the general public each week. Clients must call to see who they are providing services to that week.\n<br /><br />Service Hours : 10 to Noon on Fridays\n<br /><br />Eligibility : No restrictions\n<br /><br />Required Documents : Application, State ID (cannot assist without proof of legal status)','2295 Benjamin E. Mays Dr. SW \n<br /><br />Atlanta, GA 30311','providenceatlanta.org',2147483647,'0000-00-00 00:00:00',1,1,78),
	(282,17,'Safe House','Safe House conducts street outreach around Atlanta, they also work with local churches to serve hot meals in the evenings at their outreach center on Ellis St.\n<br /><br />Service Hours : Meals happen in the evenings on an irregular schedule\n<br /><br />Eligibility : No restrictions\n<br /><br />Required Documents : none','89 Ellis St. NE\n<br /><br />Atlanta, GA 30303','',2147483647,'0000-00-00 00:00:00',1,1,79),
	(283,17,'Saint Marks on Peachtree','St. Marks Breakfast Club serves a hot meal to 60 homeless persons every Saturday morning. Their Supper Club serves 60 homeless persons every Tuesday afternoon. Every first Tuesday of the month is ?Pizza and a Movie Night? where we serve pizza and popcorn and rent a movie.','781 Peachtree St. NE\n<br /><br />Atlanta, GA 30308','stmarkumc.org',2147483647,'0000-00-00 00:00:00',1,1,80),
	(284,17,'StandUp for Kids','Provides on the street outreach to find, stabilize and assist homeless and street kids, ages 24 and under. Counselors assist kids in obtaining emergency items such as food, shelter, clothing, and hygiene products.\n<br /><br />Service Hours : Outreach Center open 6 - 9pm Mon and Wen\n<br /><br />Eligibility : Homeless or at-risk youth 24 and under\n<br /><br />Required Documents : None','83 Walton St. Suite 100\n<br /><br />Atlanta, GA 30303','standupforkids.org',2147483647,'0000-00-00 00:00:00',1,1,81),
	(285,18,'Central Presbyterian Outreach & Advocacy Center','Serves the poor and homeless by addressing basic needs with a focus on moving towards self-sufficiency and permanent housing. Clients may receive assistance with food, clothing, transportation, identification services, onsite healthcare, vision exams, legal aid and benefits screening through partnerships with outside agencies.\n<br /><br />Service Hours : walk-in intake 9am to 12:30pm Mon - Fri (excluding Wednesdays)\n<br /><br />Eligibility : Homeless\n<br /><br />Required Documents : Homeless verification','201 Washington St. SW \n<br /><br />Atlanta, GA 30303','centraloutreachandadvocacy.org',2147483647,'0000-00-00 00:00:00',1,1,82),
	(286,18,'Community Advanced Practice Nurses','Provides free physical, mental and preventive health care to homeless and medically underserved individuals and families. Youth entering Lost-n-Found are required to visit CAPN for TB and HIV screenings\n<br /><br />Service Hours : 2pm to 6pm Mon and Thu; 8am to 12:30pm Tue, Wed, & Fri\n<br /><br />Eligibility : homeless and medically underserved individuals and families in metropolitan Atlanta\n<br /><br />Required Documents : Homeless verification letter and referral','Physical Health Program:\n<br /><br />173 Boulevard NE \n<br /><br />Atlanta, GA 30312','capn.org',2147483647,'0000-00-00 00:00:00',1,1,83),
	(287,18,'Evolution Project','A drop-in center for young black gay or bisexual men and transgender individuals between 18 and 28 years of age. Provides access to HIV testing, STD screening, and mental health services at on and off-site locations.\n<br /><br />Service Hours : 1pm to 8pm Mon, Tue, & Thu; 2pm to 7pm Fri\n<br /><br />Eligibility : 18 - 28 year old Gay or bisexual men, and M2F Transgender\n<br /><br />Required Documents : None','583 Juniper St. NE #1\n<br /><br />Atlanta, GA 30308','evolutionatl.org',2147483647,'0000-00-00 00:00:00',1,1,84),
	(288,18,'Feminist Women\'s Health Center & Trans Health Initiative','Provides quality gynecological health care to women, F2M, transmasculine, and intersex clients throughout all life stages in an emotionally supportive and safe environment. Promoting informed decision-making and participatory health care with access to the most current information, services, and technology for all women, regardless of race, ethnicity, sexual orientation, physical ability, and socioeconomic status.\n<br /><br />Service Hours : 7:30am to 5:30pm Mon - Sat\n<br /><br />Eligibility : Women and F2M Transgender\n<br /><br />Required Documents : None','1924 Cliff Valley Way NE \n<br /><br />Atlanta, GA 30329','feministcenter.org',2147483647,'0000-00-00 00:00:00',1,1,85),
	(289,18,'Grady Hospital','Atlanta?s primary trauma and emergency services hospital\n<br /><br />Service Hours : 24 hours\n<br /><br />Eligibility : No restrictions\n<br /><br />Required Documents : None','80 Jesse Hill Jr. Dr. SE \n<br /><br />Atlanta, GA 30303','gradyhealth.org',2147483647,'0000-00-00 00:00:00',1,1,86),
	(290,18,'MISTER Center','Provides free and confidential HIV testing & counseling services, including linkage to primary medical care for persons who test HIV positive. STD screenings for syphilis, gonorrhea and chlamydia.\n<br /><br />Service Hours : 9:00am to 7:00pm Mon -Thu; 9:00am to 5:00pm Fri\n<br /><br />Eligibility : 16 and older any gender can receive HIV testing. STD screening available for males only. All testing limited to once per month.\n<br /><br />Required Documents : none','60 11th St. NE \n<br /><br />Atlanta, GA 30309','mistercenter.org',2147483647,'0000-00-00 00:00:00',1,1,87),
	(291,18,'St. Jude?s Treatment Program','This is a residential substance abuse treatment program for single men and women. Clients live and participate in a structured gender specific, therapeutic setting. For the first eight to ten weeks residents are dually enrolled in St. Jude?s Day Treatment. Upon completion of this program clients are required to obtain and maintain employment, attend treatment activities in the evening, including 12- Step meetings and group and individual counseling.\n<br /><br />Service Hours : 24 hours daily, Intake daily by appointment\n<br /><br />Eligibility : Men and women 18 and above\n<br /><br />Documents : Medical records','139 Renaissance Pkwy.\n<br /><br />Atlanta, GA 30308','stjudesrecovery.org',2147483647,'0000-00-00 00:00:00',1,1,88),
	(292,18,'The Health Initiative','Provides services, education, outreach, referrals, support, and advocacy for LGBT individuals who have been diagnosed with disease and/or are committed to living healthier lives.\n<br /><br />Service Hours : 10am to 6pm Mon - Fri\n<br /><br />Eligibility : LGBT individuals with any illness, their families and partners\n<br /><br />Required Documents : None','1530 DeKalb Ave. NE Suite A\n<br /><br />Atlanta, GA 30307','thehealthinitiative.org',2147483647,'0000-00-00 00:00:00',1,1,89),
	(293,19,'Community Advanced Practice Nurses','Provides free physical, mental and preventive health care to homeless and medically underserved individuals and families. Youth entering Lost-n-Found are required to visit CAPN for TB and HIV screenings\n<br /><br />Service Hours : 2pm to 6pm Mon and Thu; 8am to 12:30pm Tue, Wed, & Fri\n<br /><br />Eligibility : homeless and medically underserved individuals and families in metropolitan Atlanta\n<br /><br />Required Documents : Homeless verification letter and referral','Mental Health Program:\n<br /><br />458 Ponce de Leon Ave. NE \n<br /><br />Atlanta, GA 30308','capn.org',2147483647,'0000-00-00 00:00:00',1,1,90),
	(294,20,'GLBT National Youth Hotline','The GLBT National Youth Talkline provides telephone and email peer-counseling, as well as factual information and local resources for cities and towns across the United States. All of our services are free and confidential.\n<br /><br />Service Hours : 4pm to Midnight Mon - Fri, Noon - 5pm Sat (all times EST)\n<br /><br />Eligibility : Youth to 25 years old','','glbtnationalhelpcenter.org',180024677,'0000-00-00 00:00:00',1,1,91),
	(295,20,'Trevor Project','Suicide prevention and crisis intervention lifeline for LGBTQ youth. The Trevor Lifeline is a free and confidential service that offers hope and someone to talk to.\n<br /><br />Service Hours : 24 hours year round\n<br /><br />Eligibility : Youth to 24 years old\n<br /><br />Required Documents : None','','thetrevorproject.org',2147483647,'0000-00-00 00:00:00',1,1,92),
	(296,21,'Ali Forney (New York)','The Ali Forney day center offers street outreach, case management, primary medical care, HIV testing, mental health assessment and treatment, food and showers, an employment assistance program, and referrals to their housing program.\n<br /><br />Eligibility : LGBT Youth 16 - 24 years old','Manhattan, New York City','aliforneycenter.org',2122060574,'0000-00-00 00:00:00',1,1,93),
	(297,21,'Broadway Youth Center (Chicago)','A Chicago drop-in center open afternoons during the week providing various services for LGBT youth up to 24. Please call or visit web site to confirm services and availability.','3179 N. Broadway\n<br /><br />Chicago, IL 60657','http://www.howardbrown.org',2147483647,'0000-00-00 00:00:00',1,1,94),
	(298,21,'L.A. Gay & Lesbian Center (Los Angeles)','9am to 5pm daily the Jeff Griffith Youth Center serves LGBT youth. Services include breakfast, lunch, dinner, clothing, laundry, showers, and emergency housing.','1220 N Highland Ave\n<br /><br />Los Angeles, CA 90038','http://www.lagaycenter.org',2147483647,'0000-00-00 00:00:00',1,1,95),
	(299,21,'Larkin Street Youth Services (San Francisco)','Larkin Street Youth Services operates two youth shelters and two drop-in centers for homeless, runaway, and at-risk youth in San Francisco, California. Lark-Inn for Youth (emergency shelter, 18-24), Diamond Youth Shelter (emergency shelter, 17 and under), Drop-in Center (ages 19 and under), Haight Street Referral Center (ages 24 and under).\n<br /><br />Service Hours : Programs and hours vary between the locations. Please call the emergency number above for more info.\n<br /><br />Eligibility : 12 - 24 years old','','http://www.larkinstreetyouth.org',2147483647,'0000-00-00 00:00:00',1,1,96),
	(300,21,'Ruth Ellis Center (Detroit)','Operates Ruth?s House a ten bed transitional living program for 12-21 year old LGBT youth in Detroit.','77 Victor St.\n<br /><br />Highland Park, MI 48203','ruthelliscenter.org',2147483647,'0000-00-00 00:00:00',1,1,98),
	(301,21,'Zebra Coalition (Orlando)','The Zebra Coalition operates a ten bed transitional housing facility for LGBT youth in central Florida. They also offer referral services to partnering agencies.','Orlando, FL','zebrayouth.org',2147483647,'0000-00-00 00:00:00',1,1,99);

/*!40000 ALTER TABLE `directory_entries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;

INSERT INTO `groups` (`id`, `name`, `description`)
VALUES
	(1,'admin','Administrator'),
	(2,'members','General User');

/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table login_attempts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `login_attempts`;

CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`)
VALUES
	(1,X'7F000001','x',1384013672),
	(3,X'7F000001','user@user.com',1384055026),
	(4,X'7F000001','user@user.com',1384055030),
	(5,X'7F000001','user@user.com',1384092874),
	(6,X'7F000001','user@user.com',1384092879);

/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ratings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ratings`;

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `entry` text,
  `active` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;

INSERT INTO `ratings` (`id`, `rate`, `type`, `entry`, `active`, `date`, `date_mod`, `user`)
VALUES
	(3,2,'entry','1',1,'2013-11-09 10:11:48','2013-11-09 10:11:48',1),
	(4,4,'entry','1',1,'2013-11-09 13:39:30','2013-11-09 13:39:30',1),
	(5,5,'entry','1',1,'2013-11-09 13:39:34','2013-11-09 13:39:34',1),
	(6,3,'entry','1',1,'2013-11-09 13:39:37','2013-11-09 13:39:37',1),
	(7,1,'entry','1',1,'2013-11-09 13:39:40','2013-11-09 13:39:40',1),
	(8,3,'entry','1',1,'2013-11-09 13:40:58','2013-11-09 13:40:58',1);

/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;

INSERT INTO `sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`)
VALUES
	('f2267daedd1866b40352b2a881a473a6','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36',1384097030,'a:7:{s:9:\"user_data\";s:0:\"\";s:5:\"state\";s:32:\"de8cb9366ceda0fa64f7605309723ca9\";s:8:\"identity\";s:18:\"daniel@seripap.com\";s:8:\"username\";s:18:\"daniel@seripap.com\";s:5:\"email\";s:18:\"daniel@seripap.com\";s:7:\"user_id\";s:1:\"8\";s:14:\"old_last_login\";s:10:\"1384097018\";}'),
	('f35640a3a83dc495ff16627a3ec5fb62','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9) AppleWebKit/537.71 (KHTML, like Gecko) Version/7.0 Safari/537.71',1384097035,'a:5:{s:8:\"identity\";s:15:\"admin@admin.com\";s:8:\"username\";s:3:\"Art\";s:5:\"email\";s:15:\"admin@admin.com\";s:7:\"user_id\";s:1:\"1\";s:14:\"old_last_login\";s:10:\"1384095769\";}');

/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(80) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `img`, `token`)
VALUES
	(1,X'7F000001','Art','59beecdf7fc966e2f17fd8f65a4a9aeb09d4a3d4','9462e8eee0','admin@admin.com','',NULL,NULL,NULL,1268889823,1384097041,1,'Admin','istrator','ADMIN','0',NULL,NULL),
	(2,X'7F000001','Jason','59beecdf7fc966e2f17fd8f65a4a9aeb09d4a3d4','9462e8eee0','jason@jason.com',NULL,NULL,NULL,NULL,1384006199,1384006199,1,'Test','test','test','test',NULL,NULL),
	(3,X'7F000001','Justin','59beecdf7fc966e2f17fd8f65a4a9aeb09d4a3d4','9462e8eee0','justin@justin.com',NULL,NULL,NULL,NULL,1384015093,1384046841,1,'Test','test','test','k',NULL,NULL),
	(4,X'7F000001','Matt Black','c989ae1347530012e363288038efb0f5a87e88fb',NULL,'matt@black.com',NULL,NULL,NULL,'f7c078c7b57ed69c0f7f799528d3a059bc3902a3',1384036549,1384095071,1,'Matt','Black',NULL,'111',NULL,NULL),
	(5,X'7F000001','jennifer smith','8522a3a527b9ae9cf090fe466b937f0236e78e21',NULL,'jen@smith.com',NULL,NULL,NULL,NULL,1384049802,1384092885,1,'Jen','Smith',NULL,'123',NULL,NULL),
	(8,X'7F000001','daniel@seripap.com','70dbc754336f9f6219ba51ee8e2e551de8e89e2a',NULL,'daniel@seripap.com',NULL,NULL,NULL,'080478e69cdcdb69faafb5de41750b67acaed180',1384096001,1384097032,1,'Daniel','Seripap',NULL,NULL,'https://graph.facebook.com/me/picture?type=normal&access_token=CAADFPqncaTkBAJoBYy1Xc79fIo02ua5Tkb2caQQIS3seD5qz7pTEjXkAAPJWKbVSvZAA29EGtb2KmdWQ7lre8MjNcPUciE1sKZCB1hoFAQmljV2nWyVGDbyphmwfyOODsneyEvHuZB7EWjZADhj4ZBUuZBf8MRuC8h9r2ZCcyW3RpZCevqy5cQ1K','CAADFPqncaTkBAAeBn3w0bkfogvrdwdQLvbnpQioTopZAm0XQjefDHfoX1QAbJTY3bZBOLNnZCq0ZAbPWKOtKui1NZAqnp3y0TmM63jlfIJjMYBDCCNrVeZCfFZBp2FIw4YPpTSPk7OPiSCrUXycnuIGhfkZCZCqbfRys7D1io1l4Wj5pbUJPJPaTA');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users_groups`;

CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`)
VALUES
	(1,1,1),
	(2,1,2),
	(3,2,2),
	(4,3,2),
	(5,4,2),
	(6,5,2),
	(8,8,2);

/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
