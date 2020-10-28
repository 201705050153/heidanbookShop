/*
SQLyog Ultimate v12.14 (64 bit)
MySQL - 5.7.26-log : Database - bookshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bookshop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bookshop`;

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `cover` varchar(45) DEFAULT NULL,
  `image1` varchar(45) DEFAULT NULL,
  `image2` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `intro` varchar(300) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_type_id_idx` (`type_id`),
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`id`,`name`,`cover`,`image1`,`image2`,`price`,`intro`,`stock`,`type_id`) values 
(9,'数据结构','picture/9-1.jpg','picture/9-1.jpg','picture/9-1.jpg',29.9,'本书对常用的数据结构做了系统的介绍，力求概念清晰，注重实际应用。全书共9章，依次介绍了数据结构的基本概念、线性表、栈和队列、串和数组、树与二叉树、图，以及查找和排序等基本技术。第9章为实验部分，共设计了11个实验，涵盖了数据结构的主要内容，以便学生在实验时参考。全书以C语言为算法描述语言，每一章后面均列举了一些典型应用实例，并对本章知识行小结，列出本章的重，以便学生学习掌握。 本书可作为应用型本科、高职高专院校计算机及相关专业的教材使用。',10,1),
(10,'象棋妙杀','picture/3-1.jpg','picture/3-1.jpg','picture/3-1.jpg',28,'象棋到底是什么？众说纷纭。它本身是一个复杂的文化现象。象棋是一个多元的载体。游戏，竞技，文化，仅仅是它承载的一部分。作为象棋的一个全国冠军、世界冠军，作者对象棋有着自己的理解和体会。作为智者的舞台，象棋具有鲜明的东方文化的特质。而其核心，就是“和谐”。这套丛书中收录的数百条经典成语、寓言和谋略故事，以及数百局精妙的象棋杀法，都经历了时间长河的检验，是被历史的潮水冲刷后，留下的闪耀着智慧之光的结晶体。在强调素质教育的今天，这套书的出版，具有积极的意义。',10,3),
(11,'看图学跆拳','picture/3-2.jpg','picture/3-2.jpg','picture/3-2.jpg',38,'运动员示范解说，标准动作高清连拍呈现 929幅高清连拍图片 解析48种标准教学动作 90分钟DVD视频教学',10,3),
(12,'免疫力','picture/2-2.jpg','picture/2-2.jpg','picture/2-2.jpg',36,'新冠疫情让我们对健康有了全新的认识，面对病毒，免疫力是*有效的药物；无数事实告诉我们，免疫力是*生命力。本书将专业的免疫力知识用通俗易懂、轻松幽默的方式呈现给读者，尤其针对免疫系统的组成、免疫防御系统的作战法则、免疫系统的阴阳平衡、如何增强免疫力、生病后如何行免疫调节等行了详尽的阐释。',10,2),
(13,'答案之书','picture/2-1.jpg','picture/2-1.jpg','picture/2-1.jpg',36,'现代都市快节奏的生活，充满压力的生活，无数的选择和困惑让你常常感觉到内心疲惫、力不从心、日渐浮躁。生活中总是有着各种问题和选择，很多时候，我们不知道该如何去选择，现在你的困惑可以轻易得到解决了。 你只要将《答案之书》合起来，用双手夹住，置于面前。想好你的问题，然后闭上双眼，将这个问题在心中默默重复。 大约10秒之后，请深吸一口气，然后睁眼，用大拇指将书翻到任意一页，那一页就写着你需要的答案！ 翻它，你的各种生活烦恼将一一得到解答。 ',10,2),
(14,'令人着迷的岛屿','picture/2-3.jpg','picture/2-3.jpg','picture/2-3.jpg',29,'这是陈丹燕自2004 年至2013 年之间四次爱尔兰旅行后所记录下的旅途故事。她像回到故乡一样行走在爱尔兰的峡谷和海岸线上，感受这个值得热爱并怜惜的国家。指引她前往那些绿岛秘境的，是乔伊斯的小说，王尔德的趣味，酋长乐队的笛声，奥康纳和U 2 的歌声，贝克特的戈多以及叶芝在20世纪写下的诗歌……这些植根于天涯海角的凯尔特悠远而神秘的文化遗存，这些无与伦比的精神花朵，让作者触摸到了爱尔兰如井中活水般生生不息的文化根魂。',10,2),
(15,'女性健身精要','picture/3-3.jpg','picture/3-3.jpg','picture/3-3.jpg',49.9,'提供超过30种训练方法、80个动作练习 全面发展力量、爆发力、敏捷性、耐力等身体素质 满足减脂、增肌、塑形。',10,3),
(16,'java并发技术','picture/9-2.jpg','picture/9-2.jpg','picture/9-2.jpg',39.9,'书中采用循序渐的讲解方式，从并发编程的底层实现机制手，逐步介绍了在设计Java并发程序时各种重要的技术、设计模式与应用，同时辅以丰富的示例代码，使得发人员能够更快地领悟Java并发编程的要领，围绕着Java平台的基础并发功能快速地构建大规模的并发应用程序。',10,1),
(18,'男人这东西','picture/2-4.jpg','picture/2-4.jpg','picture/2-4.jpg',28.6,'人的成长，无一例外都要越过形形色色的障碍、壁垒，经历一个烦难的成熟过程。  为了成为一个成熟的男人，他们必须艰辛跋涉，走过漫漫长路，在此过程中他们会体验到种种挫折、焦虑和失意。',10,2),
(19,'十二生肖童话','picture/4-1.jpg','picture/4-1.jpg','picture/4-1.jpg',136,'传统的十二生肖动物，郑渊洁却给了大家完全不同的视角，颠覆传统认知的故事，带给小读者一场想象力的饕餮盛宴。 ',10,4),
(20,'安徒生童话全集','picture/4-2.jpg','picture/4-2.jpg','picture/4-2.jpg',168,'国内著名儿童文学翻译家任溶溶老先生在年届八十之际，以盎然的童趣、斐然的文采重新翻译了这部《安徒生童话全集》。',10,4),
(21,'准备','picture/2-5.jpg','picture/2-5.jpg','picture/2-5.jpg',19,'我们并不需要为孩子在成功和满足感之间做取舍，因为他们都可以拥有。 ',10,2),
(23,'GO语言','picture/9-3.jpg','picture/9-3.jpg','picture/9-3.jpg',29.9,'Go语言结合了底层系统语言的能力以及现代语言的高级特性，旨在降低构建简单、可靠、高效软件的门槛。本书向读者提供一个专注、全面且符合语言习惯的视角。Go语言实战同时关注语言的规范和实现，涉及的内容包括语法、类型系统、并发、管道、测试，以及其他一些主题。',10,1),
(24,'男孩的学习力','picture/2-6.jpg','picture/2-6.jpg','picture/2-6.jpg',8,'专注力、思考力、逻辑力、理解力、创造力，一本书全囊括！',10,2),
(25,'游泳运动','picture/2-7.jpg','picture/2-7.jpg','picture/2-7.jpg',38,'《游泳运动从门到精通》将帮助使用者提高在泳池或公水域中的信心。《游泳运动从门到精通》经过理论与实践验证的翔实练习方法和训练计划将帮助使用者掌握以下技术自由泳、仰泳、蛙泳、蝶泳、出发、转身、公水域游泳、求生游泳8大类游泳技术。 《游泳运动从门到精通》通过177幅专业游泳运动员的全彩示范照片、详细的分步骤说明、常见错误及解决方案，帮助使用者掌握不同技术动作中手臂和腿部等身体部位的适当姿势。不同难度等级的专项训练帮助使用者有针对性地加强对技术动作的理解与实践。',10,2),
(26,'NBA年鉴','picture/2-8.jpg','picture/2-8.jpg','picture/2-8.jpg',6,'触摸时间的烙印，感受NBA的厚度！《NBA年鉴》是一部详实的NBA编年史，记录了NBA历*伟大的时代、赛事、巨星！',10,2),
(27,'厨房新主义','picture/2-2-1.jpg','picture/2-2-1.jpg','picture/2-2-1.jpg',36,'简单、快手、营养丰富，献给忙碌而追求品质的人们丰富而美好的一日三餐,营养健康，享受美食达人级料理搭配;图片风格以简单干净为主，步骤清晰明了，店级美味立等可取.是懒人必备的美食宝典。',10,2),
(28,'学茶全面入门','picture/2-2-2.jpg','picture/2-2-2.jpg','picture/2-2-2.jpg',39,'初识姚松涛是在北大的一次茶事活动中，当时他就茶的相关问题做了专业性的解答，让我印象深刻。',10,2),
(29,'零烦恼居住全书','picture/3-4.jpg','picture/3-4.jpg','picture/3-4.jpg',31.9,'房不易，但搬新家不等于从此舒心。家不是一成不变的物品，很多烦恼随着屋主带着生活习惯、家具家用品住后，才渐渐被发现。《零烦恼居住全书》帮助每个家庭提前规避问题。全书覆盖100个高频居住困扰，包括空间及动线规划的烦恼、各个空间使用功能的烦恼、和家人一起住的烦恼、满足个人爱好的烦恼、关于健康的烦恼、生活创意的烦恼六大部分，由一线设计师、装修公司、生活达人给予使用建议。从空间规划到建材家具选择，从协调家人需求到满足个人品位，从生活窍门到创意设计，帮你造和维护理想之家。',10,3),
(30,'软件测试','picture/9-4.jpg','picture/9-4.jpg','picture/9-4.jpg',39.9,'本书采用了一种简单的、易于受的风格重和经典的实例讲解，培养学生养成良好的测试习惯。书中精心设计了大量的例题，对每个试验都行了细致的解析，采用范例法教学，根据范例例题编写了每章的实验题目和习题，读者参照例题可以轻松完成，事半功倍，举一反三。',10,1),
(31,'酱料制作秘籍','picture/2-2-3.jpg','picture/2-2-3.jpg','picture/2-2-3.jpg',28,'本书除了介绍*受欢迎的近280道酱料菜品。书中所有酱料的食材都是完全天然的，没有任何化学添加剂。内容简单明了',10,2),
(32,'茶之书','picture/2-2-4.jpg','picture/2-2-4.jpg','picture/2-2-4.jpg',38,'集历代香典之大成 窥中华香道之门径，中华香学人周嘉胄，二十余年，呕心沥血，终成此书！',10,2),
(33,'水果的盛宴','picture/2-2-5.jpg','picture/2-2-5.jpg','picture/2-2-5.jpg',36,'盛宴之四季篇——《四季的盛宴》 { 四季轮转，我只要一席美味盛宴。',10,2),
(34,'蔡澜旅行食记','picture/2-2-6.jpg','picture/2-2-6.jpg','picture/2-2-6.jpg',36,'作为“香港四大才子”之一，蔡澜的文字炉火纯情、登峰造极，又趣味横生、妙语连连',10,2),
(35,'健康减肥食谱','picture/2-2-7.jpg','picture/2-2-7.jpg','picture/2-2-7.jpg',39,'好吃不长胖，减肥不节食。',10,2),
(36,'生活与花','picture/3-5.jpg','picture/3-5.jpg','picture/3-5.jpg',9.9,'《生活与花：小果带你门生活花艺》一书不是一本传统意义上的“插花”书，而是一本生活花艺书。书中的作品包括瓶花、桌花、手绑花束以及礼品装饰，每一个作品都将花艺的美学完美的融到日常生活中，比起传统的插花书更加“贴地气”，更实用。书中涵盖了将近15种花艺操作技巧和20种表现形式，无论是初学者还是花艺爱好者都一定可以从书中找到有价值的信息。作者遵循正宗欧式花艺审美来创作，呈现的作品沿袭目前花艺领域*流行的花艺风格，图片精良；除了花艺作品，作者将一些花艺的理念和美好的生活态度都融其中，传达一种优雅的氛围，带您门生活花艺美学。<br/>【推荐语】<br/>《生活与花：小果带你门生活花艺》一书不是一本传统意义',10,3),
(37,'嵌入式Linux','picture/9-5.jpg','picture/9-5.jpg','picture/9-5.jpg',29.9,' 张先凤 《朱老师物联网大讲堂》联合创始人、杰出讲师；长期从事企业级物联网项目研发和物联网相关教学工作，对物联网各关键环节技术均有所涉猎，对物联网未来发展和教学有着独特见解，立志长期扎根物联网相关研发和教学工作。',10,1),
(38,'广东精选老火汤','picture/2-2-8.jpg','picture/2-2-8.jpg','picture/2-2-8.jpg',28,'《广东精选老火汤300例》精选了三百余道广东老火汤，详细介绍了这些老火汤的选材、制作方法和决窍',10,2),
(39,'呐喊','picture/5-1.jpg','picture/5-1.jpg','picture/5-1.jpg',28,'★中国现代白话小说的山之作！一代文豪为时代呐喊、渴望自由与光明的战歌。 ★二十世纪中文小说一百强，欲读鲁迅小说，只需一本《呐喊》。 ★风行百年，畅销不衰，激励着一代代的青年勇敢前行！   ★希望本是无所谓有，无所谓无的。这正如地上的路；其实地上本没有路，走的人多了，也便成了路。',10,5),
(40,'送你一瓣月光','picture/5-2.jpg','picture/5-2.jpg','picture/5-2.jpg',16,'现代人的烟火生活中弥漫着诗词与人性的薄雾，呈现着对历史人物的另类悲悯。孔子、张若虚、李白、杜甫、李商隐、李清照、朱淑真、纳兰脱离了原来模样，一转角的刹那又一次惊鸿一瞥。',10,5),
(41,'创意手工生活','picture/1.jpg','picture/1.jpg','picture/1.jpg',36,'本书旨在呼唤起人们对美好生活的向往，引导大众如何享受生活，创造生活。首先为读者介绍一些欧美、日韩比较流行的、新鲜的手工材料，让读者对新材料有一定的认知和了解。同时让更多的大众读者了解“成人”手工的概念。然后是CYET的手工达人访谈。 本书以一种轻松的阅读方式，让读者跟随者CYET以第一视角的角度去走访这些手工达人，让大家了解这些手工达人们是如何让自己的生活变的如此多姿多彩的。',10,2),
(43,'阳台菜园','picture/3-6.jpg','picture/3-6.jpg','picture/3-6.jpg',49.9,'日本园艺作家长达25年的阳台种菜实战经验分享，所有步骤可视化，从培土到播种、定植、制作蚯蚓堆肥、除虫除草',10,3),
(44,'HTML与CSS教程','picture/9-6.jpg','picture/9-6.jpg','picture/9-6.jpg',39.9,'本书内容结合笔者在前后端大量发中的实战经验，系统化知识，浓缩精华，用通俗易懂的语言直学习者的痛。通过本书，能让你从“野生网页设计师”水平提升达到“真正前端工程师”水平。 全书分为两大部分：首部分是HTML阶内容，主要介绍HTML高级技巧和HTML语义化；第二部分是CSS阶内容，主要介绍CSS发技巧、代码规范、性能优化、属性本质、重要概念（如包含块、BFC和IFC等）。',10,1),
(45,'中宫','picture/7-1.jpg','picture/7-1.jpg','picture/7-1.jpg',28,'“你是秋振宇送给朕的礼物，用来代替他的项上人头。你父亲有没有告诉你，要顺从于朕？”项晔手中的玉骨扇轻轻一扇。“祖母说，秋家的女儿，不需要顺从。”珉儿仰视着这个浴血而来的王者，眼中没有半分卑怯。',10,11),
(46,'木工完全手册','picture/2.jpg','picture/2.jpg','picture/2.jpg',38,'雄踞法国专业书畅销榜单18年，一本即刻上手实操的权威木工手册 ★超过2000张手绘图，深度呈现木工的严谨思维',10,2),
(47,'零基础学电工','picture/6-1.jpg','picture/6-1.jpg','picture/6-1.jpg',49.99,'《零基础学电工电路：识图、安装与维修》以电工领域的市场需求作为导向，根据国家相关职业资格标准安排电工电路识图及维修技能的学习内容。结合电工行业的培训特色和读者学习习惯，将电工电路识图、安装维修的知识和相关技能分成17个章节，内容包括电工识图基础、基本元器件的识读、基础电子电路的识读、实用单元电路的识读、电工电路的控制关系、电气线路的敷设、电气线路的线与安装、电动机常用控制电路及线、PLC常用控制电路及线、变频器常用控制电路及线、配电线路布线与安装、照明线路布线与安装、智能家居系统的布线、配电及照明线路的检修调试、空调器电路维修、电动自行车维修、工业及农机设备维修。',10,8),
(48,'折纸飞机大全','picture/3.jpg','picture/3.jpg','picture/3.jpg',36,'纸飞机的样式多种多样，而且总会有新的样式在纸飞机爱好者的手中诞生。',10,2),
(49,'固态存储技术原理','picture/6-2.jpg','picture/6-2.jpg','picture/6-2.jpg',39,'随着计算机技术的迅猛发展，人类社会到一个崭新的时代。相伴而来的电子存储技术正在改变人们的学习、生活和工作方式，U盘、固态硬盘、数码相机、手机等各类电子存储设备的广泛普及，其数据安全问题已经成为人们普遍关注的问题，数据恢复技术从业人员及相关专业学生以及广大电子设备使用者，应该了解掌握一定的电子设备的数据安全和数据恢复知识和一些基本技能。 本书合理组织理论与实践内容，目的是为了使读者能够了解Flash设备数据存储及其数据恢复的基本知识，掌握相关的恢复技能等。本书构建了一个个鲜明的项目，层次清楚，概念精准，由浅深，通俗易懂，既有基本知识、基本原理，又能够密切联系实际。',10,8),
(50,'深不可测：刘伯温','picture/3-7.jpg','picture/3-7.jpg','picture/3-7.jpg',29.9,'《深不可测：刘伯温》是通俗历史旗手度阴山的经典杰作。 ◆三分天下诸葛亮，一统江山刘伯温！ ',10,3),
(51,'Python密码学','picture/9-7.jpg','picture/9-7.jpg','picture/9-7.jpg',38.9,'Python是一种高级程序设计语言，因其简洁、易读及可扩展性日渐成为程序设计领域备受推崇的语言。同时，Python语言在算法领域也得到了很好的应用。本书通过理论和实例相结合的方式介绍了多种加密算法。全书共分24章，由浅深地介绍了与密码学编程相关的各类基础知识、编程技巧以及算法实现。除此之外，本书还提供了相应的源码下载资源，以供读者更好地行探索和学习。本书适合Python初学者和密码学的初学者，也适合信息安全从业人员。',10,1),
(52,'钩针基础入门','picture/4.jpg','picture/4.jpg','picture/4.jpg',28,'由详细的编织图、清晰标明的编织图片并搭配简明扼要的文字说明，让各种针法和编织技巧一目了然',10,2),
(53,'武道神尊','picture/7-2.jpg','picture/7-2.jpg','picture/7-2.jpg',38,'中元大陆，群雄并立，万道争锋。少年秦鸿得灵火，炼真身，闯秘境，夺造化，报血海深仇，主宰天下。八大圣族皆为蝼蚁，各路天骄我一招轰杀！',10,11),
(54,'簪花录','picture/5.jpg','picture/5.jpg','picture/5.jpg',36,'百万粉丝的抖音手工大V@不可思议的Yuki酱 热缩片手工饰品制作立体热缩片的华丽变身 汉服古风饰品手作坑指南',10,2),
(55,'观手识人','picture/6.jpg','picture/6.jpg','picture/6.jpg',36,'本书作者是英国的手相书畅销作家，书中体现了作者20多年来对手相的科学的理论研究和来自实践的种种经验，并分成24章，每个小时一章来讲述。这些内容包括怎样通过大脑与手相之间的内在关系、手指、掌纹等等来更加高效地与人交道。其中1、2小时讲述手相总论；3～10小时分别讲述各个手指和指纹的表现及其规律；11～19小时讲述各种掌纹及其规律，最后几个小时告诉读者的是结合指纹和掌纹来识别他人的方法以及手相术与心理学相结合的种种规律。',10,2),
(56,'乾坤万年历','picture/7.jpg','picture/7.jpg','picture/7.jpg',19,'历来是我国广大老百姓生活中喜闻乐见的工具书。本书以中国历史的时间顺序为主线索。',10,2),
(57,'阅读的力量','picture/3-8.jpg','picture/3-8.jpg','picture/3-8.jpg',59.9,'横扫全美各大影响力图书榜！《书单》《出版人周刊》《纽约时报》《科克斯书评》《今日美国》《波士顿环球报》',10,3),
(58,'Nginx应用与实战','picture/9-8.jpg','picture/9-8.jpg','picture/9-8.jpg',79.9,'这是一部基于Nginx新版本和云原生应用场景系统讲解Nginx的著作，是作者十余年运维经验的总结。本书从应用、运维以及与Kubernetes和微服务集成3个维度对Nginx的基础知识、工作原理、核心应用、运维管理、集成扩展等重点内容进行了全面、细致的讲解。完全以实战为导向，包含大量的配置案例和示例代码，能帮助读者快速掌握并在实际工作中熟练应用Nginx。',10,1),
(59,'生活良方','picture/8.jpg','picture/8.jpg','picture/8.jpg',28,'生活良方：让日子变美的32个提案（塔莎奶奶的美好生活，明天也是小春日和。日子很美，让人很想流泪。）',10,2),
(61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL,
  `amount` int(6) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `paytype` tinyint(1) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_idx` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

/*Data for the table `order` */

