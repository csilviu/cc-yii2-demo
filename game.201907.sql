/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`game` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `game`;

/*Table structure for table `producator` */

DROP TABLE IF EXISTS `producator`;

CREATE TABLE `producator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `producator` */

insert  into `producator`(`id`,`name`) values 
(8,'AMD'),
(6,'Dell'),
(5,'Hewlet Packard'),
(1,'IBM'),
(7,'Intel'),
(2,'Microsoft'),
(3,'Nvidia'),
(4,'Samsung');

/*Table structure for table `produs` */

DROP TABLE IF EXISTS `produs`;

CREATE TABLE `produs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriere` text COLLATE utf8mb4_unicode_ci,
  `producator` int(11) NOT NULL,
  `poza` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `producator` (`producator`),
  CONSTRAINT `producator` FOREIGN KEY (`producator`) REFERENCES `producator` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `produs` */

insert  into `produs`(`id`,`name`,`descriere`,`producator`,`poza`) values 
(1,'adsf1','asdfasdgf',5,''),
(2,'produs 2','descriere 2',1,''),
(3,'another product','my description',1,''),
(4,'asdf','asdf',8,''),
(5,'asdf2111','asdf',8,''),
(6,'dsf','asdf',8,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\Z( % !1!%)+...383-7(-.-\n\n\n\r\Z-%+-+---/-+--++--+--+---/+----+--+--+------+-------7ÿÀ\0\0á\0á\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0E\0\n\0\0\0\0!1\"AQaq‘¡2±#BrÁð3Cb‚’Ñs¢²RSƒÒáDc“ÂÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\"\0\0\0\0\0\0\0\0\0!1A\"QaqÿÚ\0\0\0?\0î4¥(¥(¥(¥(¥(¥(¥(¥(¥(¥(¥(¥(¥(¥(¥(¥(¥(¥(‡µq¢žSÁTŸm™µeÖ‡ÊvÕÊ‹\0:ž›yhƒÖçÊŒåu±r—*›<*ÖâT‘ýÅKa9KÃ7Î’\'~Œ=ý«žC·¤\\3áBÇ•É%Êôõ¶€ÞÝCÂ¬ì|,åÄÁÎ~1æMEótO\ZrÇ?nÑõaI±—!ì‘Y\rÎ tÀêÖ¤àÆ#‹£«~é\\[là±ò€$‚@‚Ý$©`¹s‘˜’Äq5ÑÉÔ<g·¤ºùÚ’_m\\¬}š½½p,ôââ°LLž³ó^¦°|¥cGÉâ¶>ªGÒ®Žÿ\0Ó²R¹®•Uýî‡z0>ÆßZ›Âr‹~24gø‘¾«qQ{ão¥Ea7‡/ÉˆˆßøÀ>†¤ÕÁàoEÜUJó5/E{JRJRJRJRJRJRJRJR‚‰\\\0I6\0Opã\\7zv™žf~¦kŽå\Z(ô±ó®—ÊÓæ°åéKÑþAóŸ ó®Y±°GˆHú™º]È5céz±ÎótØ·KuªÏ:Ü6¨‡LÞ=CÎº:`Ò4Ã€ÀN0XXX/WpQWqÏ­ª7’;¢‹w\Z¤Î­£\'¨{ÖIK-ˆØ˜9~h#¿h\\§Õj3¸XV¾BéÇåp@Óˆ+ed•lÅåDÓAÅòs0ýž%ì’2ª{T.+sq©û”vÇ(>Îº¿HpcT4Í×câ(v¸~?gÍùÈ%NóæT*C\r· † !šfI#bZ=nQŠdVà-snªëmŒíOCQØì`D°«~(Ôûñ¥›NØæ¸>R6Œ_ûŒãÿ\0‘U¿ }ëbÙœ°â.L*HOü¼àŸ.•dâ·gIòør:{jŽnNŠ6|>.Tm@6S¡ Êx\Z¬ö~Û§þ§Bƒ4ðK\ZæÉZ9¾PÄ~»jWÊÎ—åÅ\"“Ô÷Cþ`+ŽmmÉÇ³fi!˜ª…³#e]m–ÚxÔ$Û¹‹OŸörÙ´ëÕoRåNaqñÈ/ˆãµX¥dÞ¾bÇm(‘E‡hØgPdPTC	Åäã«\0tí«›#zñêê‘ã]s,ø‹ÞÂ¤ñµî±ôÈ¯kŠOÊN+ªL±ÌX#*´`SpÍž\'°À€l/j•Øü¯s¬ðlXõÇ\"Û·÷™GoIw6½Úº®­JÒðü¦`z\"C,%€`%Œü§ƒ]3yÔæyðsþËžÀë~íµNø˜¥QœW”]®R”¢”¥(ã\Zö¢w—kŒ,\r.…´ÞcÀ~~TKtçœ¥M!Ä•?*¨É¯Ýë>¤ú\nÈäïgYr5n‚x\r\\ùœ£ÈÖ±µ6ÄØÙ…ì]ÈE\0h.t\0v\\ŠêÛ\0±,p–5ý¶ù˜÷“sçWÃyÚW™ç‰ý\nÃ‘®oYx©4µ`µGG„U&ª¡ ¶kÃU\Z¶EŒ*‡YªÐXu¬Yb¬ò+\ZZœFªŸGÊHð59 ¬Ó®‚\ZLLë¢È|õªÝÄ/ÌˆÖî±ö¬É—éXs/…Ñ·#}$€‹ø0ôj¨ì#UHóv[#{TTëX¼ñÆSbàh16îè*abâ¯•øßÆµ¬66XI\nÅuRVÀ‚Èn·Cc­oGkó“XYn*~žõ¤ïCeÄÛ†eÎä_Ð{UòÆSÜaI!$³jI$žóÇÂ¦÷Sóâ!‰BÜH¤5†k’8ž$_Ê±vÏ3f€[\0]–Ä)¹\Zœº^Ük¤rO²±RÎªD2­3·éA°cüÕŒ²—ãíÞg^Úö«Éú½*vþÝ?‹”¥+jR” W&å[mæ”aÔé»~6’Ÿó\Zé›_¸xd™þXÔ±òà<Í‡|ãµ¶ƒK+Hæå˜³x“sýªÇ<ùá¸òm€Ï3NGF§ø¢ÛÀ>•Õð‹•I=JÖ·7cóh£?3}¤ŸÀÓùFQäke•»8pô¥nM-H÷5l×¦©5¯\r*¶¾Øá°éÏL¶2khàhfqÀž¤[±¿W\Z	V«8‰•Ý•Gk>µ®&Ü/Œ™~*‡ÃGlLy{\\Jz!I¿q–Ýµ™ƒÙ[=Ï98iM¾{G#ÞÇ1 ¿.ßÂ)³bðàÿ\0ýÕ\\;SæÉˆ…ðÊ‡èjÁ|\ZÍðÙpâb¹Äy6Mz@eî¯1[»ƒ“GÂaÛÆ¿¨‚E…XqP2ntI®iðŒ8sRp1Iu#ÂÕ€ÛÇˆÁH±mF‰ÎXñqž¡2}ÃÞ4÷ Ù%‡*Öt¾U‹-f T|Ý¦¥g^5ˆ4ó==•©Oµv=ß]Ö¶·6T·Y­ö¿¯ý¾÷ô šØîdÆ!HÒÇ³õzƒÞLP“åMÔ«øWO­êcd7ÃàäœèÏ¢ŸsåZ¶nniøKa]´@Ä+H¹±##®Ú×ÑÜ›l®c–i>Ðÿ\07Ê?¤\nàû³#@|îÁx¹òPkéøc\n\0À\0€áYó—øÇOíí©UZ•§G´¥(á¯jÜ®M€“ØAÎ¹`ÛA\"L0:¿Mÿ\0=æuþZç»‡²~\'atídìÊ¤Xy±QçVw»kœ^*Iz‹½Èº ô×Îº&\'šÃHéb\rÿ\0é­Â3˜ÿ\0MW>WmÞk±ëüøšñš½‘í§ë¾¬æ¨ì3PŸÕê‹ÕW ˆÞÝªp˜9ñóG)øÏE}Íü«v0Ÿ	³UÐ%hŽ!ÏšwC!¿i¹\n;…JïË¬4ØrmÎ¡Pßð·o\"h[¥¾\'m´…áèÇ)ù\n”1· ãB-{\Z\rvL<±ìØ°ö?µ±Ü››WÐ‘Ô3XùµLm‡[Wgáph\"‘\0’iVà˜×­õ¶¢6¿øõÓ#æ¦Ë*ór[Tekw«ÛÊ°ÿ\0Ø8n~LW7ö²GÍ»æct  •tP:Ø3™ñ8Ý´Ó¼PÂåT*©ç`P/KP:Ú®¯(8¶‰±j¸\n¶žoˆ{@6¿¯*ØpÛ‡X\\Fg›šœt¬DMšù–ß6¡xõ-Ea7[öPb°Û:hc²™r°”Æ4ÒÀÜ5îï ÷{¶Ô“Ï³°øi3ˆ+;•%XDzšßÃÎŸRÛõøa•B„¢•#‚9»³šÕ\n¸	pûC8gxà†(°ˆ‚ùÁ\nT‹›‹5Éáœ“T¾ÄÇm7VÇ†Ã)Ì0ÈÝ6ül5$õèÖ‚sr]ŽÏÃ½ù¡kñËrÿ\0H%0¬œ@\0\0\0\0À º¬9 ˜TdË­JbO…FÏÀš\r_mµØžÊÑñ\ndp£ï<º¿?ZÞ÷rBæÝöë­kupœæ ½¬±‹÷ÐÖ o¤ÜÚÅ‡uC=ª¡öt°:_®¼ÛXÓ>!äê&Àv(Ñ}µó¬½™‡g‘x³\0=Fµ}9uo\ZvÞMw?áåø’/5dÎ,s9éx\0<Ít±X[ 73k–È·\'‰Ðjk:±†:Ž¼z)JVÂ”¥´¾Tö×ÃàÊ)³ÌrÐ¼d>š5nf¸7)»oâ1Œô\"û5×KƒÓo3§•XçÕËS_h‡³Û2D¼d`·ì\Z–o%|«¾a\"TPY@¸(úzW8ä¯e[œÄ‘ÃìSÄ€Ò|2¯™®’æÂÞgò¥:xê-LÚÚ¬Õ†}iÎTtdªëXÞÍ«,b0Ì#\'7q\ZšYm×aÃ¼Õ)º…2¼XühwyÌŠý¡â~ŽºA5¶ö&1,ƒªú2÷«WÈÖ?ûÓ‚çy‹‡œÍ—.qóÃ~î½KëAÍ±˜<-ŸŽ’{…lßêŒ‹ùƒV†x¡\'$ÑNiˆ“ßÒT=ük¦^¨•À$\08’l\0í$è5;WxÆŸwå‹ò–¼ã“Nnûí\0÷ÌßJéw¾¼GháëVÍ¿ºXdQ¹ÆÏÎÊì,]Qp\0*‹’I6•4Õ[\Z \nL{ªÄµvO*´â‚?/áXÅvUfõ!6½•/+j¨¤Ÿ\0(5-ö˜4…AèÄ 3j}ª7Ãlö~1²ø¿!zËÚ%¤ šWÌÞ.oì*~ñ]4€p‰u·k`=è5Ü\ZÜÞº%{ŸÅ†\"ê¶¿Ÿ`Þ¢¢7\'Ñw×¤23›(åbª½5Ê,lÀ‹×\\ä‡e‰ç96\0h×Kê:9}MsË=üXíçnŠ¢ª¯{])JP)JðÐAï¦ØøL$²ýëeOÆÚ/§*ùæ$g}5$Øw±6QâIµÐ9aÛyæL2žŒC3wÈÃ@|ßÕQ¼™l®sÎŸ’Ÿ¸»\\D<ºMüµcÍ~yñéÒöÊxc€~ílOüNuvókÖN:M8ñ¬¬:hOfŸÞ£qrj=1Šd§9ÙT9ª…è5½»Šø}£.ec‡wˆ:«0ŠV{’áA 2éz¯zwž96tÒa&å!2Ù‚§:ÁK]€à¬uï­•³ë^Î‚E) ¬*Ú‚AãA«ï¦\n(¶z`\"D-3Ea|Å–ò‹jlbÝôÃlõÇã1Vvƒ±á£Ë#¥åP\Zi:Üå©­•»ØL3 ÃÇ‘lÊ½ 	&ÃÂ²v&ÌL4\\ÔyˆÌìYˆ,ÌìY˜›wöPixM¼#À»Kàà…ÌP—³K9RsÈòOpT5À\0Þ§·kiO‹ÁK™‘¥Y\'…&µ£“!Ê³eãÇM.+eìÌ~#†…p“ÀÌm+HŽ»5UX1Ž¢Õ´ááTP¡UGXAeÌukÐjø­ÛuÌ0îÐ)TÃªÄ@´›¼¥´Ë%Ä„‘Ò Sû_\"DÍ+È-‘‚†bE$þ­Y—­[x­6;†â¶)Çtc,æojÝ¥¼ÀÙdI´\0—H]ÑoÚÊ\nËÂcdY#pèÃFS¡×Z‹Úûo…ç%l/9\n]ƒÅ*æ\nËHŒºõè/Tnn¢€³Í<1z+Î…¯KkA4Õ;uVCV4ô8¶°¿¨½&H u•º_ucë–¤±]\'U&µ¹ŠÏ4†ýÇ6<µsëqA…Pey›å‰IüþƒÞ¹þ&s4ÎçRÌ[Ôè=,+rÞ	ùœ¸4ííÅ¾€yÔélîveÌ	Qw{(nŠ·D‘˜p¿]KxJÚ1nc\n\"e7²©º¶’=¤•‘®Ž «c›guÝL1…Š2,B‚ß‰µ#òò®E±¶Åm4=‰y^Ù\ZóŒ”_-ùµ³nÝsÂní^Ò”®¡JRX[_¸xd™Í–5,|…íçÃÎ³kšòÇ¶rF˜U:Ès½º•~Qæ~”c<»fÜ¯‹i¦y_æv,|õ·—!]“qöWÃáâÏ/Ú¾šŒÀKw(d×-ÜÍñX¨ã:­óIþ\ZjÃºú/wt*c`[}ZÇKrór |O‰¨V7«Ø¼Iv$ðêŒXTvPÕeš¯·p÷«_®fªÃ\n¶O]xmZš¸¦±®)ï È-T)ýZ½ƒÛÔt»%9ÙgVe–H„Y´9I*T8ž¾Ê‘j¤ƒA©m<Ò–Ã1Ã‘J4àº¶FÑþÆÄf ‘ó[ZØ0Xqi\Zü¨¡G€JË\"­\Z\n°æ{^ýU‘3iP»s2h\"±›LGÎK~\0ÛÇ«ò­s¹²§MÏÕåX;_\ZNT¿]Ï—èVfÆ”$rb‚)·…ûb¹ÌHŒj\"<ø¿ÿ\0‘äkbÜì*¤M#é5dÑ#³¶¶/$(‰ò­+¦IKrMÏycsîk¤í`Ã*)$å­™ˆ&àÉ••Bº³”\\­r,k—Rêh»’<sˆÆ½óHüÚ“ÆËÒsßvk^ßvºUDn¶Êø\\$0u¢ÇµÎ®|É5/[Æj)JÐR” ¢Y\0“`5&¾{ßÌ\\³OÏº•IúQ^ÚÄ§*®ºÛ‰®±ÊFØáy¼ÅLí’ëó,½u¿]´äW-Þýª†$Š¹$´Œ›*ôaŠ.ŽÉG.yjÝT×$-‰o¼%„—\'Ü-n;Õˆh¡iõ)ÌêÉ[Ø‘á{ø^¹>äï\0Áb9Æ¹×$–âî¼¤pì&»fxq]dÔ‹Ajö5kXñÒ>P¢ô\\Ô\Zëõ©ÌØ\ro+WÞ.M$G\'ªÈx)â;¼+TŸwq0›˜%ŽÝkÿ\0ŠËNÄ˜«éõª¹ë×‡kâcá‰w>¿ë¤ ß<ZñH<> ÛÚ›EœWªàu×8‹””\ZM‹Þ¶aïcRxMûÁ·ï²~5+ïkUÂ½\\F­o·#qt•ÁúVjí;uûPOzö¡£Ú€VD{AOÞ ‘¯/XË‹µQ˜PVjÜ†……[v µ+V¾[G\\·áùVå4¶×%Þ<ii‰âÏö¤TÓHYøè<úýÏµLo3Œ>8>ôšŸÔú›\nÂÝì\'9:ƒÁ:L]¦±7£fÅ°*YÀqõ7ô ’Ü\\åx\'O‹Žù2©!‹ZÞÐ6.\0â¶”Q6«ÚKu`K©½Ø1=\"ì.E¯—º¡7OÍaÌ…ONìÝýœ(*J¤ˆÎ@âH­û’]œDRâXÓ>UüHÓ¸±oJåyËDõjªR»)J)J]¼[5¶¤Ø²¦9¨EôyAÌþ¼/Þ+•`°M Š4fß¢8è5½íku×JÚüšâ„ŒøgB.HÝÃ¥mOkŸî®;\r(™ðŒåIcqÎ£\\æ\nI<O\Zç:ºó:ÕgÁË¯­À7d`2µò›‘ÀØÛ¶Õ‰3ÃÍ$DñÈää4>`Öí´±ÓIaÞ,`ò/J3|ì£\0à\0­V]*ñ¼‡ö­cÔÇ(™|k?Ê–Ó†ÁÝeþdj}Ó-lX.YÔ·Áÿ\0õÉù8ZÐÝ;G­X“§ªºh™ºÄ;ó±ñBÒÆÑß;ŸÕaQ»n-„cgLB_î¬LK’x(_ï\\Í°#´ÜkágU WKØú\\Ú³[™mF+nÙnÐ×µ½b‰‡Xý{Qðì8©ô5FZ*üL—‡}Ïæ*w¶$QÐ™…¿ŠþÚý+Yµ2ÐnQïV!Tf!üE·ö¬¨7æß<N½ë¯ÖÕ¢óÚmß¯Ö¯a»ª\r2¨ñcaõ é¸MíFÔ9^<A\'ð“¨p|ê¹¸¸ÉS\Z=‰ÆÝU>Ê‘/šÂæ Þ Þñ©¶¨aÄq®dŽG#¹…dÅ´%Q¦Sàuôª:ÐÚ\n±¹,8¥qüD¹¤fê¹>ú~»«c”É4e‰k–ÝG®õg|ö*ÄñVË\" ÇÇ¯¯^úŠÈØ\rÌ`æÄð69Oià¢µ‰†id\0³\0RÄØSÛßˆ	‡‡Vg·v€2O•^ÜLØÉ–â%¿IC&v9cvA\'U©•ÔFËµã	\ZÂ‹Òb±/DZëÑ½™‹ÆÆGÔX–»6ÄÙË‡‚(„h«ãa©ó7®cºX/ˆÚK×sr|Âêš¦v.×î®¸séýiJWP¥)@¥)Aå«ËUT ³6FUoÖ£gÝœ3þèÚº}*b•›Œ¾bËcQÇn{êEaù}k[Çò\\§åU?…Šû×R¯-Yürxá.¯˜àûS“‰c¹ þ\\ßé¬Šò`óÆÁ˜;ÄÖ+FÄ–1ºæÚ\0t¶¾†µcâpQÈ-$hã±”­L±ÏZ•&8ÏN<øGSž\rŽ§ís*ó°”œÒmÔµŒÝ¼¹Œl Ž|Œ³)ùH*Å%\nËR@×3Ù­vvãà¥ãCÛöÞÕ®íJ\"qöx‡_Æªà}+ŸoR5¯ªåÛC“Ð¹²L@À	\"uáu\Zf\\ì\rÂ‹Í¸T<û‰ ^QÍ²½Û›2››/kÓ\'äãhÁ¬+Zäd‘‘®E‰\0é¨ÓEO†ÚpË…g“æ‰\\eHUÍ¹,Æâúë~º¿“)å5\\·²&O™hªFòzWmbóL¦ö\"ÚÞº”ÊVË\"0+ÍÞñ±»å	Êrªè«aØ*†Å`ä8Ô¼\Z1´×UB~vSg¯€ê­N´4×p¤cÙ¤ˆ‰ìéÖõ°á9U¾“aTŽÔÉÀÿ\0U[Ånö\nLÆ6PWŸ#$ÈGAVP\"©#Žf#Î±1û”µ¤Ð3i$N§HÃ %n¥Üd\ZéÕÂ·3•{Û²çý¢¿[G§›-À«ßìˆŠHïü./é{Ö‡&æb/ÐPæá~ÊEk±LùEÍ—PµDÍ²¤[.3ëÔxàl|mZÜMº,û·Í+dÄ‡©¸iÂæõµvÜjW4‚fEò)í\'¬÷\nÖÊHE²¥¿\0òã^¦	˜Ýüz¼-Â®Žâi\ZizG¯¯Ç°h,:¼MtÞ€aðË#X3\\F\ZÂéG7-rI*GxáZ~»/¯mºërÇJ$XàÃŸÛº\"åÈ¦Ú\"gGE…Ù‰¿\\ú»“F7nÉFÍÉ…lAlC½¿v·XýzMüÕ¼ŠÅÙ˜E†$‰–5U_ü«*µŒÔh¥)Z\nR”\nR”\nR”\nR”\nR”\nR”\nR”Z¼µUJ<fÍ†Qi\"GÄ ýEkøîOv|Ÿ¸æÏllWØií[e+7o˜»®eŽäŽ#û,LƒºEVÙj^N¶”ðÊkž„¬†ålMŽ—¶—½ë³×†±z8ú7öàçgí(ˆçpÌmÍŽœJã,wÊ™âÔ.¦âúõÖLN£)Šö„„k™³æ¸!A!S€ìánÝj³>\ræEo+ŠÏáÃ±QÂTç€®lðt¿i™FxM‹¸$µ€à;b¶î«š¿´e!d,2ØÊŒ¡‚Ž‰ÔùWuÄnÞ¾æ_ÂHÿ\0ÅCã7\'à×üJ¸±«ŒÎRÉxÛ‡á°îæÈ¥‰°\ZØ“à+wä£es˜ÎtŽŒ	›þ¬—Tô\\çÌTÆ?“—1ªŸÂÄ\\yÿ\0zÚ9<Ø-„Ã·8¹d’Fw\Z\\\0r ÓøT:ß}ÊêÇ9Ó²î¶…ª©JèÙJRJRJRJRJRJRJRJRJRJRJRJRƒËRÕí(<µ{JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JPÿÙ'),
(7,'asdfasdfasdfasdf','adsfasdf',8,'');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
