import 'package:flutter/cupertino.dart';

class details {
  final String videoID;
  final String title;
  final String description;

  const details(@required this.videoID, @required this.title,@ required this.description);
}

Map<String,details> det = {
  'Drishyam 2' : drishyam2,
  'Trance' : trance,
  'Bangalore Days' : bangaloredays,
  'Hridayam' : hridiyam,
  'Bahubali' : bahubali,
  'Jai Bhim' : jaybhim,
  'Master' : master,
  'Sairat' : sairat,
  'Dharmveer' : dharmaveer,
  'Farzand' : farzand,
  'Mahanati' : mahanati,
  'Natsamrat' : natsamrat,
  'pushpa' : pushpa,
  'RRR' : rrr,
  'Helen' : helen,
  'Sairat' : sairat,
  'Katyar Kaljat Ghusal' : katyar_kaljat_ghusal,
  'Kannum Kannum Kollaiyadithaal' : kannum_kannum_kollaiyadithaal,
  'Vikram Vedha' : vikram_vedha,
  'Saani Kaayidham' : saani_kaayidham,
  'Narappa' : narappa,
};

//Malyalam
details drishyam2 = details("0f-nd1uGsjQ", "Dhrisyam 2", "Drishyam 2 Official Trailer 2020,\nA gripping tale of an investigation and a family which is threatened by it. Will Georgekutty be able to protect his family this time?\nHere is the resumption - Drishyam 2\n Starring: Mohanlal, Meena, Siddique, Asha Sharath, Murali Gopy, Ansiba, Esther, Saikumar\n");
details trance = details("uSudz8zb2I8", "Trance", "Presenting the Official Trailer of #TRANCE, a Malayalam movie starring Fahadh Faasil, Nazriya Nazim, Gautham Vasudev Menon, Soubin Shahir, Vinayakan, Chemban Vinod Jose, Dileesh Pothan, Sreenath Bhasi among others. Directed by Anwar Rasheed, Cinematography by Amal Neerad, Sound Design by Resul Pookutty, Written by Vincent Vadakkan, Music by Jackson Vijayan, Background Score by Sushin Shyam and Jackson Vijayan, Edited by Praveen Prabhakar, Lyrics by Vinayak Sasikumar, Trailer Edited by Vivek Harshan, Trailer Background Score by Gopi Sunder, Produced by Anwar Rasheed under the banner of Anwar Rasheed Entertainment. Muzik247 is the music label. The movie released on February 20th.");
details bangaloredays = details("uVpHL5g4buY", "Banglore Days", "Anwar Rasheed Entertainment in association with Weekend Blockbusters presents Bangalore Days - A fun roller coaster ride about three young people who reach Bangalore to dream, discover & explore! \n\nWriter & Director - Anjali Menon\nProducers - Anwar Rasheed & Sophia Paul\nCinematographer - Sameer Thahir\nMusic Director - Gopi Sunder\n\nTrailer Music - Govind Menon\n");
details hridiyam = details("C2FU7fj0IQc", "Hridayam", "Presenting the official trailer of Hridayam starring Pranav Mohanlal, Darshana Rajendran, Kalyani Priyadarshan, Aju Varghese, Vijayaraghavan, and Johny Antony. Director: Vineeth Sreenivasan\n\nProducer: Visakh Subramaniam\n\nCast: Pranav Mohanlal, Kalyani Priyadarshan, Darshana Rajendran, Aju Varghese,\n\nVijayaraghavan, and Johny Antony\n\nMusic: Hesham Abdul Wahab \n\nDOP: Viswajith Odukkathil \n\nEditor: Ranjan Abraham\n\n");
details helen = details("Z12zJCpj95w","Helen","HELEN , an upcoming Malayalam Thriller produced by Vineeth Sreenivasan under the banner of Habit Of Life. Directed by Mathukutty Xavier, Written by Alfred Kurian Joseph, Noble Babu Thomas and Mathukutty Xavier, Music by Shaan Rahman, Cinematography by Anend C Chandran, Edited by Shameer Muhammed. The movie stars Anna Ben, Lal, Noble Babu Thomas, Aju Varghese, Rony David Raj and Binu Pappu among others. Distributed by Funtastic Films. Muzik247 is the official music label.\nHELEN - Sometimes Even To Live Is An Act Of Courage");

