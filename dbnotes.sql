CREATE TABLE `tbl_animal` (
  `farmid` int(11) NOT NULL,
  `animalid` int(11) NOT NULL,
  `species` varchar(35) NOT NULL,
  `breed` varchar(35) NOT NULL,
  `dateofbuy` varchar(35) NOT NULL,
  `noofanimal` int(11) NOT NULL,
  `email` varchar(25) NOT NULL
);


INSERT INTO `tbl_animal` (`farmid`, `animalid`, `species`, `breed`, `dateofbuy`, `noofanimal`, `email`) VALUES
(1, 13, '14', '17', '2018-12-12', 345, '');



CREATE TABLE `tbl_appointment` (
  `apid` int(11) NOT NULL,
  `pname` varchar(15) NOT NULL,
  `page` varchar(25) NOT NULL,
  `reason` varchar(25) NOT NULL,
  `datee` varchar(25) NOT NULL,
  `time` time NOT NULL,
  `clinic` varchar(25) NOT NULL,
  `staff` varchar(25) NOT NULL,
  `stafftype` varchar(25) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'Requested',
  `Doctor_response` varchar(100) NOT NULL,
  `li_response` varchar(100) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT '0'
) ;


INSERT INTO `tbl_appointment` (`apid`, `pname`, `page`, `reason`, `datee`, `time`, `clinic`, `staff`, `stafftype`, `status`, `Doctor_response`, `li_response`, `seen`) VALUES
(31, '34', '8 weeks', 'treatment', '2020-12-01', '15:00:00', 'krclinic@gmail.com', '5', 'Doctor', 'Accept', 'Requested time slot is not available, please come at 2020-12-01 15:00', '', 0),
(32, '1', '', 'treatment', '2020-03-04', '14:03:00', 'animalcare@gmail.com', '6', 'Doctor', 'Accept', 'Requested time slot is not available, please come at 2020-03-04 14:03', '', 0),
(33, '1', '', 'treatment', '2020-02-03', '16:00:00', 'animalcare@gmail.com', '11', 'LI', 'Requested', '', '', 0);



