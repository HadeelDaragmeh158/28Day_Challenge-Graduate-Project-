-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2020 at 03:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `28_days_challenge_2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `challenges`
--

CREATE TABLE `challenges` (
  `ID` int(20) NOT NULL,
  `Title` varchar(250) COLLATE utf8_bin NOT NULL,
  `Description` varchar(250) COLLATE utf8_bin NOT NULL,
  `Picture` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `challenges`
--

INSERT INTO `challenges` (`ID`, `Title`, `Description`, `Picture`) VALUES
(4, 'Meditate', 'Meditation is a practice where an individual uses a technique – such as mindfulness, or focusing the mind on a particular object, thought, or activity – to train attention and awareness, and achieve a mentally clear and emotionally calm and stable.', 'Challeneges_Pictures/Meditate.png'),
(6, 'No Junk Food', 'Are you gaining extra weight? Are you feeling tired all the time? This can be due to your sedentary lifestyle and unhealthy diet. If you want to feel better, boost your energy and slim down, you should change your eating habits.', 'Challeneges_Pictures/No Junk Food.png'),
(7, 'No Smoking', 'If you want to stop smoking, you can make small changes to your lifestyle that may help you resist the temptations.', 'Challeneges_Pictures/No Smoking.png'),
(8, 'No Social Media', 'There is no denying that social media has become a huge part of modern life. Apps like Facebook, Instagram, and Twitter help us stay connected with loved ones, catch up on news, and discover both beautiful destinations and inspiring people.', 'Challeneges_Pictures/No Social Media.png'),
(9, 'Self Care', 'what people do for themselves to establish and maintain health, and to prevent and deal with illness. It is a broad concept encompassing hygiene (general and personal), nutrition (type and quality of food eaten), lifestyle.', 'Challeneges_Pictures/Self Care.png'),
(10, 'Study', 'Study effectively ,Most students start out each new semester of school with high expectations. They envision themselves being successful in their studies and school work but they fail to put together a realistic plan, or establish a routine.', 'Challeneges_Pictures/Study.png'),
(11, 'Wake Up Early', 'Improve your sleep quality, wake up and go to bed early.', 'Challeneges_Pictures/Wake Up Early.png'),
(12, 'Work Out', 'We hear a lot of excuses about why people cant start or maintain a fitness routine. I dont have access to a gym. I dont have enough time. I wouldnt know where to start. And I get it. Those are all very real concerns. Thats why we designed this 28day.', 'Challeneges_Pictures/Work Out.png');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `ID` int(20) NOT NULL,
  `C_ID` int(20) NOT NULL,
  `Title` varchar(250) COLLATE utf8_bin NOT NULL,
  `Description` varchar(250) COLLATE utf8_bin NOT NULL,
  `Type` varchar(250) COLLATE utf8_bin NOT NULL,
  `Add_Date_Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`ID`, `C_ID`, `Title`, `Description`, `Type`, `Add_Date_Time`) VALUES