//Marathi
details sairat = details("wMrMKnoYWwA","Sairat","Sairat Official Trailer (2016) Nagraj Popatrao Manjule\n\nA MUSICAL BY\nAJAY – ATUL\n\nOfficial selection for 66th Berlin International Film Festival\nSpecial Mention 63rd National Film Awards - Rinku Rajguru\n\nSAIRAT (Marathi film)\nHighly awaited film by Nagraj Manjule after FANDRY.\nExperience the Cinematic capsule!\nTheatrical release on 29th April 2016.\nA FILM BY\nNAGRAJ POPATRAO MANJULE");
details natsamrat = details("DCXDyIsPEN8", "Natsamrat", 'Presenting to you the official trailer of the most awaited film "Natsamrat - Asa Nat Hone Nahi" (2016). Nana Patekar Plays a lead role in the movie. Directed by Mahesh Manjarekar.\n\nMovie : "Natsamrat - Asa Nat Hone Nahi" (2016)\n\nGenre : Drama\n\nCast : Nana Patekar, Vikaram Gokhale, Medha Manjarekar, Mrunmayee Deshpande and Sunil Barve\nDirected by : Mahesh Manjarekar\nProduced by : Nana Patekar, Vishwas Joshi.Music by : Ajit Parab\nMusic On : Video Palace\nIn Cinemas : 1st January 2016');
details katyar_kaljat_ghusal = details("1iTazEogwiY","Katyar Kaljat Ghusal","Presenting you with the Official Trailer of Subodh Bhave's epic musical drama 'Katyar Kaljat Ghusali', Starring Shankar Mahadevan, Sachin Pilgaonkar, Subodh Bhave, Amruta Khanvilkar, Mrunmayee Deshpande & Sakshi Tanwar.");
details farzand = details("n5tcTFTUDH8", "Farzand", 'Presenting you Official Trailer of Most awaited historical movie 2018 "फर्जंद  Farzand"\nstarring Chinmay Mandlekar, Mrinal Kulkarni, Ankit Mohan, Prasad Oak,\nMrunmayee Deshpande, Neha Joshi, Sameer Dharmadhikari, Nikhil Raut and others.\nProducer by Anirban Sarkar. Directed by Digpal Lanjekar. Releasing on 1st June 2018.');
details dharmaveer = details("jSOWLmB2Zqw", "Dharmaveer", "घेऊन येत आहोत अशा लोककारणी व्यक्तिमत्त्वाची कथा, ज्याच्यासाठी'माणूस जपणं हाच श्रेष्ठ धर्म होता'!\n\nयेत आहे एका धगधगत्या अग्निकुंडाची चरित्रागाथा, 'धर्मवीर, मुक्काम पोष्ट ठाणे' मोठ्या पडद्यावर 13 मे 2022 पासून.\n\nWritten & Directed by Pravin Vitthal Tarde\nPresented by Zee Studios \nProduced by Mangesh Desai & Zee Studios\nMusic on Zee Music Company");

//Tamil
details master = details("1_iUFT3nWHk", "Master", "Presenting Master Official Trailer 2021,\nWritten & Directed by Lokesh Kanagaraj\nStarring Thalapathy Vijay, Vijay Sethupathi, Malavika Mohanan, Andrea Jeremiah, Shanthanu\nBhagyaraj, Arjun Das");
details jaybhim = details("pVOd8HAQQZM", "Jay Bhim", "Jai Bhim Official Tamil Teaser\nStarring Suriya, Prakash Raj, Ramesh, Rajisha Vijayan, Manikandan and Lijo mol Jose\nWritten & Directed by Tha.Se. Gnanave\nProduced by Jyotika & Suriya\n\nWorld Premiere Day - 2nd November 2021,  exclusive release on Amazon Prime Video\n\nMovie Credits:\nWritten & Directed by Tha.Se. Gnanavel\nMusic - Sean Roldan \nCinematography - SR Kathir ISC\nEditor - Philomin Raj\nProduction Design - K. Kathir \nAction – Anbariv\nAdditional Screenplay - Kiruthika B");
details kannum_kannum_kollaiyadithaal = details("hPybzXeEWSI","Kannum Kannum Kollaiyadithaal","The crazy journey of love, laughter and lots of fun has just begun! \n#KKK trailer out now!\n#KannumKannumKollaiyadithaal #OfficialTrailer \nStarring:  DULQUER SALMAAN | RITU VARMA | RAKSHAN | NIRANJANI AHATHIAN | GAUTHAM VASUDEV MENON /nDirector : DESINGH PERIYASAMY\nProducer : VIACOM18 STUDIOS & ANTO JOSEPH FILM COMPANY\nDOP : K.M.BHASKARAN\nMusic : MASALA COFFEE\nBackground score : HARSHA VARDHAN RAMESHWAR\nEditor : PRAVEEN ANTONY\nArt : R.K.UMASHANKAR");
details vikram_vedha = details("4AYAcFcFu84","Vikram Vedha","#VikramVedha is a Indian Tamil action crime thriller film written and directed by Pushkar and Gayatri, starring #RMadhavan and #VijaySethupathi in the lead roles. #ShraddhaSrinath, #Varalaxmi Sarathkumar and #Kathir also play supporting roles.");
details saani_kaayidham = details("Ri_4HlFQHU4","Saani Kaayidham","Saani Kaayidham Official Tamil Trailer\nStarring: Keerthy Suresh, Selvaraghavan and others\nDirected by: Arun Matheswaran\nRelease date - May 6, 2022 on Amazon Prime Video\nMovie Credits:\nDirector: Arun Matheswaran\nProduced by - Screen Scene Media Entertainment Pvt. Ltd Music: Sam CS\nDOP: Yamini Yagnamurthy\nEditor: Nagooran\nProduction Designer: T. Ramu Thangaraj\nStunts: Dhilip Subbarayan");