CREATE TABLE `tbl_attenderreg` (
  `clinicemailid` int(11) NOT NULL,
  `attenderid` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `state` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `Place` varchar(25) NOT NULL,
  `datee` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Emailid` varchar(25) NOT NULL
) ;


INSERT INTO `tbl_attenderreg` (`clinicemailid`, `attenderid`, `Name`, `Gender`, `state`, `district`, `Place`, `datee`, `Phone`, `Emailid`) VALUES
(0, 1, 'binu', 'Male', '1', '2', 'muvattupuzha', '0996-03-31', '9867341234', 'binu@gmail.com'),
(0, 3, 'narayanan', 'male', '1', '1', 'kodikulam', '08/22/1991', '9878675434', 'nara@gmail.com');



CREATE TABLE `tbl_breed` (
  `spid` int(11) NOT NULL,
  `breedid` int(11) NOT NULL,
  `breedname` varchar(25) NOT NULL,
  `pdisease` varchar(50) NOT NULL,
  `hdisease` varchar(50) NOT NULL,
  `food` varchar(50) NOT NULL,
  `symptoms` varchar(50) NOT NULL,
  `vaccdate` varchar(50) NOT NULL,
  `medicine` varchar(50) NOT NULL
);


INSERT INTO `tbl_breed` (`spid`, `breedid`, `breedname`, `pdisease`, `hdisease`, `food`, `symptoms`, `vaccdate`, `medicine`) VALUES
(11, 10, 'persian cat', 'Dysplasia', 'campylobacteriosis', 'seafoods', 'bad breath,weight loss', '16 week,24 week', 'fvrcp'),
(11, 11, 'Russian Blue', 'FIV(Feline Leukemia Virus),chlamydia', 'Ring,Roundworm etc', 'Purina kitten Chow Nurture,Purina  One Healthy Kit', 'Weight loss,Bad breath', '', 'Feline Vaccination(common)'),
(11, 12, 'British short hair', 'HCM(Hypertrophic cardiomyopathy),Hemophilia B,Blee', 'Rabies,Ringworm Hookworms', 'Best Wet Food,Best Dry Food,Whiskas Food', 'Redness,crustiness,bad smell', '', 'FIP and FelV'),
(12, 13, 'Labrador', 'dysplasia,dissecans,osteochondritis', 'Lyme diseases,Hepatitis C', 'Royal canin Labrador Retriever Junior and adult fo', 'pace,drool,look at their stomach,be short of breat', '', 'DHPP,Leptospirosis,Canine Influenca'),
(12, 14, 'pug', 'PDE(Pug Dog Encephalitis),CHD(Canine Hip Dysplasia', 'parvo,rabies,distemper', 'Royal Canin Pug Food', 'Behavioral changes,Depression,Head tilt,Lethargy,W', '', 'Parvavirus vaccination,Rabies Vaccine,Combination '),
(12, 15, 'German Shepherd', 'Hip and Elbow Dysplasia,Bloat,Lupus,Exocrine pancr', 'Rabies,Hookworms', 'Meats,Raw meaty bones,Cooked fish,trout,Eggs,liver', 'Redness,Behavioral changes,Bad Breath,vomiting,dia', '', 'Rabies,Canine distemper,Parvovirus,Parainfluenca'),
(13, 16, 'Macaw', 'Digestive disorder called proventricular dilatatio', 'chickenpox,ringworms,scabies,head lice', 'seeds,nuts,fruits,palm fruits,leaves,flowers', 'discharge from the eyes or nose,weight loss,discol', '', 'polymarvirus'),
(14, 17, 'red factor canary', 'salmonella,aspergillosis,avian pox', '\r\npsittacosis,fever,headache \r\n\r\n\r\n\r\n', 'leaves,fruits,seeds,vegetables ', 'poor feathering,greasy feather,diarrhea,swollen fe', '', 'polyomavirus vaccine '),
(14, 18, 'black turkey', 'fowl cholera,Erysipelas,Hemorrhagic enteritis', 'fever,head ache', 'grasses', 'weight loss,diarrhea,snicking,discharge of mucus', '', 'ND-BI strain,fowl pox,cholera vaccine'),
(15, 19, 'grizzled giant squirrel', '\r\ntularemia,typhus,plague,ringworm etc \r\n\r\n\r\n \r\n\r\n', 'some infections can cause to humans\r\n', 'walnut,almonds,cashews,fruits', 'unexpected behavior, \r\n', '', 'Rabies vaccine '),
(16, 20, 'Jamnapari', 'fluke infection,tape worm,goat pox,CAE,CL', 'Caprine Arthritis Encephalitis(CAE),Caseous Lympha', 'barley,jowar,peanut grass,bajra,CO-1,CO-2', 'unusual vocalization,swollen midsection,posture,sh', '', '  \r\n CDT\r\n '),
(16, 21, 'boer', 'CAE,CL', 'ringworm,Q fever,chlamydiosis,salmonellosis,lister', 'hay,grass,fruits,vegetables,peanut grass,CO1,CO2', 'unusual vocalization,swollen midsection,posture,sh', '', 'CDT');



CREATE TABLE `tbl_chat` (
  `id` int(11) NOT NULL,
  `from_id` varchar(45) NOT NULL,
  `to_id` varchar(45) NOT NULL,
  `message` varchar(150) NOT NULL,
  `datetime` varchar(30) NOT NULL
) ;


INSERT INTO `tbl_chat` (`id`, `from_id`, `to_id`, `message`, `datetime`) VALUES
(1, 'swathyraj919@gmail.com', 'sidharth@gmail.com', ' fgfgf', '2019-12-11 16:51:44.684746'),
(2, 'sidharth@gmail.com', 'swathyraj919@gmail.com', ' hello', '2019-12-11 16:56:10.890322'),
(3, 'sidharth@gmail.com', 'swathyraj919@gmail.com', 'ssd\n', '2019-12-11 16:56:37.346214'),
(4, 'sidharth@gmail.com', 'swathyraj919@gmail.com', '\ndfd', '2019-12-11 16:56:48.937023'),
(5, 'sidharth@gmail.com', 'swathyraj919@gmail.com', 'dfddf\n', '2019-12-11 16:57:01.434709'),
(6, 'swathyraj919@gmail.com', 'sidharth@gmail.com', ' fgfg', '2019-12-11 16:57:06.036716'),
(8, 'sidharth@gmail.com', 'swathyraj919@gmail.com', 'sfsf\n', '2019-12-11 16:57:36.249247'),
(9, 'swathyraj919@gmail.com', 'sidharth@gmail.com', 'fdf\n', '2019-12-11 16:57:41.695329'),
(10, 'swathyraj919@gmail.com', 'sidharth@gmail.com', 'hg', '2019-12-11 16:57:47.975404'),
(11, 'sidharth@gmail.com', 'swathyraj919@gmail.com', 'kj\n', '2019-12-11 16:57:57.751283'),
(12, 'swathyraj919@gmail.com', 'sidharth@gmail.com', 'jhh', '2019-12-11 16:58:11.317717'),
(13, 'sidharth@gmail.com', 'swathyraj919@gmail.com', 'jh', '2019-12-11 16:58:32.960690'),
(14, 'swathyraj919@gmail.com', 'sidharth@gmail.com', 'jh', '2019-12-11 16:58:47.044723'),
(15, 'sidharth@gmail.com', 'swathyraj919@gmail.com', 'xvc', '2019-12-11 16:58:53.500821'),
(16, 'swathyraj919@gmail.com', 'sidharth@gmail.com', 'ghgh\n', '2019-12-11 16:59:01.253041'),
(17, 'sidharth@gmail.com', 'swathyraj919@gmail.com', 'hj', '2019-12-11 16:59:11.537509'),
(18, 'sidharth@gmail.com', 'swathyraj919@gmail.com', ' dddddddd', '2019-12-11 17:01:54.992512'),
(19, 'swathyraj919@gmail.com', 'sidharth@gmail.com', 'hjhjjjjjjjj', '2019-12-11 17:02:03.773376'),
(20, 'swathyraj919@gmail.com', 'sidharth@gmail.com', '\njhjhhh', '2019-12-11 17:02:08.013288'),
(21, 'sidharth@gmail.com', 'swathyraj919@gmail.com', 'jhhjh', '2019-12-11 17:02:14.409956');



CREATE TABLE `tbl_clinicreg` (
  `Clinic_id` int(15) NOT NULL,
  `Clinic_name` varchar(20) NOT NULL,
  `Clinic_reg_no` varchar(15) NOT NULL,
  `state` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `place` varchar(30) NOT NULL,
  `pincode` varchar(45) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `Clinic_Email_id` varchar(25) NOT NULL,
  `Govt_no` varchar(25) NOT NULL,
  `form` varchar(45) NOT NULL,
  `Photo_Path` varchar(30) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Requested'
) ;


INSERT INTO `tbl_clinicreg` (`Clinic_id`, `Clinic_name`, `Clinic_reg_no`, `state`, `district`, `place`, `pincode`, `phone`, `Clinic_Email_id`, `Govt_no`, `form`, `Photo_Path`, `Name`, `address`, `phno`, `status`) VALUES
(10, 'KR clinic', '763', '1', '6', 'muvattupuzha', '686661', '9878908767', 'krclinic@gmail.com', '67', '1.jpg', '', 'krishnamurthi', 'kuttikattil', '9778898999', 'Accept'),
(12, 'Animal care', 'cl4567', '1', '1', 'vannappuram', '685607', '8909866556', 'animalcare@gmail.com', 'cl 67890000000', '1_-_Copy.jpg', '', 'babu mohan', 'kandathippurackal', '8987765567', 'Accept'),
(13, 'vet doc', 'cl8990', '1', '3', 'pala', '686574', '9876156899', 'vetdoc@gmail.com', '67899', '5.jpg', '', 'Aiswarya', 'kandathippurackal', '9090098909', 'Accept'),
(14, 'Santhigiri', 'cl4567', '1', '3', 'ettumanoor', '686562', '9090098776', 'santhi1@gmail.com', '45665', '1.jpg', '', 'santhi kumar', 'santhibhavanam', '9088764434', 'Accept'),
(15, 'Joseph clinic', 'cl8776', '1', '4', 'chalakkudi', '678765', '9356789987', 'josephclinic@gmail.com', '56778', '2.jpg', '', 'joseph', 'kuttayil', '8989898766', 'Requested');


CREATE TABLE `tbl_comment` (
  `cid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `msg` varchar(100) NOT NULL
) ;