(3, 4, 'You Can Do it !', 'Many smokers struggle with withdrawal and cravings when they quit, but there are ways to deal with these temporary challenges you can quit smoking with a little help. Make the Decision to Quit.', 'Motivation', '2020-12-27 12:09:23'),
(4, 10, 'Study', 'All our dreams can come true, if we have the courage to pursue them.', 'Motivation', '2020-12-12 18:04:59'),
(5, 12, 'Work out', 'Stay physically active with this home workout. Take your time every move counts', 'Reminder', '2020-12-12 18:05:41'),
(7, 6, 'No Junk Food', 'Hope you are eating healthy food !', 'Reminder', '2020-12-12 18:06:35'),
(8, 8, 'No Social Media', 'This challenge will make you realize how nice its to break away from the internet', 'Motivation', '2020-12-12 18:07:23'),
(9, 11, 'Dream', 'Every morning you have two choices: continue to sleep with your dreams, or wake up and chase them.', 'Motivation', '2020-12-20 17:01:19'),
(12, 4, 'Meditate', 'Try to remind yourself that the journey is important – not just the destination', 'Motivation', '2020-12-22 17:33:23'),
(13, 4, 'Meditate', 'Be present, be patient, be gentle, be kind…everything else will take care of itself.', 'Reminder', '2020-12-22 17:33:52'),
(14, 4, 'Meditate', 'We can not always change whats happening around us, but we can change what happens within us.', 'Reminder', '2020-12-22 17:34:29'),
(15, 4, 'Meditate', 'Meditation is less about knowing what to do and more about knowing what not to do.', 'Reminder', '2020-12-22 17:34:51'),
(16, 6, 'No Junk Food', 'Do not expect immediate results. Eating health is habit forming which can lead to long term results.', 'Reminder', '2020-12-22 17:36:06'),
(17, 6, 'No Junk Food', 'In the next 28 days, you will enjoy whole foods as you transform your junk food diet into a healthy one.', 'Reminder', '2020-12-22 17:36:34'),
(18, 6, 'No Junk Food', 'It is said (We are what we eat). So what do you want to be?', 'Reminder', '2020-12-22 17:37:11'),
(19, 6, 'No Junk Food', 'Eat less sugar, you’re sweet enough already', 'Motivation', '2020-12-22 17:37:27'),
(20, 6, 'No Junk Food', 'If we are not willing to settle for junk living, we certainly should not settle for junk food.', 'Motivation', '2020-12-22 17:38:21'),
(21, 8, 'No Social Media', 'Do more things that make you forget to check your phone ', 'Reminder', '2020-12-22 19:08:35'),
(22, 8, 'No Social Media', 'A private life is a happy life ', 'Reminder', '2020-12-22 19:08:59'),
(23, 8, 'No Social Media', 'The best moments of my life do not make it to social media ', 'Reminder', '2020-12-22 19:09:41'),
(24, 8, 'No Social Media', 'You do not have to post it to prove it ', 'Motivation', '2020-12-22 19:10:19'),
(25, 8, 'No Social Media', 'Not enough hours in the day? Stop doing things that do not matter ', 'Reminder', '2020-12-22 19:10:49'),
(26, 9, 'Self Care', 'So do yourself a favor, take a deep breath, give yourself a little hug', 'Reminder', '2020-12-22 19:39:26'),
(27, 9, 'Self Care', 'Self-care is not just for some people – everyone should make the time to take care of themselves', 'Motivation', '2020-12-22 19:40:00'),
(28, 9, 'Self Care', 'Take good care of yourself and it will help you take care of others.', 'Reminder', '2020-12-22 19:40:28'),
(29, 9, 'Self Care', 'It’s not selfish to love yourself, take care of yourself, and to make your happiness a priority. It is necessary', 'Motivation', '2020-12-22 19:41:23'),
(30, 9, 'Self Care', 'Caring for yourself is not self-indulgence, it is self-preservation, and that is an act of political warfare.', 'Motivation', '2020-12-22 19:42:12'),
(31, 11, 'Wakeup Early', 'But just think: you are so close to crazy productivity–to getting projects done while the rest of the world sleeps–with no interruptions or distractions.', 'Motivation', '2020-12-22 19:44:25'),
(32, 11, 'Wakeup Early', 'Morning is an important time of day, because how you spend your morning can often tell you what kind of day you are going to have. ― Lemony Snicket', 'Motivation', '2020-12-22 19:44:54'),
(33, 11, 'Wakeup Early', 'How we start our day determines how we create our life. Are you snoozing through your morning…snoozing through your life…and snoozing through your unlimited potential? ― Hal Elrod', 'Motivation', '2020-12-22 19:45:23'),
(34, 11, 'Wakeup Early', 'Today is new day , live it ', 'Reminder', '2020-12-22 19:46:35'),
(35, 11, 'Wakeup Early', 'Lose an hour in the morning, and you will be all day hunting for it.', 'Reminder', '2020-12-22 19:47:11'),
(36, 10, 'Study', 'One day, all your hard work will pay off.', 'Motivation', '2020-12-22 19:48:37'),
(37, 10, 'Study', ' It always seems impossible until it is done (Nelson Mandela)', 'Motivation', '2020-12-22 19:48:59'),
(38, 10, 'Study', 'If we wait until we are ready, we will be waiting for the rest of our lives.', 'Motivation', '2020-12-22 19:49:33'),
(39, 10, 'Study', 'Time for study !', 'Reminder', '2020-12-22 19:49:51'),
(40, 10, 'Study', ' Push yourself, because no one else is going to do it for you.', 'Reminder', '2020-12-22 19:50:08'),
(41, 12, 'Work out', 'Take your time every move counts.', 'Reminder', '2020-12-22 20:04:19'),
(42, 12, 'Work out', '-	The last three or four reps is what makes the muscle grow. This area of pain divides a champion from someone who is not a champion', 'Reminder', '2020-12-22 20:04:49'),
(43, 12, 'Work out', 'Action is the foundational key to all success', 'Motivation', '2020-12-22 20:05:15'),
(44, 12, 'Work out', 'Train insane or remain the same.', 'Motivation', '2020-12-22 20:05:41'),
(45, 7, 'No Smoking', 'Remember that better days are ahead,the discomforts are all temporary, so dig your heels in and go the distance. Your body and mind will thank you in the long run.', 'Reminder', '2020-12-27 12:30:04'),
(46, 7, 'No Smoking', '-Do not pretend smoking was not enjoyable – it was. Quitting can be like losing a dear old friend – and it’s okay to grieve the loss.', 'Reminder', '2020-12-27 12:27:26'),
(47, 7, 'No Smoking', 'It is a process: feel, and you will heal. So stick with the difficult feelings. You can quit smoking!', 'Reminder', '2020-12-22 20:40:24'),
(48, 7, 'No Smoking', 'Welcome to the wonderful world of nonsmokers. You can do it!', 'Motivation', '2020-12-22 20:40:41'),
(49, 7, 'No Smoking', 'You do not need cigarettes to be complete. All the happiness, comfort and peace you seek, is already inside you.', 'Motivation', '2020-12-22 20:41:43'),
(50, 7, 'No Smoking', 'There will never be a perfect moment to quit smoking. Do not wait for life to change, it won’t.', 'Motivation', '2020-12-22 20:42:19');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `ID` int(20) NOT NULL,
  `C_ID` int(20) NOT NULL,
  `Day_Number` int(20) NOT NULL,
  `Description` varchar(250) COLLATE utf8_bin NOT NULL,
  `Total_Points` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`ID`, `C_ID`, `Day_Number`, `Description`, `Total_Points`) VALUES
