-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2019 a las 05:47:33
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectomusica`
--
CREATE DATABASE IF NOT EXISTS `proyectomusica` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `proyectomusica`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `cod_artistas` int(2) UNSIGNED NOT NULL,
  `name_artistas` varchar(30) NOT NULL,
  `cod_genero` int(2) UNSIGNED DEFAULT NULL,
  `biografia` blob,
  `link` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`cod_artistas`, `name_artistas`, `cod_genero`, `biografia`, `link`) VALUES
(1, 'SURVIVOR', 1, NULL, '/Rock_Survivor.html'),
(2, 'MICHAEL JACKSON', 2, NULL, '/Pop_MichaelJackson.html'),
(3, 'RAY CHARLES', 3, NULL, '/Jazz_RayCharles.html'),
(4, 'FRANK SINATRA', 4, NULL, '/Swing_Sinatra.html'),
(5, 'TAME IMPALA', 1, NULL, '/Rock_TameImpala.html'),
(6, 'THE WEEKEND', 2, NULL, '/Pop_Weeknd.html'),
(7, 'LOUIS ARMSTRONG', 3, NULL, '/Jazz_Louis.html'),
(8, 'LOUIS PRIMA', 4, NULL, '/Swing_Prima.html');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `cod_canciones` int(3) UNSIGNED NOT NULL,
  `name_canciones` varchar(40) DEFAULT NULL,
  `letra` text,
  `cod_artistas` int(2) UNSIGNED DEFAULT NULL,
  `cod_coleccion` int(2) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`cod_canciones`, `name_canciones`, `letra`, `cod_artistas`, `cod_coleccion`) VALUES
(1, 'FIRST NIGHT', 'We will remember this first night forever\r\nAfter all the songs fade away\r\nAnd the stage fades to gray\r\nAnd we will remember this first night together\r\nWe\'ll recall the things that we said\r\nAll the foolish dreams in our head\r\nOn the night we met\r\n\r\nI\'m searching your eyes\r\nHave I seen you somewhere\r\nYou\'re filling my thoughts with a strange intrigue\r\nI rivet my glance to your every movement\r\nI got a notion your love\'s in a whole different league\r\nTell me your name, what\'s your persuasion\r\nYour first impression of this whole occasion\r\n\r\nAnd this night shall be the first night\r\nAnd first nights were made for love\r\nI can taste the action in the air tonight\r\nHearts are poundin\' as the sparks ignite\r\nAnd this night shall be remembered\r\nLong after the music\'s gone\r\nAnd we\'ll reminisce on the things we said\r\nAnd we\'ll fall in love again\r\n\r\nIn the air I can sense a strong attraction\r\nEmotions run wild, are we on the verge?\r\nWe got a hot-line to satisfaction\r\nI got the answer, if you got the urge\r\nMy motor is hot, I\'m feeling elation\r\nYou came in the night with the right temptation\r\n\r\nAnd this night shall be the first night\r\nAnd first nights were made for love\r\nI can taste the action in the air tonight\r\nHearts are poundin\' as the sparks ignite\r\nAnd this night shall be remembered\r\nLong after the music\'s gone\r\nAnd we\'ll reminisce on the things we said\r\nAnd we\'ll fall in love again\r\n\r\nWe will remember this first night forever\r\nWe\'ll recall the things that we said\r\nAll the foolish dreams in our head\r\n\r\nAnd this night shall be the first night\r\nAnd first nights were made for love\r\nI can taste the action in the air tonight\r\nHearts are poundin\' as the sparks ignite\r\nAnd this night shall be remembered\r\nLong after the music\'s gone\r\nAnd we\'ll reminisce on the things we said\r\nAnd we\'ll fall in love again', 1, 1),
(2, 'HIGH IN YOU', 'There you stood, that\'ll teach ya\r\nTo look so good and feel so right\r\nLet me tell you \'bout the girl I met last night\r\nIt\'s understood, I had to reach ya\r\nI let the wheel of fortune spin\r\nI touched your hand before the crowd\r\nStarted crushin\' in\r\nNow I\'m higher than a kite\r\nI know I\'m gettin\' hooked on your love\r\nTalkin\' to myself, runnin\' in the heat\r\nBeggin\' for your touch in the middle\r\nOf the street and I --\r\n\r\nI can\'t stop thinking \'bout you girl\r\nI must be living in a fantasy world\r\nI\'ve searched the whole world over\r\nTo find a heart so true\r\nSuch complete intoxication\r\nI\'m high on you\r\n\r\nSmart and coy, a little crazy\r\nThe kinda face that starts a fight\r\nLet me tell you \'bout the girl I had last night\r\nPiercin\' eyes, like a raven\r\nYou seemed to share my secret sin\r\nWe were high before the night\r\nStarted kickin\' in\r\nNow I\'m screamin\' in the night\r\nI know I\'m gettin\' hooked on your love\r\nTalkin\' to myself, runnin\' in the heat\r\nBeggin\' for your touch in the middle\r\nOf the street and I --\r\n\r\nI can\'t stop thinking \'bout you girl\r\nI must be living in a fantasy world\r\nI\'ve searched the whole world over\r\nTo find a heart so true\r\nSuch complete intoxication\r\nI\'m high on you\r\n', 1, 1),
(3, 'I CANT HOLD BACK', 'There\'s a story in my eyes\r\nTurn the pages of desire\r\nNow it\'s time to trade those dreams\r\nFor the rush of passion\'s fire\r\nI can feel you tremble when we touch\r\nAnd I feel the hand of fate\r\nReaching out to both of us\r\nI\'ve been holding back the night\r\nI\'ve been searching for a clue from you\r\nI\'m gonna try with all my might\r\nTo make this story line come true\r\nCan ya feel me tremble when we touch\r\nCan ya feel the hand of fate\r\nReaching out to both of us\r\nThis love affair can\'t wait\r\n\r\nI can\'t hold back, I\'m on the edge\r\n(I can\'t hold back)\r\nYou voice explodes inside my head\r\nI can\'t hold back, I won\'t back down\r\nGirl it\'s too late to turn back now\r\n\r\nAnother shooting star goes by\r\nAnd in the night the silence speaks to you and I\r\nAnd now the time has come at last\r\nDon\'t let the moment run too fast\r\nI can feel you tremble when we touch\r\nAnd I feel the hand of fate reaching out to both of us\r\nThere\'s a story in my eyes, turn the pages of desire\r\nNow it\'s time to trade those dreams\r\nFor the rush of passion\'s fire\r\n\r\nI can\'t hold back, I\'m on the edge\r\n(I can\'t hold back)\r\nYou voice explodes inside my head\r\nI can\'t hold back, I won\'t back down\r\nGirl it\'s too late to turn back now', 1, 1),
(4, 'EYE OF TIGER', 'Risin\' up, back on the street\r\nDid my time, took my chances\r\nWent the distance, now I\'m back on my feet\r\nJust a man and his will to survive\r\n\r\nSo many times, it happens too fast\r\nYou trade your passion for glory\r\nDon\'t lose your grip on the dreams of the past\r\nYou must fight just to keep them alive\r\n\r\nIt\'s the eye of the tiger, it\'s the thrill of the fight\r\nRisin\' up to the challenge of our rival\r\nAnd the last known survivor stalks his prey in the night\r\nAnd he\'s watchin\' us all with the eye of the tiger\r\n\r\nFace to face, out in the heat\r\nHangin\' tough, stayin\' hungry\r\nThey stack the odds \'till we take to the street\r\nFor the kill with the skill to survive\r\n\r\nIt\'s the eye of the tiger, it\'s the dream of the fight\r\nRisin\' up to the challenge of our rival\r\nAnd the last known survivor stalks his prey in the night\r\nAnd he\'s watchin\' us all with the eye of the tiger\r\n\r\nRisin\' up, straight to the top\r\nHad the guts, got the glory\r\nWent the distance, now I\'m not gonna stop\r\nJust a man and his will to survive\r\n\r\nIt\'s the eye of the tiger, it\'s the dream of the fight\r\nRisin\' up to the challenge of our rival\r\nAnd the last known survivor stalks his prey in the night\r\nAnd he\'s watchin\' us all with the eye of the tiger\r\n\r\nThe eye of the tiger\r\nThe eye of the tiger\r\nThe eye of the tiger\r\nThe eye of the tiger', 1, 2),
(5, 'BEAT IT', 'They told him don\'t you ever come around here\r\nDon\'t want to see your face, you better disappear\r\nThe fire\'s in their eyes and their words are really clear\r\nSo beat it, just beat it\r\n\r\nYou better run, you better do what you can\r\nDon\'t want to see no blood, don\'t be a macho man\r\nYou want to be tough, better do what you can\r\nSo beat it, but you want to be bad\r\n\r\nJust beat it, beat it, beat it, beat it\r\nNo one wants to be defeated\r\nShowin\' how funky and strong is your fight\r\nIt doesn\'t matter who\'s wrong or right\r\nJust beat it, beat it\r\nJust beat it, beat it\r\nJust beat it, beat it\r\nJust beat it, beat it\r\n\r\nThey\'re out to get you, better leave while you can\r\nDon\'t want to be a boy, you want to be a man\r\nYou want to stay alive, better do what you can\r\nSo beat it, just beat it\r\n\r\nYou have to show them that you\'re really not scared\r\nYou\'re playin\' with your life, this ain\'t no truth or dare\r\nThey\'ll kick you, then they beat you,\r\nThen they\'ll tell you it\'s fair\r\nSo beat it, but you want to be bad\r\n\r\nJust beat it, beat it, beat it, beat it\r\nNo one wants to be defeated\r\nShowin\' how funky and strong is your fight\r\nIt doesn\'t matter who\'s wrong or right\r\n\r\nJust beat it, beat it, beat it, beat it\r\nNo one wants to be defeated\r\nShowin\' how funky and strong is your fight\r\nIt doesn\'t matter who\'s wrong or right\r\n\r\nJust beat it, beat it, beat it, beat it\r\nNo one wants to be defeated\r\nShowin\' how funky and strong is your fight\r\nIt doesn\'t matter who\'s wrong or right\r\nJust beat it, beat it\r\nBeat it, beat it, beat it\r\n\r\nNo one wants to be defeated\r\nShowin\' how funky and strong is your fight\r\nIt doesn\'t matter who\'s wrong or who\'s right\r\n\r\nJust beat it, beat it, beat it, beat it\r\nNo one wants to be defeated\r\nShowin\' how funky and strong is your fight\r\nIt doesn\'t matter who\'s wrong or right\r\n\r\nJust beat it, beat it, beat it, beat it\r\nNo one wants to be defeated\r\nShowin\' how funky and strong is your fight\r\nIt doesn\'t matter who\'s wrong or right\r\nJust beat it, beat it\r\nBeat it, beat it, beat it', 2, 3),
(6, 'BILLIE JEAN', 'She was more like a beauty queen from a movie scene\r\nI said don\'t mind, but what do you mean, I am the one\r\nWho will dance on the floor in the round\r\nShe said I am the one, who will dance on the floor in the round\r\n\r\nShe told me her name was Billie Jean, as she caused a scene\r\nThen every head turned with eyes that dreamed of being the one\r\nWho will dance on the floor in the round\r\n\r\nPeople always told me be careful of what you do\r\nAnd don\'t go around breaking young girls\' hearts\r\nAnd mother always told me be careful of who you love\r\nAnd be careful of what you do \'cause the lie becomes the truth\r\n\r\nBillie Jean is not my lover\r\nShe\'s just a girl who claims that I am the one\r\nBut the kid is not my son\r\nShe says I am the one, but the kid is not my son\r\n\r\nFor forty days and forty nights\r\nThe law was on her side\r\nBut who can stand when she\'s in demand\r\nHer schemes and plans\r\n\'Cause we danced on the floor in the round\r\nSo take my strong advice, just remember to always think twice\r\n(Don\'t think twice, don\'t think twice)\r\n\r\nShe told my baby we\'d danced till three, then she looked at me\r\nThen showed a photo my baby cried his eyes were like mine (oh, no!)\r\n\'Cause we danced on the floor in the round, baby\r\n\r\nPeople always told me be careful of what you do\r\nAnd don\'t go around breaking young girls\' hearts\r\nShe came and stood right by me\r\nJust the smell of sweet perfume\r\nThis happened much too soon\r\nShe called me to her room\r\n\r\nBillie Jean is not my lover\r\nShe\'s just a girl who claims that I am the one\r\nBut the kid is not my son\r\n\r\nBillie Jean is not my lover\r\nShe\'s just a girl who claims that I am the one\r\nBut the kid is not my son\r\nShe says I am the one, but the kid is not my son\r\n\r\nShe says I am the one, but the kid is not my son\r\n\r\nBillie Jean is not my lover\r\nShe\'s just a girl who claims that I am the one\r\nBut the kid is not my son\r\nShe says I am the one, but the kid is not my son\r\n\r\nShe says I am the one,\r\n(You know what you did, (she says he is my son)breaking my heart babe)\r\nShe says I am the one\r\n\r\nBillie Jean is not my lover\r\nBillie Jean is not my lover\r\nBillie Jean is not my lover\r\nBillie Jean is not my lover (don\'t Billie Jean)\r\nBillie Jean is not my lover\r\nBillie Jean is not my lover', 2, 3),
(7, 'THRILLER', 'Ahahahahahahahaha\r\nIt\'s close to midnight\r\nSomething evil\'s lurking from the dark\r\nUnder the moonlight\r\nYou see a sight that almost stops your heart\r\nYou try to scream\r\nBut terror takes the sound before you make it\r\nYou start to freeze\r\nAs horror looks you right between your eyes\r\nYou\'re paralyzed\r\n\r\n\'Cause this is thriller\r\nThriller night\r\nAnd no one’s gonna save you\r\nFrom the beast about to strike\r\nYou know it’s thriller\r\nThriller night\r\nYou’re fighting for your life\r\nInside a killer thriller tonight, yeah\r\nAhahahahahahahaha\r\nI\'m gonna bring it tonight\r\n\r\nAhahahahahahahaha\r\nYou hear the door slam\r\nAnd realize there\'s nowhere left to run\r\nYou feel the cold hand\r\nAnd wonder if you\'ll ever see the sun\r\nYou close your eyes\r\nAnd hope that this is just imagination\r\nGirl but all the while\r\nYou hear a creature creeping up behind\r\nYou\'re out of time\r\n\r\n\'Cause this is thriller\r\nThriller night\r\nAnd no one’s gonna save you\r\nFrom the beast about to strike\r\nYou know it’s thriller\r\nThriller night\r\nYou’re fighting for your life\r\nInside a killer thriller tonight\r\nAhahahahahahahaha\r\nI\'m gonna thrill ya tonight\r\n\r\nGet up, get up\r\n\r\nDarkness falls across the land\r\nThe midnight hour is close at hand\r\nCreatures crawl in search of blood\r\nTo terrorize y\'all\'s neighborhood\r\nAnd whosoever shall be found\r\nWithout the soul for getting down\r\nMust stand and face the hounds of hell\r\nAnd rot inside a corpse\'s shell\r\n\r\nI\'m gonna thrill ya tonight \r\nI\'m gonna thrill ya tonight \r\nOoh, babe\r\nI\'m gonna thrill ya tonight\r\n\r\n\'Cause this is thriller\r\n\'Cause this is thriller\r\n\'Cause this is thriller\r\n\'Cause this is thriller\r\nGet up, get up (I\'m gonna thrill you tonight)\r\nI\'m gonna thrill you tonight\r\nI\'m gonna thrill you tonight\r\nI\'m gonna thrill you tonight\r\n\'Cause this is thriller', 2, 3),
(8, 'DONT STOP TIL YOU GET ENOUGH', 'Lovely is the feelin\' now\r\nFever, temperatures risin\' now\r\nPower (oh power) is the force the vow\r\nThat makes it happen\r\nIt asks no questions why (ooh)\r\nSo get closer (closer now) to my body now\r\nJust love me \'til you don\'t know how (ooh)\r\n\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\n\r\nTouch me and I feel on fire\r\nAin\'t nothin\' like a love desire (ooh)\r\nI\'m melting (I\'m melting) like hot candle wax\r\nSensation (ah sensation) lovely where we\'re at (ooh)\r\nSo let love take us through the hours\r\nI won\'t be complainin\' (ooo)\r\n\'Cause this is love power (ooh)\r\n\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\n\r\nLovely is the feeling now\r\nI won\'t be complainin\' (ooh ooh)\r\nThe force is love power\r\n\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\nKeep on, with the force don\'t stop\r\nDon\'t stop \'til you get enough\r\n', 2, 4),
(9, ' I CANT STOP LOVING YOU', 'I\'ve made up my mind\r\nTo live in memory of the lonesome times\r\n(I can\'t stop wanting you)\r\nIt\'s useless to say\r\nSo I\'ll just live my life in dreams of yesterday\r\n(Dreams of yesterday)\r\n\r\nThose happy hours that we once knew\r\nTho\' long ago, they still make me blue\r\nThey say that time heals a broken heart\r\nBut time has stood still since we\'ve been apart\r\n\r\nI\'ve made up my mind\r\nTo live in memories of the lonesome times\r\n(I can\'t stop wanting you)\r\nIt\'s useless to say\r\nSo I\'ll just live my life in dreams of yesterday\r\n\r\nThose happy hours\r\n(That we once knew)\r\nThat we once knew\r\n(Tho\' long ago)\r\nTho\' long ago\r\n(Still make me blue)\r\nStill ma-a-a-ake me blue\r\n(They say that time)\r\nThey say that time\r\n(Heals a broken heart)\r\nHeals a broken heart\r\n(But time has stood still)\r\nTime has stood still\r\n(Since we\'ve been apart)\r\nSince we\'ve been apart\r\n\r\nI said I made up my mind\r\nTo live in memory of the lonesome times\r\n\r\nIt\'s useless to say\r\nSo I\'ll just live my life of dreams of yesterday\r\n(Of yesterday)', 3, 5),
(10, 'IVE GOR A WOMAN', NULL, 3, 5),
(11, 'MESS AROUND', 'Ah, you can talk about the pit, barbecue\r\nThe band was jumpin\', the people too\r\nAh, mess around\r\nThey doin\' the mess around\r\nThey doin\' the mess around,\r\nEverybody doin\' the mess around\r\n\r\nAh, everybody was juiced, you can, bet your soul\r\nThey did the boogie-woogie, with a steady roll *\r\nThey mess around\r\nThey doin\' the mess around\r\nThey doin\' the mess around,\r\nEverybody doin\' the mess around\r\n\r\nNow, ah, when I say stop don\'t you move a peg\r\nWhen I say go, just ah, shake your leg\r\nAnd do the mess around\r\nI declare, do the mess around\r\nYeah do the mess around,\r\nEverybody\'s doin\' the mess around\r\n\r\nNow let me have it there boy\r\n\r\nNow you got it boy\r\n\r\nNow this band\'s goin\' to play from, 9 to 1\r\nEverybody here\'s gonna have some fun\r\nDoin\' the mess around\r\nAh, doin\' the mess around\r\nThey doin\' the mess around,\r\nEverybody doin\' the mess around\r\n\r\nNow you see that girl, with that, diamond ring\r\nShe knows how to, shake that thing\r\nMess around\r\nI declare, she can mess around\r\nAh, mess around,\r\nEverybody do the mess around', 3, 5),
(12, 'HIT THE ROAD JACK', 'Hit the road Jack and don\'t you come back\r\nNo more, no more, no more, no more\r\nHit the road Jack and don\'t you come back\r\nNo more\r\nWhat\'d you say?\r\n\r\nHit the road Jack and don\'t you come back\r\nNo more, no more, no more, no more\r\nHit the road Jack and don\'t you come back\r\nNo more\r\n\r\nOh woman, oh woman, don\'t treat me so mean\r\nYou\'re the meanest old woman that I\'ve ever have seen\r\nI guess if you say so\r\nI\'ll have to pack my things and go (that\'s right)\r\n\r\nHit the road Jack and don\'t you come back\r\nNo more, no more, no more, no more\r\nHit the road Jack and don\'t you come back\r\nNo more\r\nWhat\'d you say?\r\n\r\nHit the road Jack and don\'t you come back\r\nNo more, no more, no more, no more\r\nHit the road Jack and don\'t you come back\r\nNo more\r\n\r\nNow baby, listen baby, don\'t you treat me this way\r\n\'Cause I\'ll be back on my feet some day\r\nDon\'t care if you do, \'cause it\'s understood\r\nYou ain\'t got no money, you just ain\'t no good\r\nWell, I guess if you say so\r\nI\'ll have to pack my things and go (that\'s right)\r\n\r\nHit the road Jack and don\'t you come back\r\nNo more, no more, no more, no more\r\nHit the road Jack and don\'t you come back\r\nNo more\r\nWhat\'d you say?\r\n\r\nHit the road Jack and don\'t you come back\r\nNo more, no more, no more, no more\r\nHit the road Jack and don\'t you come back\r\nNo more\r\n\r\nWell (don\'t you come back no more)\r\nUh, what you say? (don\'t you come back no more)\r\nI didn\'t understand you (don\'t you come back no more)\r\nYou can\'t mean that (don\'t you come back no more)\r\nOh now baby please (don\'t you come back no more)\r\nWhat you tryin\' to do to me? (don\'t you come back no more)\r\nOh, don\'t treat me like that, baby (don\'t you come back no more)', 3, 6),
(13, 'NEW YORK', 'Start spreadin\' the news, I\'m leavin\' today\r\nI want to be a part of it\r\nNew York, New York\r\nThese vagabond shoes, are longing to stray\r\nRight through the very heart of it\r\nNew York, New York\r\n\r\nI wanna to wake up, in a city that doesn\'t sleep\r\nAnd find I\'m king of the hill\r\nTop of the heap\r\n\r\nThese little town blues\r\nAre melting away\r\nI\'ll make a brand new start of it\r\nIn old New York\r\nIf I can make it there, I\'ll make it anywhere\r\nIt\'s up to you, New York, New York\r\n\r\nNew York, New York\r\nI want to wake up in a city that never sleeps\r\nAnd find I\'m a number one, top of the list\r\nKing of the hill, a number one\r\n\r\nThese little town blues, are melting away\r\nI\'m gonna make a brand new start of it\r\nIn old New York\r\nAnd\r\nIf I can make it there\r\nI\'m gonna make it anywhere\r\nIt\'s up to you, New York\r\nNew York\r\nNew York', 4, 7),
(14, 'THE WAY YOU LOOK TONIGHT', 'Some day, when I\'m awfully low\r\nWhen the world is cold\r\nI will feel a glow just thinking of you\r\nAnd the way you look tonight\r\n\r\nYes, you\'re lovely, with your smile so warm\r\nAnd your cheeks so soft\r\nThere is nothing for me but to love you\r\nAnd the way you look tonight\r\n\r\nWith each word your tenderness grows\r\nTearin\' my fear apart\r\nAnd that laugh, wrinkles your nose\r\nTouches my foolish heart\r\n\r\nLovely, never, never change\r\nKeep that breathless charm\r\nWon\'t you please arrange it? \r\n\'Cause I love you\r\nA-just the way you look tonight\r\n\r\nAnd that laugh that wrinkles your nose\r\nIt touches my foolish heart\r\n\r\nLovely, don\'t you ever change\r\nKeep that breathless charm\r\nWon\'t you please arrange it? \r\n\'Cause I love you\r\nA-just the way you look tonight\r\n\r\nMm, mm, mm, mm,\r\nJust the way you look tonight', 4, 7),
(15, 'YOU MAKE ME FEEL SO YOUNG', 'Oh Lordy, trouble so hard\r\nOh Lordy, trouble so hard\r\nDon\'t nobody know my troubles but God\r\nDon\'t nobody know my troubles but God\r\n\r\nOh Lordy, trouble so hard\r\nOh Lordy, trouble so hard\r\nDon\'t nobody know my troubles but God\r\nDon\'t nobody know my troubles but God\r\n\r\nOh Lordy, trouble so hard\r\nOh Lordy, trouble so hard\r\nDon\'t nobody know my troubles but God\r\nDon\'t nobody know my troubles but God\r\n\r\nWent down the hill\r\nOther day\r\nSoul got happy\r\nAnd stayed all day\r\n\r\nWent down the hill\r\nOther day\r\nSoul got happy\r\nAnd stayed all day\r\n\r\nOh Lordy, trouble so hard\r\nOh Lordy, trouble so hard\r\nDon\'t nobody know my troubles but God\r\nDon\'t nobody know my troubles but God\r\n\r\nOh Lordy, trouble so hard\r\nOh Lordy, trouble so hard\r\nDon\'t nobody know my troubles but God\r\nDon\'t nobody know my troubles but God\r\n\r\nWent in the room\r\nDidn\'t stay long\r\nLooked on the bed\r\nAnd brother was dead\r\n\r\nWent in the room\r\nDidn\'t stay long\r\nLooked on the bed\r\nAnd brother was dead\r\n\r\nOh Lordy, trouble so hard\r\nOh Lordy, trouble so hard\r\nDon\'t nobody know my troubles but God\r\nDon\'t nobody know my troubles but God\r\n\r\nOh Lordy, trouble so hard\r\nOh Lordy, trouble so hard\r\nDon\'t nobody know my troubles but God\r\nDon\'t nobody know my troubles but God\r\n\r\nOh Lordy, trouble so hard\r\nOh Lordy, trouble so hard\r\nDon\'t nobody know my troubles but God\r\nDon\'t nobody know my troubles but God\r\n\r\nOh Lordy, trouble so hard\r\nOh Lordy, trouble so hard\r\nDon\'t nobody know my troubles but God\r\nDon\'t nobody know my troubles but God\r\n\r\nOh Lordy, trouble so hard\r\nOh Lordy, trouble so hard\r\nDon\'t nobody know my troubles but God\r\nDon\'t nobody know my troubles but God', 4, 7),
(16, 'COME FLY WITH ME', 'Come fly with me, we\'ll fly, we\'ll fly away\r\nIf you can use some exotic booze\r\nThere\'s a bar in far Bombay\r\nCome on fly with me, we\'ll fly, we\'ll fly away\r\n\r\nCome fly with me, will float down to Peru\r\nIn llama-land there\'s a one-man band\r\nAnd he\'ll toot his flute for you\r\nCome on fly with me, we\'ll float down in the blue\r\n\r\nOnce I get you up there\r\nWhere the air is rarefied\r\nWe\'ll just glide\r\nStarry-eyed\r\nOnce I get you up there\r\nI\'ll be holding you so near\r\nYou might hear\r\nAll the angels cheer because we\'re together\r\n\r\nWeather-wise, it\'s such a lovely day\r\nJust say those words and we\'ll feed those birds\r\nDown to Acapulco Bay\r\nIt is perfect for a flying honeymoon, they say\r\nCome on fly with me, we\'ll fly, we\'ll fly away, we\'ll fly\r\n\r\nOnce I get you up there\r\nWhere the air is so rarefied\r\nWe\'ll gonna glide\r\nAbsolutely petrified\r\nOnce I get you up there\r\nI\'ll be holding you so awfully near\r\nYou might even hear\r\nA gang of angels cheer just because we\'re together\r\n\r\nWeather-wise, it\'s such a groovy day\r\nYou just say that words and I\'ll beat the birds\r\nDown to Acapulco Bay\r\nIt\'s perfect for a flying honeymoon, they do say\r\nCome on fly with me, we\'ll fly, we\'ll fly\r\nPack up let\'s fly away\r\n', 4, 8),
(17, 'LET IT HAPPEN', NULL, 5, 9),
(18, 'NANGS', 'But is there something more than that?\r\nBut is there something more than that?\r\nBut is there something more than that?\r\nBut is there something more than that?\r\nBut is there something more than that?\r\nBut is there something more than that?\r\nBut is there something more than that?\r\nBut is there something more than that?', 5, 9),
(19, 'THE LESS I KNOW THE BETTER', 'Someone said they left together \r\nI ran out the door to get her \r\nShe was holding hands with Trevor \r\nNot the greatest feeling ever \r\nSaid, \"Pull yourself together \r\nYou should try your luck with Heather\" \r\nThen I heard they slept together \r\nOh, the less I know the better \r\nThe less I know the better \r\n\r\nOh my love, can\'t you see yourself by my side \r\nNo surprise when you\'re on his shoulder like every night \r\nOh my love, can\'t you see that you\'re on my mind \r\nDon\'t suppose we could convince your lover to change his mind \r\nSo goodbye \r\n\r\nShe said, \"It\'s not now or never \r\nWait 10 years, we\'ll be together\" \r\nI said, \"Better late than never \r\nJust don\'t make me wait forever\" \r\nDon\'t make me wait forever \r\nDon\'t make me wait forever\r\n\r\n\r\n \r\nOh my love, can\'t you see yourself by my side? \r\nI don\'t suppose you could convince your lover to change his mind \r\n\r\nI was doing fine without ya \r\n\'Til I saw your face, now I can\'t erase \r\nGiving in to all his bullshit \r\nIs this what you want, is this who you are? \r\nI was doing fine without ya \r\n\'Til I saw your eyes turn away from mine \r\nOh, sweet darling, where he wants you \r\nSaid, \"Come on Superman, say your stupid line\" \r\nSaid, \"Come on Superman, say your stupid line\" \r\nSaid, \"Come on Superman, say your stupid line\"', 5, 9),
(20, 'PATIENCE', 'Has it really been that long? \r\nDid I count the days wrong? \r\nDid we just go back \r\nAll the way to step one? \r\n\r\nPeople ask me all the time \r\nEvery time the show\'s up \r\n\"So what you doin\' with your life?\" \r\nIt ain\'t giving up \r\n\r\nJust growing up in stages \r\n(Lay down no more) \r\nLiving life in phases \r\nAnother season changes \r\nAnd still my days are shapeless \r\n\r\nI should be flying straight, don\'t be late \r\n\'Cause time waits for no one \r\nI should be flying straight, don\'t be late \r\n\'Cause time takes from everyone \r\n\r\nI\'ve been waiting here \r\nWaiting for the day to come \r\nTake us to the place \r\nTaking us where we have gone\r\n\r\n\r\n \r\nPeople ask me all the time \r\nShowing up in ages \r\n\"So what you doin\' with your life?\" \r\nCall it giving up \r\n\r\nI\'m just growing up in stages \r\n(Lay down no more) \r\nLiving life in phases \r\nAnother season changes \r\nAnd still my ways are aimless, I know \r\nWe\'re growing up in stages \r\nAnd I\'m running out of pages \r\nGrowing up... \r\n\r\nI should be flying straight, don\'t be late \r\n\'Cause time waits for no one \r\nI should be flying straight, don\'t be late \r\n\'Cause time takes from everyone', 5, 10),
(21, 'CALL OUT MY NAME', '[Verse 1] \r\nWe found each other \r\nI helped you out of a broken place \r\nYou gave me comfort \r\nBut falling for you was my mistake \r\n\r\n[Pre-Chorus] \r\nI put you on top, I put you on top \r\nI claimed you so proud and openly \r\nAnd when times were rough, when times were rough \r\nI made sure I held you close to me \r\n\r\n[Chorus] \r\nSo call out my name (call out my name) \r\nCall out my name when I kiss you so gently \r\nI want you to stay (want you to stay) \r\nI want you to stay, even though you don’t want me \r\n\r\nGirl, why can’t you wait? (Why can’t you wait, baby?) \r\nGirl, why can’t you wait ‘til I fall out of love? \r\nWon’t you call out my name? (Call out my name) \r\nGirl, call out my name, and I’ll be on my way \r\nI’ll be on my-\r\n\r\n\r\n \r\n[Verse 2] \r\nI said I didn’t feel nothing, baby, but I lied \r\nI almost cut a piece of myself for your life \r\nGuess I was just another pit stop \r\n‘Til you made up your mind \r\nYou just wasted my time \r\nYou’re on top \r\n\r\n[Pre-Chorus] \r\nI put you on top \r\nI claimed you so proud and openly, babe \r\nAnd when times were rough, when times were rough \r\nI made sure I held you close to me ', 6, 11),
(22, 'TRY ME', 'Well, I’m not tryna break up something\r\n\r\nYou’ve been workin’ out, you’ve been steady \r\nBut I’m ready to go all the way if you let me \r\nDon’t you tempt me \r\n\r\nYou’re lookin’ grown since the last time I looked at you \r\nIt might have been, been about a couple months \r\n\r\nBut I just got the picture that you texted to me \r\nYou ain’t steady, you look ready to go all the way \r\nIf you let me take you down on me \r\n\r\n[Chorus] \r\nCan you try me? (try me), try me (try me) \r\nOnce you put your pride aside (once you put your pride aside) \r\nYou can notify me (fy me), -fy me (fy me) \r\nYou’re the best I ever had (you’re the best I ever had) \r\n\r\nBaby girl, remind me (mind me), -mind me (mind me) \r\nLet me know if it’s on (let me know) \r\nAnd you know where to find me, find me \r\nHavin’ thoughts you never had, yeah \r\n\r\nCan you try me? Try me, try me \r\nOnce you put your pride aside \r\nYou can notify me, -fy me \r\nYou’re the best I ever had \r\n\r\nBaby girl, remind me, -mind me \r\nLemme know if it’s on (let me know, baby) \r\nAnd you know where to find me (find me), find me (find me) \r\nHaving thoughts you never had, yeah\r\n\r\n[Bridge] \r\nOh, lo \r\nLo-lo-lo-lo-lo-lo \r\nLo-lo-lo-lo-lo, lo-lo-lo \r\nLo-lo-lo-lo-lo-lo \r\nBetter try me \r\n\r\n[Outro] \r\nDon’t you mess with me \r\nDon’t you mess with me \r\nThe way I kissed your scars \r\nThe way I fixed your heart \r\nDon’t you mess with me, babe \r\nDon’t you mess with me', 6, 11),
(23, 'WASTED TIMES', 'Who you give that love to now? \r\nWho you pullin’ up on? \r\nWho you gettin’ sprung for now? \r\n\r\nAnd what they got that I ain’t got? ‘Cause I got a lot \r\nDon’t make me run up on ‘em, got me blowin’ up their spot \r\n‘Cause I ain’t got no business catchin’ feelings anyway \r\nI ain’t got no business catchin’ feelings\r\n \r\n[Verse 2] \r\nCatchin’ feelings \r\nThese girls only want you when you’re winnin’ (winnin’) \r\nBut, you’ve been with me from the beginnin’ (ooh, yeah, yeah) \r\nAnd I know right now that we’re not talkin’ (not talkin’) \r\nI hope you know this dick is still an option \r\n\r\n‘Cause I’ll beat it up (I’ll beat it up, yeah) \r\nI’ll take my time to learn the way your body functions \r\nYou were equestrian, so ride it like a champion (I’ll beat it) \r\nThis sex will get you high without no other substance \r\n\r\n[Chorus] \r\nSo who do you belong to now? (Who do you belong to now?) \r\nWho you give that love to now? (Who you give that love to now?) \r\nWho you pullin’ up on? \r\nWho you gettin’ sprung for now? (Who you gettin’ sprung for now?) \r\n\r\nAnd what they got that I ain’t got? ‘Cause I got a lot (I got a lot) \r\nDon’t make me run up on ‘em, got me blowin’ up their spot (blowin’ up their spot) \r\n‘Cause I ain’t got no business catchin’ feelings anyway \r\nI ain’t got no business catchin’ feelings (feelings) \r\n\r\n[Bridge] \r\nCatchin’ feelings \r\nI ain’t got no business catchin’ feelings \r\nI ain’t got no business catchin’ feelings \r\nCatchin’ fee-fee-fee-fee- feelings\r\n\r\nI ain’t got no business catchin’ feelings \r\nI ain’t got no business catchin’ feelings \r\nCatchin’ fee-fee-fee-fee \r\n\r\n[Outro] \r\nWake up \r\nI don’t wanna wake up \r\nI don’t wanna wake up \r\nIf you ain’t layin’ next to me \r\n\r\nI don’t wanna wake up \r\nI don’t wanna wake up \r\nI don’t wanna wake up \r\nIf you ain’t layin’ next to me-e-e \r\n\r\nOn me, me, on me, oh, I \r\nOn me, on me, on me', 6, 11),
(24, 'CAN FEEL MY FACE', NULL, 6, 12),
(25, 'I CANT STOP', NULL, 7, 13),
(26, 'IVE GOR A WOMAN', NULL, 7, 13),
(27, 'MESS AROUND', NULL, 7, 13),
(28, 'HIT THE ROAD', NULL, 7, 14),
(29, 'NEW YORK', NULL, 8, 15),
(30, 'THE WAY', NULL, 8, 15),
(31, 'YOU MAKE', NULL, 8, 15),
(32, 'COME FLY', NULL, 8, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coleccion`
--