CREATE TABLE `tbl_complaint` (
  `cmpid` int(11) NOT NULL,
  `compsub` varchar(50) NOT NULL,
  `compto` varchar(50) NOT NULL,
  `compdesc` varchar(50) NOT NULL,
  `compdate` varchar(50) NOT NULL,
  `email` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'open',
  `response` varchar(45) NOT NULL,
  `clresponse` varchar(100) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT '0'
) ;


INSERT INTO `tbl_complaint` (`cmpid`, `compsub`, `compto`, `compdesc`, `compdate`, `email`, `status`, `response`, `clresponse`, `seen`) VALUES
(22, 'appointment', 'krclinic@gmail.com', 'doctor was not available', '12/09/2019', 'swathyraj919@gmail.com', 'closed', '', 'ghjjuj', 1),
(23, 'dfdf', 'admin', 'dfddgdg', '5555-12-31', 'swathyraj919@gmail.com', 'open', '', '', 1),
(26, 'site pbm', 'admin', 'design pbm', '2019-12-11', 'swathyraj919@gmail.com', 'closed', 'sorry for the incovenience.we will fix it soo', '', 1),
(27, 'appoinntment time', 'animalcare@gmail.com', 'li was not available', '2019-12-11', 'swathyraj919@gmail.com', 'closed', '', 'sorry,next time we will fix it', 1);



CREATE TABLE `tbl_district` (
  `districtid` int(11) NOT NULL,
  `districtname` varchar(30) NOT NULL,
  `stateid` int(11) NOT NULL
) ;



INSERT INTO `tbl_district` (`districtid`, `districtname`, `stateid`) VALUES
(1, 'idukki', 1),
(2, 'ernakulam', 1),
(3, 'kottayam', 1),
(4, 'thrissur', 1),
(5, 'palakkad', 1),
(6, 'alappuzha', 1),
(7, 'trivandrum', 1),
(8, 'wayanad', 1),
(9, 'malappuram', 1),
(10, 'kozhikode', 1);


CREATE TABLE `tbl_docreg` (
  `clinicemailid` varchar(45) NOT NULL,
  `docid` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `hname` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `place` varchar(50) NOT NULL,
  `datee` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `regno` int(11) NOT NULL,
  `regyear` varchar(20) NOT NULL,
  `specialisation` varchar(35) NOT NULL,
  `photo` varchar(11) NOT NULL
) ;


INSERT INTO `tbl_docreg` (`clinicemailid`, `docid`, `name`, `gender`, `hname`, `state`, `district`, `place`, `datee`, `phone`, `email`, `regno`, `regyear`, `specialisation`, `photo`) VALUES
('krclinic@gmail.com', 5, 'mathew ', 'Male', 'thikkattil', '1', '2', 'muvattupuzha', '08/22/1991', '9878908767', 'mathew@gmail.com', 678999, '08/28/2018', 'Bachelors in veterinary science', '4.jpg'),
('animalcare@gmail.com', 6, 'sidharth kumar', 'Male', 'kuttikkattil', '1', '2', 'muvattupuzha', '1996-12-08', '8789875643', 'sidharth@gmail.com', 678999, '2016-05-06', 'Bachelors in veterinary science', 'f6.jpg'),
('krclinic@gmail.com', 8, 'seetha mohan', 'Female', 'seethabhavanam', '1', '5', 'pattambi', '1991-04-05', '9878975321', 'seethamw@gmail.com', 678987, '2016-12-05', 'Bachelors in animal husbandry', 'f8.jpg'),
('vetdoc@gmail.com', 9, 'muhammed arif', 'Male', 'mundackal', '1', '9', 'ponnani', '1990-05-31', '8745674324', 'mh@gmail.com', 788987, '2000-07-25', 'Bachelors in animal husbandry', 't-1.jpg'),
('santhi1@gmail.com', 10, 'Thomas k', 'Male', 'thottakkattukara', '1', '3', 'thrikkkakara', '1990-12-12', '9123456788', 'thom@gmail.com', 678889, '2016-12-24', 'Bachelors in animal husbandry', 'te1.jpg');



CREATE TABLE `tbl_farmappointment` (
  `fpid` int(11) NOT NULL,
  `clinic` varchar(25) NOT NULL,
  `staff` varchar(25) NOT NULL,
  `reason` varchar(25) NOT NULL,
  `datee` varchar(15) NOT NULL,
  `time` varchar(15) NOT NULL,
  `stafftype` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Requested',
  `usermail` varchar(40) NOT NULL,
  `farmid` int(11) NOT NULL,
  `Doctor_response` varchar(100) NOT NULL,
  `li_response` varchar(100) NOT NULL
) ;