//Telegu
details bahubali = details("sOEg_YZQsTI", "Bahubali", "Screenplay & Direction: S.S. Rajamouli\nStory: V. Vijayendra Prasad\nDirector Of\nPhotography: K. K Senthil Kumar\nProduction Designer: Sabu Cyril\nMusic Composer: M. M. Kreem\nVFX Supervision: V. Srinivas Mohan\nSound Design: P. M. Satheesh\nStunt Choreography: Peter Hein\nAdditional Stunt: King Solomon, Lee Whittakar, Kaloyan Vodenicharow\nDance Choreographers: Prem Rakshit, Shankar, Dinesh Kumar, Jani\nEditor: Kotagiri Venkateswara Rao\nCostume Designer: Rama Rajamouli, Prashanti Tripirneni");
details mahanati = details('OrnYMmWBuV4', 'Mahanati', "Here's the #Mahanati Official Teaser.\nThe greatest story ever told about the greatest actress that ever lived.   \n\nIt is such a privilege to make a biopic of the one and only Mahanati Savitri, an iconic actress we were ever blessed with.\n\n#Mahanati is an ode to the great soul that etched a special place in all our hearts.");
details pushpa = details("Q1NKMPhP8PY", "Pushpa", "Pushpa Official Trailer on Mythri Movie Makers. Written and Directed by Sukumar. Produced by Naveen Yerneni and Y. Ravi Shankar of Mythri Movie Makers in association with Muttamsetty Media, the film stars Allu Arjun, Fahadh Faasil and Rashmika Mandanna, Dhanunjay, Rao Ramesh,Suneel, Anasuya Bharadwaj & Ajay Ghosh. The film's music is composed by Devi Sri Prasad, with cinematography and editing were performed by Miroslaw Kuba Brozek and Karthika Srinivas respectively. The film is scheduled to release on 17 December 2021, in Telugu along with dubbed versions in Malayalam, Tamil, Hindi and Kannada languages.");
details rrr = details("NgBoMJy386M", "RRR", 'From Indian Filmmaker SS Rajamouli (Director of Baahubali) comes India’s Biggest Action Drama #RRRMovie, in theatres March 25th, 2022\n\nMovie: RRR\nCast: NTR, Ram Charan, Ajay Devgn, Alia Bhatt, Olivia Morris, Samuthirakani, Alison Doody, Ray Stevenson\nScreenplay & Direction: S.S. Rajamouli \nPresented by: D. Parvathi\nProducer:DVV Danayya\nBanner: DVV Entertainment\nStory: V. Vijayendra Prasad\nDOP: K.K. Senthil Kumar\nProduction Designer: Sabu Cyril\nMusic Composer: M.M. Keeravaani\nVFX Supervision: V Srinivas Mohan\nEditor: Sreekar Prasad\nCostume\nDesigner: Rama Rajamouli\nLine Producer - SS Karthikeya\nPost Production Line Producer - MM Srivalli\nTelugu Dialogues: Sai Madhav Burra');
details narappa = details("GNJ-kT6gFhQ","Narappa","Narrapa Official Trailer 2021,\nDirected by Sreekanth Addala\nProduced by D. Suresh Babu, Kalaippuli S Thanu\nWritten by Vetri Maaran\nStarring Venkatesh, Priyamani, Rao Ramesh, Nassar, Karthik Rathnam, Ammu Abhirami, Rajeev Kanakala");

List<details> Malyalam = [drishyam2,trance,bangaloredays,hridiyam,helen];
List<details> Marathi = [sairat,natsamrat,katyar_kaljat_ghusal,farzand,dharmaveer];
List<details> Tamil = [master,jaybhim,kannum_kannum_kollaiyadithaal,vikram_vedha,saani_kaayidham];
List<details> Telegu = [bahubali,mahanati,pushpa,rrr,narappa];

Map<String,List<details>> reg_wise = {
  'Malayalam' : Malyalam,
  'Marathi' : Marathi,
  'Tamil' : Tamil,
  'Telugu' : Telegu
};