(1, 7, 1, 'Identify when you crave cigarettes\r\nA craving can last 5 minutes. Before you\r\ngive up, make a list of 5-minute\r\nstrategies. For example, you could leave\r\nthe work for minute, eat or go have some\r\n drink.\r\n', 10),
(30, 7, 2, 'Get moving A review of scientific studies have proven exercise, even a 5-minute walk or stretch, cuts cravings and may help your brain produce anti-craving chemicals.', 10),
(31, 7, 3, 'Make a list of reasons to quit :Keep reminding yourself why you made the decision to give up. Make a list of the reasons and read it when you need support.', 10),
(32, 7, 4, 'Get some stop smoking support: If friends or family members want to give up, too, suggest to them that you gave up together.', 10),
(33, 7, 5, 'Think positive : You might have tried to quit smoking before and not managed it, but dont let that put you off. ', 10),
(34, 7, 6, 'Give Yourself a Break: One reason people smoke is that the nicotine helps them relax. Once you quit, you will need new ways to unwind.There are many options. You can exercise to blow off steam, tune in to your favorite music', 10),
(63, 7, 7, 'Avoid triggers Dont set yourself up for a smoking relapse. If you usually smoked while you talked on the phone, for instance, keep a pen and paper nearby to occupy yourself with doodling rather than smoking.', 10),
(64, 7, 8, 'Get physical try squats, deep knee bends, pushups, running in place, or walking up and down a set of stairs. If physical activity does not interest you, try prayer, needlework.', 10),
(65, 7, 9, ' Remind yourself of the benefits Write down or say out loud the reasons you want to stop smoking and resist tobacco cravings. These might include: Feeling better, Getting healthier, Sparing your loved ones from secondhand smoke, Saving money', 10),
(73, 10, 1, 'Create flashcards and write all formula:  Write all the important notes in it. Also, write down all the formula on one page and go through them every day', 10),
(74, 10, 2, 'Listen to Pandora music:  Pandora music is relaxing and will help you concentrate better', 10),
(75, 10, 3, 'Listen to recorded lectures:  To save the time of reading the whole topic, listen to the recorded lectures', 10),
(76, 10, 4, 'Hand write your notes and highlight keywords.', 10),
(77, 10, 5, 'Review your notes before sleep', 10),
(78, 10, 6, 'Set a timer and solely focus on a single task', 10),
(79, 10, 7, 'Use Pomodoro:  Breaks are very important! Give yourself 5-10 minutes to break after every 25-30 minutes of studying. After three such breaks, take an hour break. This is known as the Pomodoro effect. It takes into account how long can the brain fu', 10),
(80, 10, 8, 'Study like you are teaching someone.', 10),
(81, 10, 9, 'Keep the room well lit:  Do not use just a table lamp. Instead, keep your room well lighted to avoid creating a cozy environment.', 10),
(82, 10, 10, 'Use YouTube only to understand concepts', 10),
(83, 10, 11, 'Use apps to block distracting sites:  Several social media sites might pose a threat to your concentration. Therefore, use apps that block such sites during your study hours.', 10),
(84, 10, 12, 'Move around during breaks:  You will feel drowsy if you keep sitting in one place. Move around and stretch during the breaks.', 10),
(85, 10, 13, 'Read out loud:  Apart from other advantages of reading loud as mentioned above, reading aloud helps you stay awake.', 10),
(86, 10, 14, 'Record your voice while reading', 10),
(87, 10, 15, 'Chew gum:  Chewing gum helps you stay awake. Moreover, chewing the same flavored gum while answering the paper can help you recollect what you studied', 10),
(88, 10, 16, 'Have a snack:  If you intend on staying awake for long hours, have a snack to restore energy. Also, you might feel hungry since you had a light meal at night.', 10),
(89, 10, 17, 'Wear comfortable clothing:  Wear comfortable clothes to focus all your attention on your studies and not get distracted by any ill-fitted or tight outfit.', 10),
(90, 10, 18, 'Summarize concepts', 10),
(91, 10, 19, 'Eat chocolates: Eat sweets 20 minutes before the start of your paper. Studies have shown students performed better than those who answered without eating sweets.', 10),
(92, 10, 20, 'Not only does group study help you explain what you learned and thus be thorough with the topic, but not it can also help you understand better as your friends will be teaching you.', 10),
(93, 10, 21, 'Meditate:  Once in the examination hall, relax and meditate. Breathe in and breathe out. This helps with reducing the exam stress. There is nothing more powerful than a calm mind.', 10),
(94, 10, 22, 'Stay hydrated:  One of the most important studying tips as pointed out earlier, stay hydrated! Drink as much as you can.', 10),
(95, 10, 23, 'Walk before the studying: Walk before the study as it energizes certain parts of your brain. Exercise will boost your memory which can improve your performance to a large extent.', 10),
(96, 10, 24, 'Review what you learnt today/this week.', 10),
(97, 10, 25, 'Use mind maps to organize information', 10),
(98, 10, 26, 'Choose a quite study place without distraction', 10),
(99, 10, 27, 'Take a Coffee Nap ', 10),
(100, 10, 28, 'Test Yourself With Mock Exams\r\n\r\n', 10),
(101, 11, 1, 'GET UP JUST ONE MINUTE EARLIER (EACH DAY) Setting your alarm earlier does not always mean you will rise earlier. If you find yourself constantly hitting (snooze) until your regular wake-up time, your body probably needs time to adjust.', 10),
(102, 11, 2, 'Put your phone away so in the next morning you have to get out of bed to turn the alarm off', 10),
(103, 11, 3, 'Turn off all of your screen 1 hour before bed to get your brain ready to sleep', 10),
(104, 11, 4, 'Reward yourself with tasty breakfast so you have more motivation to wake up early.', 10),
(107, 11, 5, 'Put your alarm clock across the room so you have to get up to turn it off.', 10),
(108, 11, 6, 'Set your coffee on a timer so it’s ready when you wake up.', 10),
(109, 11, 7, 'Put out a warm robe before bed so you can easily access it when you get out of bed.', 10),
(111, 11, 8, 'Shower at night ,a hot shower or bath will help you to relax before bed', 10),
(113, 11, 9, 'GIVE YOURSELF AN IRRESISTIBLE REASON TO WAKE UP EARLY AND WRITE IT\r\n', 10),
(114, 11, 10, 'After dinner put your cozy pajamas on,journal,read a book and prepare to relax and let your mind unwind', 10),
(115, 11, 11, 'Try to wake up at the same time every day, consistency is the key ', 10),
(116, 11, 12, 'Let the sunshine in! Studies show that exposure to bright, white light in the morning can increase alertness. Sunlight is great, simply open your bedroom curtains', 10),
(117, 11, 13, 'Meditate  Starting your day with a daily wake-up meditation can help set the stage for a successful day.', 10),
(118, 11, 14, 'Drink lots of water after you wake up,you\'re not going to feel too tired throughout the day.', 10),
(119, 11, 15, 'Make your bed We are all guilty of not making the bed some mornings (OK, fine, most mornings). But taking a few minutes to make your bed gets you up and moving in the morning rather than crawling back into bed.', 10),
(120, 11, 16, 'Pump up the music Turning on your fave tunes will start your day off with an extra pep in your step. Music makes morning tasks more enjoyable and can boost your mood.', 10),
(121, 11, 17, 'Have a quick morning workout/run, this will help you feel energized during the day and sleepy when you should be going to bed', 10),
(122, 11, 18, 'Stretch A morning stretch sesh is a great way to get your body moving and your blood flowing! In addition to easing those tight muscles, stretching has many other benefits', 10),
(123, 11, 19, ' Plan Your Mornings with Excruciating Detail\r\n', 10),
(124, 11, 20, 'Get out of those PJs A lazy pajama day can be AH-mazing. But the COVID-19 world we’re living in can make basically every day a pajama day, which can throw off your wakeup.', 10),
(125, 11, 21, 'Take a cold shower Cold water first thing in the morning may not sound pleasant, but it is actually a refreshing way to start the day. Research has shown that immersing your body in cold water can help increase alertness through physiological changes', 10),
(126, 11, 22, 'Splash your face with cold water Simply tossing a little ice-cold water on your face first thing can wake you up in a splash!', 10),
(127, 11, 23, 'H2O before C-O-C Many of us can not function before that first cup of coffee, but you are doing your body a disservice by jumping directly onto the Caffeine Express. Instead, start your day with a refreshing glass of water.', 10),
(128, 11, 24, 'Enjoy a good-for-you breakfast While unhealthy foods can make you feel lethargic and unmotivated, healthy foods can help increase your energy and improve your sleep quality.', 10),
(129, 11, 25, 'Stress out Ok, this is not the most fun way to wake yourself up, but it works. Read a stressful email, or think about everything you have to get done for the day. Just say no to the snooze button.\r\n', 10),
(130, 11, 26, 'Keep the same schedule on weekends.\r\n', 10),
(131, 11, 27, 'Set a digital curfew.', 10),
(132, 11, 28, 'Find your motivation.\r\n', 10),
(133, 4, 1, 'Go outdoors and listen to the sounds of the birds', 10),
(134, 4, 2, 'Listen to the trees as the breezes rustle the leaves', 10),
(135, 4, 3, 'Look at the many different shades of green that emerge from trees', 10),
(136, 4, 4, 'Watch the sunlight filter through trees in a wooded area', 10),
(137, 4, 5, 'Practice walking meditation', 10),
(138, 4, 6, 'Watch the sun set today ', 10),
(139, 4, 7, 'Take a mindful walk early in the morning', 10),
(140, 4, 8, 'Practice meditation with music', 10),
(141, 4, 9, 'Plant a garden', 10),
(142, 4, 10, 'Pull weeds from the garden', 10),
(143, 4, 11, 'Watch as what you plant in your garden grows', 10),
(146, 4, 12, 'Hang the laundry outdoors on a clothes line', 10),
(147, 4, 13, 'Hike in a state park', 10),
(148, 4, 14, 'Practice yoga outdoors', 10),
(149, 4, 15, 'Read and reflect. Many people report that they benefit from reading poems or sacred texts, and taking a few moments to quietly reflect on their meaning.', 10),
(150, 4, 16, ' Try relaxed breathing. This technique involves deep, even-paced breathing using the diaphragm muscle to expand your lungs.', 10),
(151, 4, 17, 'Engage in prayer. Prayer is the best known and most widely practiced example of meditation.', 10),
(152, 4, 18, 'Enjoy the sunrise today ', 10),
(153, 4, 19, 'Play outdoors with children', 10),
(154, 4, 20, 'Have a picnic by yourself', 10),
(155, 4, 21, 'Have a picnic with a friend', 10),
(156, 4, 22, 'Focus your love and gratitude. In this type of meditation, you focus your attention on a sacred image or being, weaving feelings of love, compassion and gratitude into your thoughts.', 10),
(157, 4, 23, 'Practice QiGong outdoors', 10),
(158, 4, 24, 'Try mantra meditation. In this type of meditation, you silently repeat a calming word, thought or phrase to prevent distracting thoughts', 10),
(159, 4, 25, 'Practice mantra meditation to tune in to the stillness that resides within you', 10),
(160, 4, 26, 'Walk and meditate. Combining a walk with meditation is an efficient and healthy way to relax', 10),
(161, 4, 27, 'Meditate with your favorite relaxing music for 5 min at least.', 10),
(162, 4, 28, 'Your last task choose your favorite meditate type and practice it for 5 min .  ', 10),
(163, 6, 1, 'Try to include more vegetables in your meals today ( I am starting soft with you ) ', 20),
(164, 6, 2, 'Plan ahead Try to plan out each weeks meals on Sunday, or the day before your workweek starts. ', 20),
(165, 6, 3, '3.	Go grocery shopping for what you need. Then prepare large batches of easy foods like brown rice, beans, stir-fried or roasted vegetables, or cold salads.', 20),
(166, 6, 4, 'Shop the perimeter the perimeter of the grocery store typically includes the produce, dairy, meat, and fish sections. This is where you will find real foods, rather than highly processed food products.', 20),
(167, 6, 5, 'Drink Water: If you feel a sudden urge for a specific food, try drinking a large glass of water and wait a few minutes. You may find that the craving fades away because your body was actually just thirsty.', 20),
(168, 6, 6, 'Eat More Protein Eating more protein may reduce your appetite and keep you from overeating', 20),
(169, 6, 7, 'Eat healthy snacks', 20),
(170, 6, 8, 'Eat Fresh Fruit and Vegetables', 20),
(171, 6, 9, 'Eat small servings of food six times a day. It can help you prevent overeating.', 20),
(172, 6, 10, 'No chocolate today (and eat some nuts to have energy!)', 20),
(173, 6, 11, 'No white bread ( you can eat whole grain bread but only one! Do not abuse!)`', 20),
(174, 6, 12, 'No cookies or cake ( replace with fruit, it is so much better am I right?)', 20),
(175, 6, 13, 'Replace Deep Fried Snacks with Baked or Shallow Fried Snacks', 20),
(176, 6, 14, 'No pasta ( remember to not eat spaghetti to forgetii your regretii)', 20),
(177, 6, 15, 'No potato chips ( only apple or kale chips ) ', 20),
(178, 6, 16, 'No soda ( water will be your best friend for today!)', 20),
(179, 6, 17, 'No fast food ( you can always make a healthy burguer at home)', 20),
(180, 6, 18, 'No processed meat (eat more fish or try vegetarian)', 20),
(181, 6, 19, 'Try to go vegan all day (it is easier than it look)', 20),
(185, 6, 20, 'No candy ( eat some dates, it is a natural candy) ', 20),
(186, 6, 21, 'Replace potatoes with sweet potatoes (and believe me they are so nice )', 20),
(187, 6, 22, 'Drink 2L of water today ( and you will not have time to over think because you will be too busy to go pee ;) )', 20),
(188, 6, 23, 'Eat a lot of fruit (it is delicious and the best natural sugar)', 20),
(189, 6, 24, 'Eat more green foods ( broccoli will be your friend today )', 20),
(190, 6, 25, 'Oatmeal for breakfast (it is delicious and keeps you satisfied for hours)', 20),
(191, 6, 26, '26.	No meat today (it is a great opportunity to try vegetarian food) ', 20),
(192, 6, 27, 'Eat healthy snacks', 20),
(193, 6, 28, 'Congratulations! You have passed the challenge ( or I hope so).As reward you can eat a small piece of dark chocolate!', 20),
(194, 8, 1, '1 hour social media limit for today (I know you can do it!)', 15),
(195, 8, 2, '2.	Do not use your phone during your meals ( because food is do much better than looking at a screen ) ', 15),
(196, 8, 3, 'Meditate for 50 min. ', 15),
(197, 8, 4, 'No SMS until 1 P.m. ( your friends can wait ) ', 15),
(198, 8, 5, 'No Facebook today ( okay , okay … only messenger )', 15),
(199, 8, 6, 'Put your phone in separate room at bedtime ', 15),
(200, 8, 7, 'No social media updates today (nobody needs to know what you are doing or where you are )', 15),
(201, 8, 8, 'Twitter free day (check a newspaper, you know what it is right?) ', 15),
(202, 8, 9, 'Can not check phone until mid-morning', 15),
(203, 8, 10, ' Zero social media today ( I know you can survive ) ', 15),
(204, 8, 11, 'No social media until 9 P.m. ( you have all night ) ', 15),
(205, 8, 12, ' 30 min social media limit for today. ', 15),
(206, 8, 13, 'Read for 45 min today ', 15),
(207, 8, 14, ' Instagram free day (sounds crazy does not it?) ', 15),
(208, 8, 15, 'Laptop closed by 7 P.m. ( unless you have work to do) ', 15),
(209, 8, 16, 'Facebook free day (including messenger ) ', 15),
(210, 8, 17, '20 min social media limit for today ( do not turn the 15 min in 15 hours please ) ', 15),
(211, 8, 18, 'No social media all day (you can do it!)', 15),
(212, 8, 19, 'No SMS  all day ( if you miss someone just make a call) ', 15),
(213, 8, 20, 'Laptop free day ( he also needs rest )', 15),
(214, 8, 21, 'No phone until 12 P.m. (and have a productive morning!)', 15),
(215, 8, 22, 'You can only view 3 things in social media today (videos and posts)', 15),
(216, 8, 23, 'No social media after 8 P.m. ( so you can sleep early )', 15),
(217, 8, 24, ' No youtube for today (forget the vlogs and makeup tutorials just for today okay?)', 15),
(218, 8, 25, 'Delete unused apps ', 15),
(219, 8, 26, 'Unfollow people who are not real friends', 15),
(220, 8, 27, 'No Instagram until 6 P.m. ( come on , forget the influencers and their perfect life )', 15),
(221, 8, 28, 'Exercise phone free today (this is the only and last time that you are looking at this screen today! Positive side ? It is the last day yay!)', 15),
(222, 9, 1, 'Start each day by telling yourself something really positive. How well you handled a situation, how lovely you look today. Anything that will make you smile', 15),
(223, 9, 2, 'Fill your body with food and drink that nourishes it and makes it thrive.', 15),
(224, 9, 3, 'Move that gorgeous body of yours every single day and learn to love the skin you are in. You can’t hate your way into loving yourself.', 15),
(225, 9, 4, 'Do not believe everything you think. There is an inner critic inside of us trying to keep us small and safe. The downside is this also stops us from living a full life.', 15),
(226, 9, 5, 'Surround yourself with people who love and encourage you. Let them remind you just how amazing you are.', 15),
(227, 9, 6, 'Stop the comparisons. There is no one on this planet like you, so you cannot fairly compare yourself to someone else. The only person you should compare yourself to is you.', 15),
(228, 9, 7, 'End all toxic relationships. Seriously. Anyone who makes you feel anything less than amazing does not deserve to be a part of your life.', 15),
(229, 9, 8, 'Celebrate your wins no matter how big or small. Pat yourself on the back and be proud of what you have achieved.', 15),
(230, 9, 9, 'Step outside of your comfort zone and try something new. It is incredible the feeling we get when we realize we have achieved something we did not know or think we could do before.', 15),
(231, 9, 10, 'Embrace and love the things that make you different. This is what makes you special.', 15),
(232, 9, 11, 'Do a puzzle', 15),
(233, 9, 12, 'Take time out to calm your mind every day. Breathe in and out, clear your mind of your thoughts and just be.', 15),
(234, 9, 13, 'Create art (try some diys that you can find on Pinterest)', 15),
(235, 9, 14, 'Listen to your favorite song', 15),
(236, 9, 15, 'Play board games', 15),
(237, 9, 16, 'Write a letter to someone special', 15),
(238, 9, 17, 'Take  an online class', 15),
(239, 9, 18, 'Reach out to family, friends, healers, whomever you need to help you through the tough times. You are not expected to go through them alone.', 15),
(240, 9, 19, 'Learn to say no. Saying no sometimes does not make you a bad person, it makes you a smart person.', 15),
(241, 9, 20, 'watch a film', 15),
(242, 9, 21, 'Listen to a podcast', 15),
(243, 9, 22, 'Call your friends and family.', 15),
(245, 9, 23, 'Clean and organize your space', 15),
(246, 9, 24, 'Catch up on your favorite tv show', 15),
(247, 9, 25, 'Exercise at home (you can find workout videos on YouTube)', 15),
(248, 9, 26, 'Practice a hobby you like', 15),
(249, 9, 27, 'Bake a cake/make a dessert', 15),
(250, 9, 28, 'Have fun! Get out there and do the things that light your fire. Enjoy them, enjoy being you and enjoy your incredible life.', 15),
(251, 12, 1, '20 sit ups  20 squats 10 push ups 30 sec plank', 30),
(252, 12, 2, '15 burpees 15 leg raises 20 jumping jacks 20 sec wall sit', 30),
(253, 12, 3, '25 sit ups 10 burpees 20 jumping jacks  20 leg raises', 30),
(254, 12, 4, '30 sec plank  20 lunges  15 crunches 15 push ups', 30),
(255, 12, 5, '20 mountain climbers  20 crunches  30 squats  35 sec plank', 30),
(256, 12, 6, '30 squats  20 push ups  25 leg raises  30 sec plank  15 burpees', 30),
(257, 12, 7, 'Rest Day', 30),
(258, 12, 8, '25 sit ups  20 crunches 25 jumping jacks 30 squats 35 sec plank', 30),
(259, 12, 9, '30 squats  20 push ups  25 mountain climbers  25 crunches  30 sit ups', 30),
(260, 12, 10, '35 sec plank  25 leg raises  25 crunches  35 squats 30 jumping jacks', 30),
(261, 12, 11, '35 jumping jacks  25 burpees  25 lunges  30 sec wall sit 35 sit ups', 30),
(262, 12, 12, '35 squats  25 push ups  35 sec plank  30 leg raises  35 jumping jacks', 30),
(263, 12, 13, '30 sit ups  20 burpees  25 mountain climbers  35 squats  30 sec plank ', 30),
(264, 12, 14, 'Rest Day', 30),
(265, 12, 15, '25 burpees  35 leg raises  40 jumping jacks 40 sec wall sit 30 sit ups', 30),
(266, 12, 16, '30 mountain climbers  35 squats 35 crunches 40 sec plank  30 lunges', 30),
(267, 12, 17, '30 squats  25 push ups  30 sit ups  35 crunches  35jumping jacks ', 30),
(268, 12, 18, '45 jumping jacks  35 mountain climbers  45 sec wall sit  35 sit ups ', 30),
(269, 12, 19, '40 mountain climbers  35 squats 35 crunches 40 sec plank  35 lunges', 30),
(270, 12, 20, '35 crunches  25 push ups  25 burpees  40 sec plank  35 leg raises', 30),
(271, 12, 21, 'Rest Day', 30),
(272, 12, 22, '40 squats  30 crunches  25 burpees  40 jumping jacks  40 mountain climbers ', 30),
(273, 12, 23, '30 mountain climbers  35 squats 35 crunches 40 sec plank  30 lunges', 30),
(274, 12, 24, '45 jumping jacks  40 mountain climbers  45 sec wall sit  35 sit ups', 30),
(275, 12, 25, '45 squats  35 crunches  30 burpees  45 jumping jacks  45 mountain climbers', 30),
(276, 12, 26, '40 squats  35 push ups  40 sit ups  45 crunches  45 jumping jacks', 30),
(277, 12, 27, '45 sec plank  35 leg raises  35 crunches  45 squats 40 jumping jacks', 30),
(279, 12, 28, 'Rest Day  ( keep challenging yourself in the next weeks and do not forget to share the results with the community to inspire others!) ', 30),
(280, 7, 10, 'Throw away all cigarettes, lighters and ashtrays in your home and car. If your partner smokes, suggest that they stop too, or only smoke outside the house and away from you.', 10),
(282, 7, 11, 'try nicotine chewing gum  6.	Think positive : You might have tried to quit smoking before and not managed it, but dont let that put you off.', 10),
(283, 7, 12, 'Several times a day, quietly repeat to yourself the affirmation, (I am a nonsmoker). Many quitters see themselves as smokers who are just not smoking for the moment. They have a self-image as smokers who still want a cigarette.\r\n', 10),
(284, 7, 13, 'Nicotine replacement therapy : try nicotine chewing gum  6.	Think positive : You might have tried to quit smoking before and not managed it, but dont let that put you off.', 10),
(285, 7, 14, 'Reduce Stress Cigarettes were probably your go-to stress neutralizer and now you have to begin the work of managing tension in new ways.', 10),
(286, 7, 15, 'Change Your Habits Smoking likely was not the only habit in your life, so shake up your other routines to avoid backsliding. ', 10),
(287, 7, 16, 'Get More Sleep Smoking cessation is tiring, especially at the beginning. ', 10),
(288, 7, 17, 'Reward Yourself Come up with a list of small gifts that you can give yourself every day you do not smoke, like taking a hot bath, buying a new candle, reading a fun magazine, or enlisting someone else in the family to cook dinner', 10),
(289, 7, 18, 'Distract Yourself What you choose to pay attention to has a habit of growing. Do not let thoughts of smoking run unchecked through your mind.', 10),
(290, 7, 19, 'Do Some Deep Breathing Try not to panic when you get a craving to smoke. Take a few moments to concentrate on your breathing.', 10),
(291, 7, 20, 'Drink Lots of Water Water helps you flush residual toxins from smoking out of your body more quickly.', 10),
(292, 7, 21, 'Take Walks A short walk, even for as little as 15 minutes, can work wonders for beating back smoking urges and improving your mood', 10),
(293, 7, 22, 'Do not Skip Meals Doing so will probably leave you with low blood sugar, which will trigger the urge to smoke.', 10),
(294, 7, 23, ' Your body will absorb more caffeine than usual after quitting. Cut down on coffee and tea to prevent caffeine-induced anxiety and restlessness', 10),
(295, 7, 24, 'stay away from sugar and coffee and anything that have caffeine', 10),
(296, 7, 25, 'After dinner, instead of a cigarette, treat yourself to a cup of mint tea or a peppermint candy.', 10),
(297, 7, 26, 'Go to a gym, sit in the steam, exercise. Change your normal routine – take time to walk or even jog around the block or in a local park.', 10),
(298, 7, 27, 'Ask friends and family members not to smoke in your presence. Do not be afraid to ask. This is more important than you may realize.', 10),
(299, 7, 28, 'Practice relaxation techniques such as deep-breathing exercises, muscle relaxation, yoga, visualization, massage or listening to calming music.\r\n', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tasks_records`
--

CREATE TABLE `tasks_records` (
  `ID` int(20) NOT NULL,
  `Day_Number` int(20) NOT NULL,
  `T_ID` int(20) NOT NULL,
  `U_ID` int(20) NOT NULL,
  `Date` varchar(250) COLLATE utf8_bin NOT NULL,
  `Picture_Before` varchar(250) COLLATE utf8_bin NOT NULL,
  `Picture_After` varchar(250) COLLATE utf8_bin NOT NULL,
  `Notes` varchar(250) COLLATE utf8_bin NOT NULL,
  `Status` varchar(250) COLLATE utf8_bin NOT NULL,
  `Add_Date_Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tasks_records`
--

INSERT INTO `tasks_records` (`ID`, `Day_Number`, `T_ID`, `U_ID`, `Date`, `Picture_Before`, `Picture_After`, `Notes`, `Status`, `Add_Date_Time`) VALUES
(8, 2, 30, 2, '2020-10-11', 'Files/', 'Files/', 'I have done this task easily ', 'Accepted', '2020-12-12 15:00:06'),
(10, 1, 1, 2, '2019-09-12', 'Files/', 'Files/', 'Today I left my work and go to the coffee shop and having a drink instead of smoking!', 'Accepted', '2020-12-27 08:51:13'),
(11, 3, 31, 2, '2020-04-04', 'Files/', 'Files/', 'My reasons are :Because smoking interferes with my sense of taste, food tastes better when I quit. My sense of smell also improves. I will be able to make it through a long movie or an airplane flight without craving a cigarette.', 'Accepted', '2020-12-23 18:07:47'),
(12, 4, 32, 2, '2020-10-11', 'Files/', 'Files/', 'My Family support me ', 'Pending', '2020-12-12 18:44:02'),
(13, 5, 33, 2, '2020-12-12', 'Files/', 'Files/', 'Yeah I tried sometimes and I could not do it ,but now I believe I can', 'Pending', '2020-12-12 18:45:34'),
(17, 1, 222, 2, '2020-12-1', 'Files/', 'Files/', 'I told myself that today I am beautiful and standing in front of the mirror  to see that', 'Accepted', '2020-12-23 18:07:58'),
(18, 2, 223, 2, '2020-12-02', 'Files/before.jpeg', 'Files/task.jpg', 'I drank water and ate vegetables', 'Accepted', '2020-12-23 18:08:09'),
(19, 3, 224, 2, '2020-12-03', 'Files/', 'Files/', 'I tried a new mask today for my skin! its awesome', 'Accepted', '2020-12-23 16:53:34'),
(20, 4, 225, 2, '2020-12-04', 'Files/', 'Files/', 'yeah, this is bad, and its always happened to me I should stop thinking like that!', 'Accepted', '2020-12-23 16:53:45'),
(21, 5, 226, 2, '2020-12-04', 'Files/', 'Files/family.jpg', 'I have my family beside me , and some of my friends', 'Pending', '2020-12-23 16:53:09'),
(22, 1, 251, 2, '2020-12-05', 'Files/', 'Files/sit ups and squa.jpg', 'I did 20 sit ups and squats', 'Pending', '2020-12-23 17:04:08'),
(23, 2, 252, 2, '2020-12-06', 'Files/', 'Files/burpees-tennis.jpg', 'Done', 'Pending', '2020-12-23 17:05:07'),
(24, 1, 101, 2, '2020-12-01', 'Files/', 'Files/alarm.PNG', 'Today I have to wake up at 10:30 am , so I put the alarm at 10:29', 'Pending', '2020-12-23 17:56:41'),
(25, 2, 102, 2, '2020-12-22', 'Files/', 'Files/', 'I waked up today at 6 am, and yes this gave me extra time to do my daily routine', 'Pending', '2020-12-23 18:00:28'),
(26, 1, 1, 5, '2020-12-01', 'Files/', 'Files/', 'Today I left my work and go to the coffee shop and having a drink instead of smoking!', 'Accepted', '2020-12-23 18:08:44'),
(27, 2, 30, 5, '2020-12-02', 'Files/', 'Files/', 'I have done this task easily ', 'Accepted', '2020-12-23 18:09:17'),
(28, 3, 31, 5, '2020-12-03', 'Files/', 'Files/', 'My reasons are :Because smoking interferes with my sense of taste, food tastes better when I quit. My sense of smell also improves. I will be able to make it through a long movie or an airplane flight without craving a cigarette.', 'Accepted', '2020-12-23 18:09:05'),
(29, 4, 32, 5, '2020-12-04', 'Files/', 'Files/', 'My Family support me ', 'Pending', '2020-12-23 18:03:46'),
(30, 1, 251, 5, '2020-05-12', 'Files/', 'Files/sit ups and squa.jpg', 'I did 20 sit ups and squats', 'Accepted', '2020-12-23 18:08:34'),
(31, 2, 252, 5, '2020-05-13', 'Files/', 'Files/', 'Done', 'Pending', '2020-12-23 18:05:24'),
(32, 1, 251, 11, '2020-12-24', 'Files/', 'Files/sit ups and squa.jpg', 'I did it', 'Pending', '2020-12-24 11:03:00'),
(33, 3, 253, 2, '2020-12-12', 'Files/', 'Files/', 'I have done this task easily ', 'Pending', '2020-12-27 08:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(20) NOT NULL,
  `Full_Name` varchar(250) COLLATE utf8_bin NOT NULL,
  `DOB` varchar(250) COLLATE utf8_bin NOT NULL,
  `Email_Address` varchar(250) COLLATE utf8_bin NOT NULL,
  `Password` varchar(250) COLLATE utf8_bin NOT NULL,
  `Total_Points` int(20) NOT NULL,
  `Status` varchar(250) COLLATE utf8_bin NOT NULL,
  `Add_Date_Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Full_Name`, `DOB`, `Email_Address`, `Password`, `Total_Points`, `Status`, `Add_Date_Time`) VALUES
(2, 'Nada', '1999-04-26', 'nada@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 115, 'Active', '2020-12-27 08:51:13'),
(3, 'Layan ismail ', '1989-05-01', 'layan22@hotmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, 'Active', '2020-12-12 15:03:17'),
(4, 'Hadeel Daraghmeh', '1980-05-06', 'Hadeel22@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, 'Active', '2020-12-12 15:03:32'),
(5, 'Dana Odeh', '1998-02-21', 'Dana_nn@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', 60, 'Active', '2020-12-23 18:09:17'),
(7, 'Hussein adam', '1996-09-08', 'Huss20@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, 'Active', '2020-12-12 15:04:23'),
(11, 'nan', '1999-12-05', 'nan@nn.cocm', 'b0aa206e472b6d4b28757dc2bab1cbe5', 0, 'Active', '2020-12-24 11:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `users_challenges`
--

CREATE TABLE `users_challenges` (
  `ID` int(20) NOT NULL,
  `U_ID` int(20) NOT NULL,
  `C_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users_challenges`
--

INSERT INTO `users_challenges` (`ID`, `U_ID`, `C_ID`) VALUES
(6, 2, 7),
(9, 5, 11),
(10, 5, 9),
(12, 3, 8),
(13, 3, 10),
(15, 7, 7),
(16, 7, 4),
(17, 4, 10),
(18, 4, 11),
(19, 4, 6),
(20, 2, 11),
(26, 2, 12),
(27, 2, 9),
(28, 5, 7),
(29, 5, 12),
(30, 11, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `challenges`
--
ALTER TABLE `challenges`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `C_ID_2` (`C_ID`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `C_ID_3` (`C_ID`);

--
-- Indexes for table `tasks_records`
--
ALTER TABLE `tasks_records`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `T_ID_4` (`T_ID`),
  ADD KEY `U_ID_4` (`U_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users_challenges`
--
ALTER TABLE `users_challenges`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `U_ID` (`U_ID`),
  ADD KEY `C_ID` (`C_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `challenges`
--
ALTER TABLE `challenges`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `tasks_records`
--
ALTER TABLE `tasks_records`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_challenges`
--
ALTER TABLE `users_challenges`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `C_ID_2` FOREIGN KEY (`C_ID`) REFERENCES `challenges` (`ID`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `C_ID_3` FOREIGN KEY (`C_ID`) REFERENCES `challenges` (`ID`);

--
-- Constraints for table `tasks_records`
--
ALTER TABLE `tasks_records`
  ADD CONSTRAINT `T_ID_4` FOREIGN KEY (`T_ID`) REFERENCES `tasks` (`ID`),
  ADD CONSTRAINT `U_ID_4` FOREIGN KEY (`U_ID`) REFERENCES `users` (`ID`);

--
-- Constraints for table `users_challenges`
--
ALTER TABLE `users_challenges`
  ADD CONSTRAINT `C_ID` FOREIGN KEY (`C_ID`) REFERENCES `challenges` (`ID`),
  ADD CONSTRAINT `U_ID` FOREIGN KEY (`U_ID`) REFERENCES `users` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