INSERT INTO `tbl_farmappointment` (`fpid`, `clinic`, `staff`, `reason`, `datee`, `time`, `stafftype`, `status`, `usermail`, `farmid`, `Doctor_response`, `li_response`) VALUES
(1, 'animalcare@gmail.com', '6', 'treatment', '2019-11-11', '15:33', 'Doctor', 'Accept', 'krishnan1@gmail.com', 1, 'Requested time slot is not available, please come at 2019-11-11 15:33', ''),
(2, 'animalcare@gmail.com', '11', 'treatment', '2019-12-12', '19:00', 'LI', 'Accept', 'krishnan1@gmail.com', 1, '', 'Requested time slot is not available, please come at 2019-12-12 19:00'),
(3, 'vetdoc@gmail.com', '9', 'treatment', '2020-11-02', '15:00', 'Doctor', 'Accept', 'krishnan1@gmail.com', 1, 'Requested time slot is not available, please come at 2020-11-02 15:00', ''),
(4, 'animalcare@gmail.com', '11', 'vaccination', '2020-12-12', '16:00', 'LI', 'Accept', 'krishnan1@gmail.com', 1, '', 'Requested time slot is not available, please come at 2020-12-12 16:00'),
(5, 'animalcare@gmail.com', '11', 'treatment', '2020-12-12', '16:00', 'LI', 'Requested', 'krishnan1@gmail.com', 1, '', '');



CREATE TABLE `tbl_farmreg` (
  `farmid` int(11) NOT NULL,
  `farmname` varchar(45) NOT NULL,
  `photo` varchar(600) NOT NULL,
  `year` varchar(30) NOT NULL,
  `fregno` varchar(11) NOT NULL,
  `state` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `place` varchar(45) NOT NULL,
  `contactno` varchar(11) NOT NULL,
  `usermailid` varchar(45) NOT NULL,
  `userid` varchar(25) NOT NULL
) ;



INSERT INTO `tbl_farmreg` (`farmid`, `farmname`, `photo`, `year`, `fregno`, `state`, `district`, `place`, `contactno`, `usermailid`, `userid`) VALUES
(1, 'KRF', 'tem6.jpg', '12/12/2019', '5678899', '1', '3', 'pala', '8999988776', 'krf@gmail.com', 'krishnan1@gmail.com');



CREATE TABLE `tbl_liinfo` (
  `info_id` int(11) NOT NULL,
  `Program_name` varchar(45) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `program_date` varchar(45) NOT NULL,
  `description` varchar(100) NOT NULL,
  `posted_date` varchar(45) NOT NULL,
  `posted_person_detail` varchar(45) NOT NULL,
  `emailid` varchar(50) NOT NULL
) ;


INSERT INTO `tbl_liinfo` (`info_id`, `Program_name`, `photo`, `program_date`, `description`, `posted_date`, `posted_person_detail`, `emailid`) VALUES
(2, 'Awareness program1', 'bnr3.jpg', '12/12/2012,3.00 pm', 'This program is conducted for the awareness about the diseases spreading in our area', '12/12/2019,10.00am', 'karthik nambiar,LI', 'karthik@gmail.com');



CREATE TABLE `tbl_lireg` (
  `clinicemailid` varchar(50) NOT NULL,
  `liid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `place` varchar(50) NOT NULL,
  `datee` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pen` int(11) NOT NULL,
  `photo` varchar(60) NOT NULL
) ;



INSERT INTO `tbl_lireg` (`clinicemailid`, `liid`, `name`, `gender`, `state`, `district`, `place`, `datee`, `phone`, `email`, `pen`, `photo`) VALUES
('krclinic@gmail.com', 7, 'meenu tomson', 'Female', '1', '2', 'koothattukulam', '08/05/1994', '9898787656', 'mca1926@santhigiricollege.com', 6789, 'd1.png'),
('animalcare@gmail.com', 11, 'karthik nambiar', 'Male', '1', '3', 'anchelpetty', '1989-06-07', '9134567898', 'karthik@gmail.com', 4566, 'f3.jpg'),
('krclinic@gmail.com', 12, 'james george', 'Male', '1', '2', 'ernakulam', '1990-07-19', '9898765456', 'j1@gmail.com', 8898767, 'f3.jpg');