insert  into `order`(`id`,`total`,`amount`,`status`,`paytype`,`name`,`phone`,`address`,`datetime`,`user_id`) values 
(82,28,1,2,3,'管理员','3330048','中华人民共和国','2020-05-28 09:54:25',1),
(83,72,2,4,2,'管理员','3330048','中华人民共和国','2020-05-28 09:54:32',1),
(84,36,1,4,2,'管理员','3330048','中华人民共和国','2020-05-28 09:54:46',1),
(85,28,1,2,2,'randy','18819773661','清远','2020-05-28 10:04:48',37),
(86,38,1,2,3,'randy','18819773661','清远','2020-05-28 10:05:00',37),
(87,72,2,2,2,'randy','18819773661','清远','2020-05-28 10:10:33',37),
(88,74,2,3,1,'randy','18819773661','清远','2020-05-28 10:10:46',37),
(89,98.4,3,2,2,'syz','15773852102','湖南长沙','2020-09-12 14:37:34',38);

/*Table structure for table `orderitem` */

DROP TABLE IF EXISTS `orderitem`;

CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_id_idx` (`order_id`),
  KEY `fk_orderitem_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderitem_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

/*Data for the table `orderitem` */

insert  into `orderitem`(`id`,`price`,`amount`,`goods_id`,`order_id`) values 
(85,28,1,10,82),
(86,36,2,12,83),
(87,36,1,12,84),
(88,28,1,10,85),
(89,38,1,11,86),
(90,36,2,20,87),
(91,38,1,11,88),
(92,36,1,12,88),
(93,39.9,1,16,89),
(94,28.6,1,18,89),
(95,29.9,1,9,89);