CREATE TABLE `coleccion` (
  `cod_coleccion` int(2) UNSIGNED NOT NULL,
  `cod_artistas` int(2) UNSIGNED DEFAULT NULL,
  `num_canciones` int(2) DEFAULT NULL,
  `name_coleccion` varchar(30) DEFAULT NULL,
  `cod_tipo_coleccion` int(2) UNSIGNED DEFAULT NULL,
  `anio_coleccion` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `coleccion`
--

INSERT INTO `coleccion` (`cod_coleccion`, `cod_artistas`, `num_canciones`, `name_coleccion`, `cod_tipo_coleccion`, `anio_coleccion`) VALUES
(1, 1, 10, 'VITAL SINGS', 3, 1984),
(2, 1, 33, 'EYE OF THE TIGER', 1, 1982),
(3, 2, 10, 'THRILLER', 3, 1982),
(4, 2, 33, 'DONT STOP TILL', 3, 1979),
(5, 3, 22, 'COLLECTION REY', 3, 1962),
(6, 3, 33, 'HIT THE ROAD', 1, 1961),
(7, 4, 22, 'SINATRA', 3, 1983),
(8, 4, 33, 'COME FLY WITH ME', 1, 1958),
(9, 5, 10, 'CURRENTS', 3, 2015),
(10, 5, 33, 'PATIENCE', 1, 2019),
(11, 6, 10, 'MY DEAR MELANCHOLY', 3, 2018),
(12, 6, 33, 'CANT FEEL MY FACE', 1, 2015),
(13, 7, 10, 'HOT FIVE', 3, 1928),
(14, 7, 33, 'JAZZ LIPS', 1, 1926),
(15, 8, 22, 'COLLECTION', 3, 1938),
(16, 8, 33, 'SING SING SING', 1, 1936);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `cod_genero` int(2) UNSIGNED NOT NULL,
  `tipo_genero` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`cod_genero`, `tipo_genero`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Jazz'),
(4, 'Swing');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_coleccion`
--

CREATE TABLE `tipo_coleccion` (
  `cod_tipo_coleccion` int(2) UNSIGNED NOT NULL,
  `name_coleccion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_coleccion`
--

INSERT INTO `tipo_coleccion` (`cod_tipo_coleccion`, `name_coleccion`) VALUES
(1, 'Recopilatorio'),
(2, 'sencillo'),
(3, 'album');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`cod_artistas`),
  ADD KEY `fk_cod_genero` (`cod_genero`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`cod_canciones`),
  ADD KEY `fk_cod_artistassong` (`cod_artistas`),
  ADD KEY `fk_cod_coleccionsong` (`cod_coleccion`);

--
-- Indices de la tabla `coleccion`
--
ALTER TABLE `coleccion`
  ADD PRIMARY KEY (`cod_coleccion`),
  ADD KEY `fk_cod_artistas` (`cod_artistas`),
  ADD KEY `fk_cod_tipo_coleccion` (`cod_tipo_coleccion`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`cod_genero`);

--
-- Indices de la tabla `tipo_coleccion`
--
ALTER TABLE `tipo_coleccion`
  ADD PRIMARY KEY (`cod_tipo_coleccion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `cod_artistas` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `cod_canciones` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `coleccion`
--
ALTER TABLE `coleccion`
  MODIFY `cod_coleccion` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `cod_genero` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_coleccion`
--
ALTER TABLE `tipo_coleccion`
  MODIFY `cod_tipo_coleccion` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD CONSTRAINT `fk_cod_genero` FOREIGN KEY (`cod_genero`) REFERENCES `genero` (`cod_genero`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `fk_cod_artistassong` FOREIGN KEY (`cod_artistas`) REFERENCES `artistas` (`cod_artistas`),
  ADD CONSTRAINT `fk_cod_coleccionsong` FOREIGN KEY (`cod_coleccion`) REFERENCES `coleccion` (`cod_coleccion`);

--
-- Filtros para la tabla `coleccion`
--
ALTER TABLE `coleccion`
  ADD CONSTRAINT `fk_cod_artistas` FOREIGN KEY (`cod_artistas`) REFERENCES `artistas` (`cod_artistas`),
  ADD CONSTRAINT `fk_cod_tipo_coleccion` FOREIGN KEY (`cod_tipo_coleccion`) REFERENCES `tipo_coleccion` (`cod_tipo_coleccion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