CREATE TABLE `tbl_login` (
  `Email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `securityque` varchar(100) NOT NULL,
  `securityans` varchar(100) NOT NULL
) ;


INSERT INTO `tbl_login` (`Email`, `password`, `usertype`, `securityque`, `securityans`) VALUES
('anu@gmail.com', 'anu123', 'user', '', ''),
('nara@gmail.com', 'nara123', 'attender', '', ''),
('paith@gmail.com', 'paith123', 'clinic', '', ''),
('rohith@gmail.com', 'rohith123', 'doctor', '', ''),
('sreerag@gmail.com', 'sreerag123', 'li', '', ''),
('sreejith@gmail.com', 'sree123', 'user', '', ''),
('manu@gmail.com', 'manu123', 'doctor', '', ''),
('ramesh@gmail.com', 'ramesh123', 'cattlefarmers', '', ''),
('sudhevan@gmail.com', 'sudhev123', 'cattlefarmers', '', ''),
('sudhevan@gmail.com', 'sudhev123', 'cattlefarmers', '', ''),
('sreeni@gmail.com', 'sreeni123', 'cattlefarmers', '', ''),
('binus@gmail.com', 'bi123', 'cattlefarmers', '', ''),
('hari@gmail.com', 'hari123', 'cattlefarmers', '', ''),
('harisadanam@gmail.co', 'harisadanam123', 'farm', '', ''),
('dhyan@gmail.com', 'dhyan123', 'cattlefarmers', '', ''),
('sreeraman@gmail.com', 'sreeraman123', 'cattlefarmers', '', ''),
('dasappan@gmail.com', 'das456', 'cattlefarmers', '', ''),
('sreeraman@gmail.com', 'sreeraman123', 'cattlefarmers', '', ''),
('admin1@gmail.com', 'admin123', 'admin', '', ''),
('anu@gmail.com', 'anu12345', 'normalusers', '', ''),
('binu@gmail.com', 'binu123', 'clinic', '', ''),
('binu@gmail.com', 'binu123', 'clinic', '', ''),
('sethu@gmail.com', 'sethu789', 'normalusers', '', ''),
('a2@gmail.com', 'a123', 'normalusers', '', ''),
('sreeram@gmail.com', 'sreeram123', 'normalusers', '', ''),
('dfgh@gmail.com', 'a12345', 'normalusers', '', ''),
('rahul@gmail.com', 'rahul123', 'normalusers', '', ''),
('rahul@gmail.com', 'rahul123', 'normalusers', '', ''),
('rahul@gmail.com', 'rahul123', 'normalusers', '', ''),
('harik@gmaail.com', 'harik123', 'normalusers', '', ''),
('gigith@gmail.com', 'gigith123', 'normalusers', '', ''),
('gigith@gmail.com', 'gigith123', 'normalusers', '', ''),
('haridevan@gmail.com', 'hari123', 'normalusers', '', ''),
('arya@gmail.com', 'arya123', 'normalusers', '', ''),
('george@gmail.com', 'george123', 'clinic', '', ''),
('sreedhi@gmail.com', 'sreedhi123', 'li', '', ''),
('radha@gmail.com', 'radha123', 'li', '', ''),
('swathy@gmail.cpm', 'swa123', 'clinic', '', ''),
('arjun@gmail.com', 'arjun123', 'li', '', ''),
('rohi@gmail.com', 'rohi123', 'doctor', '', ''),
('rees@gmail.com', 'rees123', 'normalusers', '', ''),
('mariya@gmail.com', 'mariya123', 'normalusers', '', ''),
('meena@gmail.com', 'meena123', 'normalusers', '', ''),
('aishu@gmail.com', 'aishu123', 'normalusers', '', ''),
('raison@gmail.com', 'raison123', 'cattlefarmers', '', ''),
('rahuln@gmail.com', 'rahuln123', 'cattlefarmers', '', ''),
('kri@gmail.com', 'kri123', 'cattlefarmers', '', ''),
('thanku@gmail.com', 'thanku123', 'cattlefarmers', '', ''),
('raman@gmail.com', 'raman123', 'cattlefarmers', '', ''),
('binu@gmail.com', 'binu123', 'cattlefarmers', '', ''),
('ayyappan@gmail.com', 'ay123', 'cattlefarmers', '', ''),
('rakh@gmail.com', 'rakh123', 'cattlefarmers', '', ''),
('rahulak@gmail.com', 'rk123', 'clinic', '', ''),
('sachi@gmail.com', 'sachi456', 'doctor', '', ''),
('mohanan@gmail.com', 'mohan123', 'cattlefarmers', '', ''),
('ramank@gmail.com', 'ramank123', 'cattlefarmers', '', ''),
('raju@gmail.com', 'raju123', 'cattlefarmers', '', ''),
('adhi@gmail.com', 'adhi456', 'li', '', ''),
('chandran@gmail.com', 'ch123', 'cattlefarmers', '', ''),
('gaya@gmail.com', 'g123', 'normalusers', '', ''),
('gn@gmail.com', 'gn123', 'cattlefarmers', '', ''),
('soman@gmail.com', 'soman123', 'cattlefarmers', '', ''),
('ajith@gmail.com', 'ajith123', 'normalusers', '', ''),
('krishnan@gmail.com', 'kri123', 'cattlefarmers', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('keerthi@gmail.com', 'keerthi123', 'normalusers', 'question1', 'romeo'),
('sreedhareeyam@gmail.', 'sr123', 'clinic', 'What is the name of your first School', 'hira'),
('krclinic@gmail.com', 'kr456', 'clinic', 'Which is your favorite book?', 'agnichiraku'),
('mathew@gmail.com', 'mathew456', 'doctor', 'What is the name of your first School', 'depaul'),
('appu@gmail.com', 'appu123', 'normalusers', 'Which is your favorite book?', 'swarnam'),
('karthu@gmail.com', 'karthu123', 'normalusers', 'What is the name of your first School', 'jairani'),
('swathyraj919@gmail.c', 'swathy123', 'doctor', 'What is the name of your first School', 'snmvhss'),
('sreedhareeyam@gmail.', 'sree123', 'normalusers', 'Which is your favorite book?', '4455566'),
('sreedhareeyam@gmail.', '123', 'cattlefarmers', 'Which is your favorite book?', 'vhj'),
('swathyraj919@gmail.c', 'swathy456', 'doctor', 'Which is your favorite book?', 'romeo juliet'),
('mca1926@santhigiricollege.com', 'mca123', 'li', 'What is the name of your first School', 'santhigiri'),
('swathy@gmail.com', 'swathy123', 'li', 'What is the name of your first School', 'hjkki'),
('meenu22@gmail.com', 'meenu123', 'li', 'Which is your favorite book?', 'malakal'),
('meenu22@gmail.com', '123', 'li', 'Which is your favorite book?', 'abc'),
('swathyraj919@gmail.com', 'swathy456', 'normalusers', 'Which is your favorite book?', 'romwojuliet'),
('animalcare@gmail.com', 'animal123', 'clinic', 'What is the name of your first School', 'hira'),
('animalcare@gmail.com', 'an123', 'clinic', 'What is the name of your first School', 'hira'),
('sidharth@gmail.com', 's123', 'doctor', 'What is the name of your first School', 'stthomas'),
('karthik@gmail.com', 'k123', 'li', 'What is the name of your first School', 'depaul'),
('dgdgdg@dfdf', '123', 'normalusers', 'Which is your favorite book?', 'dgdgdg'),
('fhfhf@gdg.ghgh', '123', 'doctor', 'Which is your favorite book?', 'dfdf'),
('krishnan1@gmail.com', 'k123', 'cattlefarmers', 'What is the name of your first School', 'krschool'),
('j1@gmail.com', 'j123', 'li', 'Which is your favorite book?', 'jamaesalice'),
('vetdoc@gmail.com', 'vet123', 'clinic', 'What is the name of your first School', 'vetdoc'),
('seethamw@gmail.com', 's123', 'doctor', 'Which is your favorite book?', 'seetha'),
('mh@gmail.com', 'mh123', 'doctor', 'Which is your favorite book?', 'muhammed'),
('sreedhevi@gmail.com', 'sree123', 'normalusers', 'Which is your favorite book?', 'sreedhevi'),
('santhi1@gmail.com', 's123', 'clinic', 'What is the name of your first School', 'santhigiri'),
('josephclinic@gmail.com', 'jo123', 'clinic', 'Which is your favorite book?', 'joseph'),
('thom@gmail.com', 'thom123', 'doctor', 'Which is your favorite book?', 'thom');


CREATE TABLE `tbl_notification` (
  `nid` int(11) NOT NULL,
  `from_id` varchar(25) NOT NULL,
  `fromusertype` varchar(25) NOT NULL,
  `to_id` varchar(25) NOT NULL,
  `tousertype` varchar(25) NOT NULL,
  `timeofsend` varchar(25) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `message` varchar(25) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT '0'
) ;


INSERT INTO `tbl_notification` (`nid`, `from_id`, `fromusertype`, `to_id`, `tousertype`, `timeofsend`, `subject`, `message`, `seen`) VALUES
(1, 'sachi@gmail.com', 'Doctor', 'sethu@gmail.com', 'user', '2019-09-28 21:18:06.29214', 'Appointment', 'Accepted', 0),
(2, 'rohi@gmail.com', 'Doctor', 'sreeni@gmail.com', 'user', '2019-10-01 19:32:53.01518', 'Appointment', 'Accepted', 1),
(3, 'sachi@gmail.com', 'Doctor', 'sreeni@gmail.com', 'user', '2019-10-01 19:38:18.01166', 'Appointment', 'Rejected', 1),
(4, 'adhi@gmail.com', 'li', 'chandran@gmail.com', 'user', '2019-10-04 12:42:58.27641', 'Appointment', 'Accepted', 0),
(5, 'adhi@gmail.com', 'li', 'anu@gmail.com', 'user', '2019-10-04 14:46:11.91120', 'Appointment', 'Accepted', 0),
(6, 'adhi@gmail.com', 'li', 'gaya@gmail.com', 'user', '2019-10-04 14:46:16.78475', 'Appointment', 'Accepted', 0),
(7, 'adhi@gmail.com', 'li', 'gaya@gmail.com', 'user', '2019-10-04 14:46:22.25652', 'Appointment', 'Rejected', 0),
(8, 'adhi@gmail.com', 'li', 'gaya@gmail.com', 'user', '2019-10-04 14:46:34.80156', 'Appointment', 'Accepted', 0),
(9, 'adhi@gmail.com', 'li', 'gaya@gmail.com', 'user', '2019-10-04 14:49:23.69763', 'Appointment', 'Accepted', 0),
(10, 'adhi@gmail.com', 'li', 'gaya@gmail.com', 'user', '2019-10-04 14:49:27.80517', 'Appointment', 'Rejected', 0),
(11, 'adhi@gmail.com', 'li', 'anu@gmail.com', 'user', '2019-10-04 14:51:18.29719', 'Appointment', 'Accepted', 0),
(12, 'adhi@gmail.com', 'li', 'anu@gmail.com', 'user', '2019-10-04 14:52:38.37942', 'Appointment', 'Rejected', 0),
(13, 'adhi@gmail.com', 'li', 'anu@gmail.com', 'user', '2019-10-04 14:55:06.81227', 'Appointment', 'Accepted', 0),
(14, 'adhi@gmail.com', 'li', 'gaya@gmail.com', 'user', '2019-10-04 14:55:11.37660', 'Appointment', 'Rejected', 0),
(15, 'adhi@gmail.com', 'li', 'anu@gmail.com', 'user', '2019-10-04 14:55:15.86598', 'Appointment', 'Accepted', 0),
(16, 'sachi@gmail.com', 'Doctor', 'soman@gmail.com', 'user', '2019-10-12 11:34:50.69314', 'Appointment', 'Accepted', 1),
(17, 'sachi@gmail.com', 'Doctor', 'ajith@gmail.com', 'user', '2019-10-12 11:46:14.62318', 'Appointment', 'Accepted', 0),
(18, 'sachi@gmail.com', 'Doctor', 'sreeram@gmail.com', 'user', '2019-10-13 00:04:14.77754', 'Appointment', 'Accepted', 1),
(19, 'rohi@gmail.com', 'Doctor', 'krishnan@gmail.com', 'user', '2019-10-13 13:45:31.77686', 'Appointment', 'Accepted', 1),
(20, 'adhi@gmail.com', 'li', 'haridevan@gmail.com', 'user', '2019-10-13 16:33:17.98656', 'Appointment', 'Rejected', 1),
(21, 'adhi@gmail.com', 'li', 'haridevan@gmail.com', 'user', '2019-10-17 11:34:29.87946', 'Appointment', 'Accepted', 0),
(22, 'adhi@gmail.com', 'li', 'ramesh@gmail.com', 'user', '2019-10-17 23:00:43.53371', 'Appointment', 'Accepted', 0),
(23, 'adhi@gmail.com', 'li', 'gn@gmail.com', 'user', '2019-10-17 23:01:52.34325', 'Appointment', 'Rejected', 0),
(24, 'adhi@gmail.com', 'li', 'gn@gmail.com', 'user', '2019-10-17 23:03:39.05932', 'Appointment', 'Accepted', 0),
(25, 'mathew@gmail.com', 'Doctor', 'krishnan@gmail.com', 'user', '2019-10-27 13:42:36.82686', 'Appointment', 'Accepted', 0),
(26, 'mathew@gmail.com', 'Doctor', 'karthu@gmail.com', 'user', '2019-10-28 16:35:19.97151', 'Appointment', 'Accepted', 0),
(27, 'mathew@gmail.com', 'Doctor', 'sethu@gmail.com', 'user', '2019-10-31 14:29:24.38242', 'Appointment', 'Accepted', 0),
(28, 'mathew@gmail.com', 'Doctor', 'a2@gmail.com', 'user', '2019-12-07 12:23:19.93507', 'Appointment', 'Accepted', 1),
(29, 'mathew@gmail.com', 'Doctor', 'sreeni@gmail.com', 'user', '2019-12-08 09:05:36.75779', 'Appointment', 'Accepted', 1),
(30, 'sidharth@gmail.com', 'Doctor', 'krishnan1@gmail.com', 'user', '2019-12-09 13:52:47.24807', 'Appointment', 'Accepted', 1),
(31, 'karthik@gmail.com', 'li', 'krishnan1@gmail.com', 'user', '2019-12-09 14:03:36.37068', 'Appointment', 'Accepted', 0),
(32, 'sidharth@gmail.com', 'Doctor', 'swathyraj919@gmail.com', 'user', '2019-12-09 22:12:08.25900', 'Appointment', 'Accepted', 0),
(33, 'mh@gmail.com', 'Doctor', 'krishnan1@gmail.com', 'user', '2019-12-11 09:58:14.68673', 'Appointment', 'Accepted', 0),
(34, 'karthik@gmail.com', 'li', 'krishnan1@gmail.com', 'user', '2019-12-11 10:41:45.40130', 'Appointment', 'Accepted', 0);



CREATE TABLE `tbl_scheme` (
  `schemeid` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `name` text NOT NULL,
  `details` text NOT NULL
) ;



INSERT INTO `tbl_scheme` (`schemeid`, `type`, `name`, `details`) VALUES
(1, 'Animal Breeding', 'National Programme for Bovine Breeding and Dairy Development,National Dairy Plan1', 'The undersigned is directed to convey the Administrative Approval towards the implementation of the programme, with an allocation of Rs 309.00 crore. Again the National Programme for Bovine breeding and Dairy Development (NPBBDD) has two components namely NPBB (National Programme for Bovine Breeding) and NPDD (National Programme for Dairy Development).\r\nFor further details visit:Dairy Knowledge Portal');


CREATE TABLE `tbl_species` (
  `spid` int(11) NOT NULL,
  `spname` varchar(25) NOT NULL,
  `pdisease` varchar(50) NOT NULL,
  `hdisease` varchar(50) NOT NULL,
  `food` varchar(50) NOT NULL,
  `symptoms` varchar(100) NOT NULL,
  `medicine` varchar(50) NOT NULL
) ;


INSERT INTO `tbl_species` (`spid`, `spname`, `pdisease`, `hdisease`, `food`, `symptoms`, `medicine`) VALUES
(11, 'cat', 'Rabies,Ringworm,Toxoplasmosis', 'Ring,Roundworm etc', 'Carrot,Bread,Fish,cookies', 'Weight loss,Bad breath', 'FVRCP'),
(12, 'Dog', 'canine,Heartworm,Rabies,Lyme disease,kennel cough,', 'Campylobacteriosis,Dog Tapeworm,Roundworm,Brucello', 'Pedigree', 'Painful Abdomen,Swollen Anorexia,Bad Breath,Dandru', '10-12 weeks:DHPP, 12-24 weeks:Rabies, 14-16 weeks:'),
(13, 'parrot', 'WNV(West Nile Virus)', 'Psittacosis', 'fresh vegetables,fruits,pellets or seeds', 'discharge from the eyes or nose,weight loss,discol', 'polyomavirus vaccine'),
(14, 'birds', 'salmonella,aspergillosis,avian pox', 'psittacosis,fever,headache', 'leaves,fruits,seeds,vegetables', 'poor feathering,greasy feather,diarrhea,swollen feet', 'polyomavirus vaccine'),
(15, 'squirrel', 'tularemia,typhus,plague,ringworm etc', 'some infections can cause', 'walnut,almonds,cashews,fruits', 'unexpected behavior,', 'Rabies vaccine'),
(16, 'goat', 'Caprine Arthritis Encephalitis(CAE),Caseous Lympha', 'ringworm,Q fever,chlamydiosis,salmonellosis,lister', 'hay,grass,fruits,vegetables', 'unusual vocalization,swollen midsection,posture,shivering,dull coat', 'CDT');



CREATE TABLE `tbl_state` (
  `stateid` int(11) NOT NULL,
  `statename` varchar(30) NOT NULL
) ;


INSERT INTO `tbl_state` (`stateid`, `statename`) VALUES
(1, 'kerala');



CREATE TABLE `tbl_userpetdetails` (
  `pid` int(11) NOT NULL PRIMARY KEY,
  `email` varchar(25) NOT NULL,
  `pname` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `breed` varchar(25) NOT NULL,
  `other` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `dateofreg` varchar(35) NOT NULL,
  `age` int(11) NOT NULL,
  `weekmonth` varchar(35) NOT NULL,
  `description` varchar(25) NOT NULL,
  `photo` varchar(30) NOT NULL
) ;



INSERT INTO `tbl_userpetdetails` (`pid`, `email`, `pname`, `name`, `breed`, `other`, `gender`, `dateofreg`, `age`, `weekmonth`, `description`, `photo`) VALUES
(1, 'swathyraj919@gmail.com', 'chikki', '11', '11', '', 'male', '2019-12-08', 8, 'weeks', 'white color', 'g2.jpg'),
(2, 'swathyraj919@gmail.com', 'kutti', '12', '13', '', 'female', '2019-12-08', 6, 'weeks', 'ash colored', 'c3.jpg');



CREATE TABLE `tbl_userreg` (
  `name` varchar(25) NOT NULL,
  `userid` int(11) NOT NULL PRIMARY KEY,
  `hname` varchar(25) NOT NULL,
  `state` varchar(20) NOT NULL,
  `district` varchar(25) NOT NULL,
  `place` varchar(25) NOT NULL,
  `pincode` int(6) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pswd` varchar(30) NOT NULL
) ;