/*Table structure for table `recommend` */

DROP TABLE IF EXISTS `recommend`;

CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

/*Data for the table `recommend` */

insert  into `recommend`(`id`,`type`,`goods_id`) values 
(11,3,12),
(12,3,13),
(13,3,14),
(14,3,15),
(15,3,16),
(17,3,18),
(18,3,19),
(33,2,10),
(34,2,11),
(35,2,12),
(36,2,13),
(37,2,14),
(38,2,15),
(39,2,16),
(40,2,18),
(41,2,26),
(44,3,10),
(47,2,9),
(48,3,9),
(49,1,13);

/*Table structure for table `type` */

DROP TABLE IF EXISTS `type`;

CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `type` */

insert  into `type`(`id`,`name`) values 
(1,'教辅'),
(2,'生活'),
(3,'社科'),
(4,'儿童'),
(5,'文艺'),
(8,'科技'),
(11,'网络文学');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `isadmin` bit(1) DEFAULT NULL,
  `isvalidate` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`email`,`password`,`name`,`phone`,`address`,`isadmin`,`isvalidate`) values 
(1,'admin','admin@vilicode.com','admin','管理员','3330048','中华人民共和国','','\0'),
(37,'randy','2396129937@qq.com','randy','randy','18819773661','清远东城','\0','\0'),
(38,'syz','3324779867@qq.com','pch520','syz','15773852102','湖南长沙','\0','\0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
