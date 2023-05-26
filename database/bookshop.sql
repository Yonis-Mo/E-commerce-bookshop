-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 02:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(5, 'New', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 5, 'Lyrics of the Lalala Musical', '<p>If you want to buy books online, you&rsquo;ll get a better deal if you get them used. Depending on the condition you get them in, you may just end up paying a few cents plus shipping. Make sure you read through the description of the book to see if there are any damages you should be aware of.</p>\r\n\r\n<p>Be sure to read everything about the item that you want to buy. A picture of a product can be deceiving. They can make products look much smaller or bigger that they really are. Reading the description will allow you to be confident in the item you are purchasing.</p>\r\n\r\n<p>Look into online shopping clubs. Sites like ebates.com have some tremendous offers. You not only find out about sales going on at different sites, but they pay you a percentage of your purchase when you buy from those sites. It is a great way to get a bonus check every four months and get the things you need.</p>\r\n\r\n<p>Be aware of shipping order laws for online merchants. The company is supposed to send your order within the time frame listed in its ad. By law, they have 30 days to send you your order or give you an option to cancel your order. If you do not receive your order within this time frame, call the company to let them know.</p>\r\n', 'lyrics-of-lalala-musical', 89, 'lyrics-of-lalala-musical.jpg', '2023-05-12', 8),
(31, 5, '100 Selected Poems', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n\r\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n', '100-selected-poems', 350, '100-selected-poems.jpg', '2023-05-12', 5),
(32, 5, 'You Are Here', '<p>The inhabitants of a small town have long found that their lives intersect at one focal point: the local shopping mall. But business is down, stores are closing, and as the institution breathes its last gasp, the people inside it dream of something different, something more. In its pages,&nbsp;<em>You Are Here</em>&nbsp;brings this diverse group of characters vividly to life--flawed, real, lovable strangers who are wonderful company and prove unforgettable even after the last store has closed.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The only hair stylist at Sunshine Clips secretly watches YouTube primers on how to draw and paint, just as her awkward young son covertly studies new illusions for his magic act. His friend and magician&#39;s assistant, a high school cashier in the food court, has attracted the unwanted attention of a strange boy at school. She tells no one except the mall&#39;s chain bookstore manager, a failed academic living in the tiny house he built in his mother-in-law&#39;s backyard. His family is watched over by the judgmental old woman next door, whose weekly trips to Sunshine Clips hide a complicated and emotional history and will spark the moment when everything changes for them all.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Exploring how the stories we tell ourselves about ourselves are inextricably bound to the places we call home,&nbsp;<em>You Are Here&nbsp;</em>is a keenly perceptive and deeply humane portrait of a community in transition, ultimately illuminating the magical connections that can bloom from the ordinary wonder of our everyday lives.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'you-are-here', 50, 'you-are-here.jpg', '0000-00-00', 0),
(33, 5, 'Your Turn: How to Be an Adult', '<p>What does it mean to be an adult? In the twentieth century, psychologists came up with five markers of adulthood: finish your education, get a job, leave home, marry, and have children. Since then, every generation has been held to those same markers. Yet so much has changed about the world and living in it since that sequence was formulated. All of those markers are choices, and they&#39;re all valid, but any one person&#39;s choices along those lines do not make them more or less an adult.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A former Stanford dean of freshman and undergraduate advising and author of the perennial bestseller&nbsp;<em>How to Raise an Adult</em>&nbsp;and the lauded memoir&nbsp;<em>Real American</em>, Julie Lythcott-Haims has encountered hundreds of twentysomethings (and thirtysomethings, too), who, faced with those markers, feel they&#39;re just playing the part of &quot;adult,&quot; while struggling with anxiety, stress, and general unease. In&nbsp;<em>Your Turn</em>, Julie offers compassion, personal experience, and practical strategies for living a more authentic adulthood, as well as inspiration through interviews with dozens of voices from the rich diversity of the human population who have successfully launched their adult lives.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Being an adult, it turns out, is not about any particular checklist; it is instead a process, one you can get progressively better at over time, becoming more comfortable with uncertainty and gaining the knowhow to keep going. Once you begin to practice it, being an adult becomes the most complicated yet also the most abundantly rewarding and natural thing. And Julie Lythcott-Haims is here to help readers take their turn.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'your-turn-how-be-adult', 80, 'your-turn-how-be-adult.jpg', '0000-00-00', 0),
(34, 5, 'Misfits: A Personal Manifesto', '<p>When invited to deliver the MacTaggart Lecture at the Edinburgh International Television Festival, Michaela Coel touched a lot of people with her striking revelations about race, class and gender, but the person most significantly impacted was Coel herself. Building on her celebrated speech,&nbsp;<em>Misfits</em>&nbsp;immerses readers in her vision through powerful allegory and deeply personal anecdotes--from her coming of age in London public housing to her discovery of theater and her love for storytelling. And she tells of her reckoning with trauma and metamorphosis into a champion for herself, inclusivity, and radical honesty.</p>\r\n\r\n<p>With inspiring insight and wit, Coel lays bare her journey so far and invites us to reflect on our own. By embracing our differences, she says, we can transform our lives. An artist to her core, Coel holds up the path of the creative as an emblem of our need to regard one another with care and respect--and transparency.</p>\r\n\r\n<p><em>Misfits</em>&nbsp;is a triumphant call for honesty, empathy and inclusion. Championing &quot;misfits&quot; everywhere, this timely, necessary book is a rousing coming-to-power manifesto dedicated to anyone who has ever worried about fitting in.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'misfits-personal-manifesto', 100, 'misfits-personal-manifesto.jpg', '2023-05-12', 2),
(35, 5, 'The Comfort Book', '<p>The new uplifting book from Matt Haig, the #1&nbsp;<em>New York Times</em>&nbsp;bestselling author of&nbsp;<em>The Midnight Library</em>, for anyone in search of hope, looking for a path to a more meaningful life, or in need of a little encouragement.</p>\r\n\r\n<p>Named by&nbsp;<em>The Washington Post</em>&nbsp;as one of the best feel-good books of the year</p>\r\n\r\n<p>&quot;It is a strange paradox, that many of the clearest, most comforting life lessons are learnt while we are at our lowest. But then we never think about food more than when we are hungry and we never think about life rafts more than when we are thrown overboard.&quot;</p>\r\n\r\n<p><strong>THE COMFORT BOOK</strong>&nbsp;is Haig&#39;s life raft: it&#39;s a collection of notes, lists, and stories written over a span of several years that originally served as gentle reminders to Haig&#39;s future self that things are not always as dark as they may seem. Incorporating a diverse array of sources from across the world, history, science, and his own experiences, Haig offers warmth and reassurance, reminding us to slow down and appreciate the beauty and unpredictability of existence.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'comfort-book', 70, 'comfort-book.jpg', '0000-00-00', 0),
(36, 5, 'Burnout: The Secret to Unlocking the Stress Cycle', '<p>This groundbreaking book explains why women experience burnout differently than men--and provides a simple, science-based plan to help women minimize stress, manage emotions, and live a more joyful life.<br />\r\n<br />\r\nBurnout. Many women in America have experienced it. What&#39;s expected of women and what it&#39;s really like to be a woman in today&#39;s world are two very different things--and women exhaust themselves trying to close the gap between them. How can you &quot;love your body&quot; when every magazine cover has ten diet tips for becoming &quot;your best self&quot;? How do you &quot;lean in&quot; at work when you&#39;re already operating at 110 percent and aren&#39;t recognized for it? How can you live happily and healthily in a sexist world that is constantly telling you you&#39;re too fat, too needy, too noisy, and too selfish?</p>\r\n\r\n<p>Sisters Emily Nagoski, PhD, and Amelia Nagoski, DMA, are here to help end the cycle of feeling overwhelmed and exhausted. Instead of asking us to ignore the very real obstacles and societal pressures that stand between women and well-being, they explain with compassion and optimism what we&#39;re up against--and show us how to fight back. In these pages you&#39;ll learn</p>\r\n\r\n<p>- what you can do to complete the biological stress cycle--and return your body to a state of relaxation<br />\r\n- how to manage the &quot;monitor&quot; in your brain that regulates the emotion of frustration<br />\r\n- how the Bikini Industrial Complex makes it difficult for women to love their bodies--and how to defend yourself against it<br />\r\n- why rest, human connection, and befriending your inner critic are keys to recovering and preventing burnout</p>\r\n\r\n<p>With the help of eye-opening science, prescriptive advice, and helpful worksheets and exercises, all women will find something transformative in these pages--and will be empowered to create positive change. Emily and Amelia aren&#39;t here to preach the broad platitudes of expensive self-care or insist that we strive for the impossible goal of &quot;having it all.&quot; Instead, they tell us that we are enough, just as we are--and that wellness, true wellness, is within our reach.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'burnout-secret-unlocking-stress-cycle', 250, 'burnout-secret-unlocking-stress-cycle.jpg', '0000-00-00', 0),
(37, 5, 'One Long River of Song: Notes on Wonder', '<p><strong>From a &quot;born storyteller&quot; (<em>Seattle Times</em>), this playful and moving bestselling book of essays invites us into the miraculous and transcendent moments of everyday life.</strong></p>\r\n\r\n<p>When Brian Doyle passed away at the age of sixty after a bout with brain cancer, he left behind a cult-like following of devoted readers who regard his writing as one of the best-kept secrets of the twenty-first century. Doyle writes with a delightful sense of wonder about the sanctity of everyday things, and about love and connection in all their forms: spiritual love, brotherly love, romantic love, and even the love of a nine-foot sturgeon.</p>\r\n\r\n<p>At a moment when the world can sometimes feel darker than ever, Doyle&#39;s writing, which constantly evokes the humor and even bliss that life affords, is a balm. His essays manage to find, again and again, exquisite beauty in the quotidian, whether it&#39;s the awe of a child the first time she hears a river, or a husband&#39;s whiskers that a grieving widow misses seeing in her sink every morning. Through Doyle&#39;s eyes, nothing is dull.</p>\r\n\r\n<p>David James Duncan sums up Doyle&#39;s sensibilities best in his introduction to the collection: &quot;Brian Doyle lived the pleasure of bearing daily witness to quiet glories hidden in people, places and creatures of little or no size, renown, or commercial value, and he brought inimitably playful or soaring or aching or heartfelt language to his tellings.&quot; A life&#39;s work,&nbsp;<em>One Long River of Song</em>&nbsp;invites readers to experience joy and wonder in ordinary moments that become, under Doyle&#39;s rapturous and exuberant gaze, extraordinary.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'one-long-river-of-song-notes-wonder', 200, 'one-long-river-of-song-notes-wonder.jpg', '0000-00-00', 0),
(38, 5, 'Not Too Late: Changing the Climate Story from Despair to Possibility', '<p><em>Not Too Late</em>&nbsp;brings strong climate voices from around the world to address the political, scientific, social, and emotional dimensions of the most urgent issue human beings have ever faced. Accessible, encouraging, and engaging, it&#39;s an invitation to everyone to understand the issue more deeply, participate more boldly, and imagine the future more creatively.</p>\r\n\r\n<p>In concise, illuminating essays and interviews,&nbsp;<em>Not Too Late</em>&nbsp;features the voices of Indigenous activists, such as Guam-based attorney and writer Julian Aguon; climate scientists, among them Jacquelyn Gill and Edward Carr; artists, such as Marshall Islands poet and activist Kathy Je&ntilde;ntilde;til-Kijiner; and longtime organizers, including&nbsp;<em>The Tyranny of Oil</em>&nbsp;author Antonia Juhasz and&nbsp;<em>Emergent Strategy</em>&nbsp;author adrienne maree brown.</p>\r\n\r\n<p>Shaped by the clear-eyed wisdom of editors Rebecca Solnit and Thelma Young Lutunatabua, and enhanced by illustrations by David Solnit,&nbsp;<em>Not Too Late</em>&nbsp;is a guide to take us from climate crisis to climate hope.</p>\r\n\r\n<p>Contributors include Julian Aguon, Jade Begay, adrienne maree brown, Edward Carr, Renato Redantor Constantino, Joelle Gergis, Jacquelyn Gill, Mary Annaise Heglar, Mary Anne Hitt, Roshi Joan Halifax, Nikayla Jefferson, Antonia Juhasz, Kathy Jetnil Kijiner, Fenton Lutunatabua &amp; Joseph `Sikulu, Yotam Marom, Denali Nalamalapu, Leah Stokes, Farhana Sultana, and Gloria Walton.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'not-too-late-changing-climate-story-despair-possibility', 300, 'not-too-late-changing-climate-story-despair-possibility.jpg', '2023-05-12', 1),
(39, 5, 'You Exist Too Much', '<p>On a hot day in Bethlehem, a 12-year-old Palestinian-American girl is yelled at by a group of men outside the Church of the Nativity. She has exposed her legs in a biblical city, an act they deem forbidden, and their judgement will echo on through her adolescence. When our narrator finally admits to her mother that she is queer, her mother&#39;s response only intensifies a sense of shame: &quot;You exist too much,&quot; she tells her daughter.</p>\r\n\r\n<p>Told in vignettes that flash between the U.S. and the Middle East--from New York to Jordan, Lebanon, and Palestine--Zaina Arafat&#39;s debut novel traces her protagonist&#39;s progress from blushing teen to sought-after DJ and aspiring writer. In Brooklyn, she moves into an apartment with her first serious girlfriend and tries to content herself with their comfortable relationship. But soon her longings, so closely hidden during her teenage years, explode out into reckless romantic encounters and obsessions with other people. Her desire to thwart her own destructive impulses will eventually lead her to The Ledge, an unconventional treatment center that identifies her affliction as &quot;love addiction.&quot; In this strange, enclosed society she will start to consider the unnerving similarities between her own internal traumas and divisions and those of the places that have formed her.</p>\r\n\r\n<p>Opening up the fantasies and desires of one young woman caught between cultural, religious, and sexual identities,&nbsp;<em>You Exist Too Much</em>&nbsp;is a captivating story charting two of our most intense longings--for love, and a place to call home.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'you-exist-too-much', 399, 'you-exist-too-much.jpg', '0000-00-00', 0),
(40, 5, 'No Two Persons', '<p>Alice has always wanted to be a writer. Her talent is innate, but her stories remain safe and detached, until a devastating event breaks her heart open, and she creates a stunning debut novel. Her words, in turn, find their way to readers, from a teenager hiding her homelessness, to a free diver pushing himself beyond endurance, an artist furious at the world around her, a bookseller in search of love, a widower rent by grief. Each one is drawn into Alice&#39;s novel; each one discovers something different that alters their perspective, and presents new pathways forward for their lives.</p>\r\n\r\n<p>Together, their stories reveal how books can affect us in the most beautiful and unexpected of ways--and how we are all more closely connected to one another than we might think.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'no-two-persons', 359, 'no-two-persons.jpg', '0000-00-00', 0),
(41, 5, 'Born Into Crisis: A Memoir', '<p>The American mental health system is in crisis, and those affected by its shortcomings are drowning without the tools and resources they deserve and need to thrive. In Born Into Crisis, author Kenneth Nixon shares his story of growing up with a mother with severe mental illness and a family stuck in an enduring cycle of trauma. He knows firsthand the impact trauma can have on a person&#39;s life. Kenneth not only takes you on a powerful journey through his stories, he provides cogent and practical strategies for creating lasting change in our mental health system. Born Into Crisis is more than just a story of resiliency. It&#39;s also a call to action.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'born-crisis-memoir', 279, 'born-crisis-memoir.jpg', '0000-00-00', 0),
(42, 5, 'Arrangements in Blue: Notes on Loving and Living Alone', '<p>When British poet Amy Key was growing up, she envisioned a life shaped by love--and Joni Mitchell&#39;s album&nbsp;<em>Blue</em>&nbsp;was her inspiration. &quot;<em>Blue</em>&nbsp;became part of my language of intimacy,&quot; she writes, recalling the dozens of times she played the record as a teen, &quot;an intimacy of disclosure, vulnerability, unadorned feeling that I thought I&#39;d eventually share with a romantic other.&quot; As the years ticked by, she held on to this very specific idea of romance like a bottle of wine saved for a special occasion.<br />\r\n<br />\r\nBut what happens when the romance we are all told will give life meaning never presents itself Now single in her forties, Key explores the sweeping scales of romantic feeling as she has encountered them, using the album&nbsp;<em>Blue</em>&nbsp;as an expressive anchor: from the low notes of loss and unfulfilled desire--punctuated by sharp, discordant feelings of jealousy and regret--to the deep harmony of friendship, and the crescendos of sexual attraction and self-realization.<br />\r\n<br />\r\nFinding solace in Mitchell&#39;s songs, Key plumbs&nbsp;<em>Blue</em>&#39;s track list for themes that resonate with her heart&#39;s seasons. Listening to the song &quot;California,&quot; she explores the mixed emotions that come with traveling alone in a world built for couples; she juxtaposes the lonely lyrics of &quot;My Old Man&quot; with the pleasurable art of curating a perfect apartment for one; and with the utmost tenderness, she parses out her decision to not have children with the eloquent &quot;Little Green.&quot;<br />\r\n<br />\r\nMapping the evolution of her early conceptions of love through her adulthood, Key offers a tender and nakedly candid celebration of the many forms of intimacy that often go unnoticed. An essential work for both the single and the partnered,&nbsp;<em>Arrangements in Blue</em>&nbsp;is a bold manual for building a life on your own terms.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'arrangements-blue-notes-loving-and-living-alone', 149, 'arrangements-blue-notes-loving-and-living-alone.jpg', '0000-00-00', 0),
(43, 5, 'The Night Tent', '<p>Watson is having trouble sleeping. He lies awake at night, doing his best not to think about the lurking, creeping things that might be hiding in his closet or under his bed. But the more he tries, the harder it gets.</p>\r\n\r\n<p>Then he notices a mysterious light coming from under his covers. When he takes a pee&shy;k he discovers a beautiful, tented night sky full of twinkling stars. And because he isn&#39;t sleepy, he follows a path the stars show him. It leads him through a forest and onto an adventure that includes friendly creatures and a magical trolly ride to a tiny island with a very tall tower--and finally, sleep.</p>\r\n\r\n<p>Landis Blair is the author and illustrator of&nbsp;<em>The Envious Siblings and Other Morbid Nursery Rhymes</em>, as well as the illustrator of the New York Times bestseller&nbsp;<em>From Here to Eternity</em>&nbsp;by Caitlin Doughty and the graphic novel&nbsp;<em>The Hunting Accident</em>&nbsp;by David Carlson. His quirky and wonderful work is perfect for fans of Edward Gorey. With his debut picture book,&nbsp;<em>The Night Tent</em>, he celebrates the exploration of imagination and possibility that becomes so potent in the late hours of the night.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'night-tent', 199, 'night-tent.jpg', '0000-00-00', 0),
(44, 5, 'Star Splitter', '<p><strong>Survival and self-determination collide in this haunting, pulse-pounding science fiction novel from Edgar Award-winning author Matthew J. Kirby that spans both space and time.</strong></p>\r\n\r\n<p><strong>&quot;An intense, read-in-one-sitting kind of ride.&Prime;--<em>Kirkus</em>, starred review</strong></p>\r\n\r\n<p><strong>&quot;Space exploration, teleportation, and cloning experiments end in disaster in this heart-pounding thriller.&Prime;--<em>Publishers Weekly</em></strong></p>\r\n\r\n<p>2199. Deep-space exploration is a reality and teleportation is routine. But this time something seems to have gone very, very wrong. Seventeen-year-old Jessica Mathers wakes up in a lander that&#39;s crashed onto the surface of Carver 1061c, a desolate, post-extinction planet fourteen light-years from Earth. The planet she was supposed to be viewing from a ship orbiting far above.</p>\r\n\r\n<p>The corridors of the empty lander are covered in bloody hand prints; the machines are silent and dark. And outside, in the alien dirt, there are fresh graves carefully marked with names she doesn&#39;t recognize. Now Jessica must unravel the mystery of the destruction all around her--and the questionable intentions of a familiar stranger.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'star-splitter', 289, 'star-splitter.jpg', '0000-00-00', 0),
(45, 5, 'Hazel Fine Sings Along', '<p>As Hazel Fine steps out of her crummy hotel room into the bright LA sunshine, she knows she&#39;s got one, and only one, chance. Her audition for the massive talent show, The Sing Along, could change her life forever. She has the skills, what she needs now is a bit of luck.</p>\r\n\r\n<p>Soon Hazel finds herself alongside fifteen other contestants who all have the same dream: superstardom. There&#39;s the beautiful Hollywood golden child, Bella. The bright, bubbly country singer, Zoey. The extraordinarily handsome surfer/influencer, Benji. And Hazel, who has more to hide than her past. She&#39;s got the chops, but can she handle the pressure without self-combusting?</p>\r\n\r\n<p>Add in an undeniable attraction to the show&#39;s talented yet brooding musical director, Nick, and the lecherous tactics of one of the judges, Hazel soon finds herself in over her head. But with her guitar strapped to her shoulder, she&#39;s going to sing her heart out--and maybe open herself up to love at the same time. Who says you can&#39;t have it all . . .</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'hazel-fine-sings-along', 229, 'hazel-fine-sings-along.jpg', '0000-00-00', 0),
(46, 5, 'One Long Listening: A Memoir of Grief, Friendship, and Spiritual Care', '<p>How do we grieve our losses? How can we care for our spirits?&nbsp;<em>one long listening&nbsp;</em>offers enduring companionship to all who ask these searing, timeless questions.</p>\r\n\r\n<p>Immigrant daughter, novice chaplain, bereaved friend: author Chenxing Han (<strong><em>Be the Refuge</em></strong>) takes us on a pilgrimage through the wilds of grief and laughter, pain and impermanence, reconnecting us to both the heartache and inexplicable brightness of being human.</p>\r\n\r\n<p>Eddying around three autumns of Han&#39;s life,&nbsp;<em><strong>one long listening</strong></em>&nbsp;journeys from a mountaintop monastery in Taiwan to West Coast oncology wards, from oceanside Ireland to riverfront Phnom Penh. Through letters to a dying friend, bedside chaplaincy visits, and memories of a migratory childhood, Han&#39;s startling, searching memoir cuts a singular portrait of a spiritual caregiver in training.</p>\r\n\r\n<p>Just as we touch the depths, bracing for resolution, Han&#39;s swift, multilingual prose sweeps us back to unknowingness: ä¸çŸ¥æœ€è¦ªåˆ‡.&nbsp;<em>Not knowing is most intimate</em>. Chinese mothers, hillside graves. A dreamed olive tree, a lost Siberian crane. The music of scripts and silence. These shards--bright, broken, giddy, aching--are mirrors to our own lives in joy and sorrow.</p>\r\n\r\n<p>A testament to enduring connection by a fresh and urgent new literary voice,&nbsp;<strong><em>one long listening</em></strong>&nbsp;asks fearlessly into the stories we inhabit, the hopes we relinquish, and what it means simply to&nbsp;<em>be</em>, to and for the ones we love.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'one-long-listening-memoir-of-grief-friendship-and-spiritual-care', 339, 'one-long-listening-memoir-of-grief-friendship-and-spiritual-care.jpg', '2023-05-12', 1),
(47, 5, 'Crip Authorship: Disability as Method', '<p><strong>An expansive volume presenting crip approaches to writing, research, and publishing</strong></p>\r\n\r\n<p>Crip Authorship: Disability as Method is a comprehensive volume presenting the multidisciplinary methods brought into being by disability studies and activism. Mara Mills and Rebecca Sanchez have convened leading scholars, artists, and activists to explore how disability shapes authorship, transforming cultural production, aesthetics, and media.</p>\r\n\r\n<p>Starting from the premise that disability is plural and authorship is an ongoing project, this collection of thirty-five compact essays asks how knowledge about disability is produced and shared in disability studies. Crip authorship takes place within and beyond the commodity version of authorship, in books, on social media, and in creative works that will never be published. Crip authorship celebrates people, experiences, and methods that have been obscured; it also involves protest and dismantling. It can mean innovating around accessibility or attending to the false starts, dead ends, and failures resulting from mis-fit and oppression.</p>\r\n\r\n<p>The chapters draw on the expertise of international researchers and activists in the humanities, social sciences, education, arts, and design. Across five sections--Writing, Research, Genre/Form, Publishing, Media--contributors consider disability as method for creative work: practices of writing and other forms of composition; research methods and collaboration; crip aesthetics; media formats and hacks; and the capital, access, legal standing, and care networks required to publish. Designed to be accessible and engaging for students, Crip Authorship also provides theoretically sophisticated arguments in a condensed form that will make the text a key resource for disability studies scholars.</p>\r\n\r\n<p>Essays include Mel Y Chen on the temporality of writing with chronic illness; Remi Yergeau on perseveration; La Marr Jurelle Bruce on the wisdom in mad Black rants; Alison Kafer on the reliance of the manifesto genre on conceptualizations of disability; Jaipreet Virdi on public scholarship for disability justice; Ellen Samuels on the importance of disability and illness to autotheory; Xuan Thuy Nguyen on decolonial research methods for disability studies; Emily Lim Rogers on virtual ethnography; Cameron Awkward-Rich on depression and trans reading methods; Robert McRuer on crip theory in translation; Kelsie Acton on plain language writing; and Georgina Kleege on description as an access technique.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'crip-authorship-disability-as-method', 449, 'crip-authorship-disability-as-method.jpg', '0000-00-00', 0),
(48, 5, 'The Five Sorrowful Mysteries of Andy Africa', '<p>Andrew Aziza is an unusually smart fifteen-year-old in Kontagora, Nigeria. He lives with his fiercely protective mother, Gloria, and fantasizes obsessively about white girls-especially blondes. When he&#39;s not in church, at school, or hanging about town with his droogs wishing to become one of &quot;Africa&#39;s first superheroes,&quot; he&#39;s contemplating the larger questions with his teacher Zahrah and his equally brilliant friend Fatima, a Hausa-Fulani girl who has feelings for him. Together they discuss mathematical theorems, Black power, and what Andy has deemed the Curse of Africa.</p>\r\n\r\n<p>Sure enough, the reluctantly nicknamed Andy Africa soon falls hopelessly and inappropriately in love with the first white girl he lays eyes on: Eileen. But at the church party held to celebrate her arrival, multiple crises loom. An unfamiliar man there claims, despite his mother&#39;s denials, to be Andy&#39;s father, and an anti-Christian mob has gathered, headed for the church. In the ensuing havoc and its aftermath, Andy is forced to reckon with his identity and desires and determine how to live on the so-called Cursed Continent.</p>\r\n\r\n<p><em>The Five Sorrowful Mysteries of Andy Africa&nbsp;</em>announces a dazzlingly unique literary voice. Crackling with energy, this tragicomic novel provides a stunning lens into contemporary African life, the complicity of the West, and the impossible challenges of growing up in a turbulent world.</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'five-sorrowful-mysteries-of-andy-africa', 469, 'five-sorrowful-mysteries-of-andy-africa.jpg', '0000-00-00', 0),
(49, 5, 'Meet Me at the Lake', '<p>A random connection sends two strangers on a daylong adventure where they make a promise one keeps and the other breaks, with life-changing effects, in this breathtaking new novel from the&nbsp;<em>New York Times</em>&nbsp;bestselling author of&nbsp;<em>Every Summer After.</em><br />\r\n<br />\r\nFern Brookbanks has wasted far too much of her adult life thinking about Will Baxter. She spent just twenty-four hours in her early twenties with the aggravatingly attractive, idealistic artist, a chance encounter that spiraled into a daylong adventure in the city. The timing was wrong, but their connection was undeniable: they shared every secret, every dream, and made a pact to meet one year later. Fern showed up. Will didn&#39;t.</p>\r\n\r\n<p>At thirty-two, Fern&#39;s life doesn&#39;t look at all how she once imagined it would. Instead of living in the city, Fern&#39;s back home, running her mother&#39;s lakeside resort--something she vowed never to do. The place is in disarray, her ex-boyfriend&#39;s the manager, and Fern doesn&#39;t know where to begin.</p>\r\n\r\n<p>She needs a plan--a lifeline. To her surprise, it comes in the form of Will, who arrives nine years too late, with a suitcase in tow and an offer to help on his lips. Will may be the only person who understands what Fern&#39;s going through. But how could she possibly trust this expensive-suit wearing mirage who seems nothing like the young man she met all those years ago. Will is hiding something, and Fern&#39;s not sure she wants to know what it is.</p>\r\n\r\n<p>But ten years ago, Will Baxter rescued Fern. Can she do the same for him?</p>\r\n<style type=\"text/css\">.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}\r\n</style>\r\n', 'meet-me-lake', 500, 'meet-me-lake.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sales_date` date NOT NULL,
  `ccnum` varchar(255) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `seccode` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Admin', 'Book', '', '', 'author-image-placeholder.png', 1, '', '', '2018-05-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