INSERT INTO `tbl_userreg` (`name`, `userid`, `hname`, `state`, `district`, `place`, `pincode`, `dob`, `phone`, `email`, `pswd`) VALUES
('swathy raj', 54, 'pathikkattil', '1', '1', 'vannappuram', 685607, '1995-03-02', '9946382326', 'swathyraj919@gmail.com', ''),
('krishnan', 56, 'krishnapurackal', '1', '3', 'pala', 686574, '2000-06-15', '9812764467', 'krishnan1@gmail.com', ''),
('sreedhevi kumar', 57, 'parayil', '1', '3', 'ettumanoor', 686562, '1990-05-23', '8989765435', 'sreedhevi@gmail.com', '');



CREATE TABLE `tbl_vacc` (
  `vid` int(11) NOT NULL PRIMARY KEY,
  `sname` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `weekmonth` varchar(45) NOT NULL,
  `vacc` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL
);



INSERT INTO `tbl_vacc` (`vid`, `sname`, `age`, `weekmonth`, `vacc`, `description`, `email`) VALUES
(2, '11', 6, 'weeks', 'Feline distemper,Feline rhinotracheitis,Feline calcivirus', 'Also called FVRCP', ''),
(3, '11', 10, 'weeks', 'Feline distemper,Feline rhinotracheitis,Feline calcivirus', 'Also called FVRCP', ''),
(4, '11', 12, 'weeks', 'Rabies', 'Rabies is transmitted through a bite from an infected animal.This vaccination is a prevention from t', ''),
(5, '12', 6, 'weeks', 'Distemper,measles,parainfluenca', 'This Vaccination should be done in 6to 8 weeks', ''),
(6, '12', 10, 'weeks', 'DHPP', 'this vaccination should be done during 10 to 12 weeks', ''),
(7, '12', 12, 'weeks', 'rabies', 'this vaccination period from 12 to 24 weeks', ''),
(8, '12', 12, 'months', 'rabies,DHPP', '12 to 16 months is the vaccination period', ''),
(9, '13', 2, 'weeks', 'Polymavirus vaccines', 'Every two weeks parrott should be vaccinated.', ''),
(10, '13', 4, 'weeks', 'Polymovirus Vaccines', 'Repeat the vaccine in every 4 weeks', ''),
(11, '14', 3, 'weeks', 'Polymavirus vaccines', 'This virus is one of the most infectious and misunderstood viral infections affected to birds.', ''),
(12, '16', 12, 'months', 'C.C.C.P', 'vaccination should be done in once in a year ', ''),
(13, '16', 15, 'weeks', 'F.M.D', 'This vaccination should be done intwice in a year', '');


ALTER TABLE `tbl_appointment`
  ADD PRIMARY KEY (`apid`);


ALTER TABLE `tbl_attenderreg`
  ADD PRIMARY KEY (`attenderid`);


ALTER TABLE `tbl_breed`
  ADD PRIMARY KEY (`breedid`);

ALTER TABLE `tbl_chat`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tbl_clinicreg`
  ADD PRIMARY KEY (`Clinic_id`);


ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`cid`);


ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`cmpid`);


ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`districtid`);


ALTER TABLE `tbl_docreg`
  ADD PRIMARY KEY (`docid`);


ALTER TABLE `tbl_farmappointment`
  ADD PRIMARY KEY (`fpid`);


ALTER TABLE `tbl_farmreg`
  ADD PRIMARY KEY (`farmid`);


ALTER TABLE `tbl_liinfo`
  ADD PRIMARY KEY (`info_id`);


ALTER TABLE `tbl_lireg`
  ADD PRIMARY KEY (`liid`);


ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`nid`);


ALTER TABLE `tbl_scheme`
  ADD PRIMARY KEY (`schemeid`);


ALTER TABLE `tbl_species`
  ADD PRIMARY KEY (`spid`);


ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`stateid`);


ALTER TABLE `tbl_userpetdetails`
  ADD PRIMARY KEY (`pid`);


ALTER TABLE `tbl_userreg`
  ADD PRIMARY KEY (`userid`);


ALTER TABLE `tbl_vacc`
  ADD PRIMARY KEY (`vid`);
  
 
 ALTER TABLE `tbl_animal` 
	ADD PRIMARY KEY (`animalid`);



ALTER TABLE `tbl_animal`
  MODIFY `animalid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


ALTER TABLE `tbl_appointment`
  MODIFY `apid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;


ALTER TABLE `tbl_attenderreg`
  MODIFY `attenderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `tbl_breed`
  MODIFY `breedid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;


ALTER TABLE `tbl_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;


ALTER TABLE `tbl_clinicreg`
  MODIFY `Clinic_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;


ALTER TABLE `tbl_comment`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `tbl_complaint`
  MODIFY `cmpid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;


ALTER TABLE `tbl_district`
  MODIFY `districtid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `tbl_docreg`
  MODIFY `docid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `tbl_farmappointment`
  MODIFY `fpid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `tbl_farmreg`
  MODIFY `farmid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `tbl_liinfo`
  MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `tbl_lireg`
  MODIFY `liid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;


ALTER TABLE `tbl_notification`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;


ALTER TABLE `tbl_scheme`
  MODIFY `schemeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `tbl_species`
  MODIFY `spid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;


ALTER TABLE `tbl_userpetdetails`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `tbl_userreg`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

ALTER TABLE `tbl_vacc`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

