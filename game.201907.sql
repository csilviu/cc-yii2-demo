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
(6,'dsf','asdf',8,'����\0JFIF\0\0\0\0\0\0��\0�\0	\Z( % !1!%)+...383-7(-.-\n\n\n\r\Z-%+-+---/-+--++--+--+---/+----+--+--+------+-------7��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0E\0\n\0\0\0\0!1\"AQaq���2�#Br��3Cb���s��RS���Dc����\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\"\0\0\0\0\0\0\0\0\0!1A\"Qa�q��\0\0\0?\0�4�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(��q��S�T�m��eև�v�ʋ\0:��yh���ʌ�u�r�*�<*��T���Ka9K�7Β\'~�=����C��\\3�BǕ�%�������C¬�|,�Đ��~1�ME��tO\Zr�?n��aI��!�Y\rΠt��֤��#���~�\\[l��$�@��$�`�s����q5���<g����ڒ_m\\�}���p,���LL���^��|�cG��>�GҮ��\0ӲR���U���z0>��Z��r��~24g����qQ{�o�Ea7�/Ɉ����>�����oE�UJ�5/E{JR�JR�JR�JR�JR�JR�JR�JR��\\\0I6\0Op�\\7zv��f~�k��\Z(��������K��A��Y��G�H���]�5c�z���tطKu��:�6���L�=Cκ:`�4À�N0XXX/WpQWqϭ�7�;��w\Z�έ�\'�{�IK-�ؘ9~h#�h\\��j3�XV�B���p@ӈ+ed�l��D�A��s0��%�2�{T.+sq����v�(>���HpcT4��c�(v�~?g���%N��T*C\r��� !�f�I#bZ=nQ�dV�-sn��m��OCQ��`D��~(���N��>R6�_����\0�U� }�bٜ��.L*HO����.�d�gI��r:{j�nN�6|>.Tm@6S� �x\Z��~ۧ��B�4�K\Z�ɝZ9�P��~��jW�Η��\"���C�`+�mm�ǳfi!����#e]m��x�$۹�O��rٴ��oR�Naq��/��X�d޾b�m(�E�h�gPdPT�C	���\0t�#z����]s,����¤���ȯk�O�N+�L��X#*�`Sp͞\'���l/j����s��lX��\"۷��GoIw6�ں��J����`z\"C,%�`%����]3y��y�s�����~��N���Q�W�]�R����(�\Z��w�k�,\r.���c�~~TKt眥M!ĕ?*�ɯ��>��\n���gYr5n�x\r\\����ֱ�6��م�]�E\0h.t\0v\\���\0�,p��5������s�W�y�W���\nÑ�oYx�4�`�GG�U&����k�U\Z�E�*�Y��Xu�Yb��+\ZZ�F���G�H�59 �Ӯ�\ZLL��|����/̈����ɗ�Xs/�ѷ#}$���0�j��#UH�v[#{TT�X���Sb�h16��*ab⍯���Ƶ�66XI\n�uRV���n�Cc�oGk�X�Yn�*~����Ce�ۆe��_�{U��S�aI!$�jI$���¦�S��!�B�H�5�k�8�$_ʱv�3f�[\0]���)�\Z��^�k�rO��RΪD2��3��A�c�Ռ����ޝg^������*v��?���+jR��W&�[m�a���~6���\Z�_�xd��XԱ��<͇�|㵶�K+H�嘳x�s���<���m��3NGF������>�����I=Jַ7c�h�?3}������FQ�ke��8p��nM-H�5lצ�5�\r*������L�2kh�hfq���[��W\Z	V�8��ݕGk>��&�/��~*��GlLy{\\Jz!I�q�ݵ���[=�98iM�{G#��1��.��)�b���\0���\\;S�Ɉ���ʇ�j�|\Z���p�b��y6Mz@e�1[���G�a�����E�XqP2ntI�i��8sRp1Iu#�Հ�ǈ�H�mF��X�q��2}��4���%�*�t�U�-f T|ݦ�g^5�4�=�=��O�v=�]ֶ�6T�Y������������d�!H�ǳ�z��LP��M���WO��cd7����Ϣ�s�Z�nni�Ka]�@�+H��#�#����ܛl�c�i>��\07�?�\n����#@|��x��Pk��c\n\0�\0��Y���O��UZ��G��(�jܮM���Aι`�A\"L0:�M�\0=�u�Z织�~\'at��d�ʤXy�Q�Vw�k�^*Iz��Ⱥ ��κ&\'��H�b\r�\0��3��\0MW>Wm�k�����񚽑�뾬��3P����W���ݪp�9��G)��E}���v0�	�U�%h�!��wC!�i�\n;�J���4�rmΡP��o\"h[��\'m�������)�\n�1���B-{\Z\rvL<��ذ�?�����WБ�3X��Lm��[Wg�ph\"�\0�iV��׭���6�����#��*�r[T�ekw��ʰ�\0�8n~LW7��Gͻ�ct ��tP:�3��8ݴӼP��T*��`P/KP�:ڮ�(8���j�\n��o�{@6��*�pۇX\\Fg���t�DM����6�x�-Ea7[�Pb��:hc��r���4���5���{�ԓϳ��i3�+;�%XDz���ΟR���a��B���#�9����\n�	p�C�8gx��(�����\n�T���5�ᜓT���m7Vǁ��)�0��6�l5$��ւsr]������k��r�\0H%0���@\0\0\0\0����9���Td˭JbO�F���\r_m�؞���\ndp��<��?Z���rB����kup�� ������֠o���ŇuC=���t�:_���X�>!��&�v(�}�󬽙�g�x�\0=F�}9uo\Zv�Mw?����/5d�,s9�x\0<�t�X[ 73k�ȷ\'��jk:��:��z)JV���T�����)��rмd>�5nf�7)�o�1��\"�5�K��o3��X���S_h���2D�d`��\Z�o%|��a\"TPY@�(�zW8�e[�đ��SĀҐ|2�������g�:x�-L�ڬՆ}i�Ttd��X�ͫ,b0�#\'7q\Z��Ym�aü�)��2�X�h�wẙ���~���A5��&�1,���2���W��?�ӂ�y����͗.q��~�K�Aͱ�<-���{�l�ꌋ��V�x�\'$�Ni����T=�k�^���$\08�l\0�$�5;WxƟw����Nn��\0���J�w��Gh��V���XdQ������,]Qp\0*��I6�4�[\Z��\nL{�ĵvO*��?/�X�vUf�!6���/+j���\0(5-��4�A�Ġ3j}�7�l�~1���!z��%� �W��.o�*~�]4�p�u�k`=�5�\Z�޺%{�ņ\"궿�`ޢ�7\'�wפ23�(�b��5�,l���\\�e��96\0h�K�:9}Ms�=�X��n����{])JP)J��A���L$���eO��/�*��$g}5$�w�6Q�I��9a�y�L2��C3w��@|��Q��l�sΟ����\\D<�M��c�~y�����xc�~�lO�Nuv�k�N:M8�:hOf�ޣq�rj=1�d�9�T9���5����}�.ec�w�:�0�V{��A 2�z�zw�96t�a&�!2ق�:�K]��uﭕ��^΂E) �*ڂA�A��\n(�z`\"D-3Ea|Ŗ�jlb���l���1Vv����#��P\Zi:�婭���L3 ���lʽ 	&�²v&�L4\\�y���Y�,��Y��w�PixM��#��K����P��K9Rs��OpT5�\0ާ�kiO��K���Y\'�&���!ʳe��M.+e��~#��p���m+H��5�UX1��մ��TP�UGXAe�uk�j���u�0��)Tê�@������%Ą�� S�_\"D�+�-���bE�$��Y��[x�6;���)�tc,�ojݥ���dI�\0�H]�o��\n��cdY#p��FS��Z���o��%l/9\n]��*�\n�H����/Tnn����<�1z+���KkA4Տ;uVCV4�8�������&H u��_�uc떤�]\'U&�����4���6<�s�qA��Pey��I���޹�&s4��R�[��=,+r�	���4��ž�y��l�ve�	Qw{(n��D��p�]KxJ�1nc\n\"e7�����=������ �c��gu�L1��2,B�߉�#��E���m4=�y^�\Z��_-���n�s�n�^Ҕ��JR�X[_�xd�͖5,|����γk��ǶrF�U:�s���~Q�~�c<�fܯ�i�y_�v,|���!]�q�W����/ھ���Kw(d�-�͏�X��:��I�\Zjú�/�wt*c`[}Z�Kr�r |O��V7�ؼIv$���XTvP�e���p��_�f��\n�O]xmZ�����)��-T)�Z����t�%9�gVe�H�Y�9I*T8��ʑj��A�m<Җ�1��J4ຶF����f ��[Z�0Xqi\Z���G�J�\"�\Z\n��{^�U�3iP�s2h\"��LG�K~\0�ǫ�s���M�Տ�X;_\ZNT�]ϗ�VfƔ$rb�)������b��H�j\"<���\0��kb��*�M#�5d�#���/$(��+�IKrM�ycs�k��`�*)$����&�ɕ�B���\\�r,k�R�h���<s�ƽ�H�ړ���s�vk^�v�UDn���\\$0u�ǵή|�5/[�j)J�R���Y\0�`5&�{��\\�OϺ�I�Q^�ħ*���ۉ���F��y��L���,�u�]��W-����$��$���*�a�.���G.yj�T�$-�o�%��\'�-n;Ոh�i�)���[ؑ�{�^�>��\0�b9ƹ��$�����p�&�fxq]d�ԋ�Aj�5kX��>P���\\�\Z�����\ro+W�.M$G\'��x)�;�+T�wq0��%��k�\0��NĘ��������k�cቐw>�����<Z�H<>��ڛE�W��u�8���\ZM�޶a�cRxM����~5+�kU½\\F�o�#qt����Vj�;u�POz���ڀVD{AOޠ��/Xˋ�Q�PVj܆��[v��+V��[G\\���V�4��%�<ii�����T�HY���<��ϵLo3�>8>������\n���\'9:��:L]��7�fŰ*Y�q�7����\\�x\'O����2�!�Z��6.\0ⶔQ6��Ku`K���1=\"�.E����7O�a̅ON����(*J���@�H���]�DR�X�>U�HӸ�oJ�y�D��j�R�)J)J]�[5��ز��9�E�yA���/�+�`�M �4f�ߢ8�5��ku�J���ℌ�gB.H�åmO�k��;\r(����IcqΣ\\�\nI<O\Z�:���:�g�����7d`2����۶Չ3��$D����4>`���Ia�,`�/J3|썣\0�\0�V]�*񍼇��c��(�|k?ʖӆ��e�dj}�-lX.Yԏ���\0���8Z��;G�X����h���;��B���ߏ;��aQ�n-�cgLB_�LK�x(_�\\Ͱ#���k�gU WK��\\ڳ[�mF+n�n�׵��b��X�{Q��8��5FZ*�L��}��*w�$QЙ������+Y�2�nQ�V!Tf!�E�����7��<N���բ��m߯֯a��\r2��ca���M�F�9^<A\'�p|�����S\Z=���U>ʑ/���� ����a�q�d�G#��dŴ%Q�S�u��:��\n��,8�q�D��f�>�~��c��4e�k��G��g|�*��V�\"��ǯ�^����\r�`���69Oiࢵ���id\0�\0R��S�߈	���Vg�v�2O�^�L�ɖ�%�IC&v9cvA\'�U���F˵�	\Z�b�/DZ�ѽ����G�X��6��ˇ�(�h��a��7�c�X/��K�sr|�ꚦ�v.�s���iJWP�)@�)A��UT��6FUo֣gݜ3��ں}*b����b�cQ�n{�Ea�}k[��\\��U?����R�-Y�rx�.����S��c� �\\����`����;��+FĖ1����\0t����c�pQ�-$h㱔�L��Z�&8�N<�GS�\r����s*����mԵ��ݼ��l��|��)�H*�%\n�R@�3٭vv���C���ծ�J\"q�x�_ƪ�}+�oR5����C�й�L@�	\"u�u\Zf\\�\r�͸T<����^�QͲ�ۛ2��/k�\'��h��+Z�d���E�\0�ӍEO��p˅g��\\e�HU��,����~���)�5\\��&O�h�F��z�Wmb�L��\"�޺��V�\"0+����	�r��a�*��`�8��\Z1��UB~vSg����N�4�p�c�٤���������9U��aT�����\0U[�n�\nL�6PW�#$�GA�VP\"�#�f#α1������3i$N�Hà%n��d\Z��·3�{۲����[G��-���썝��H��./�{և&�b/�P��~�Ek�L�E�͗�P�DͲ�[.3��x��l|mZ�M�,���+d����i����v�jW4�f�E�)�\'��\n��HE���\0��^�	�ݍ�z�-®��i\ZizG��ǰh,:�Mtހa��#X3�\\F\Z��G7-rI*Gx�Z~�/�m��r�J$X�ßۺ\"�Ȧ�\"g�GE�ى�\\���F7n��F�ɅlAlC��v�X�zM�ռ��٘E�$��5U_��*���h�)Z\nR�\nR�\nR�\nR�\nR�\nR�\nR�Z��UJ<f͆Qi\"GĠ�Ek��Ov|����llW�i�[e+7o���e��#�,L��EV�j^N���ʍk�����lM������׆�z8�7���g�(��p�m͎�J�,wʙ��.�����LN�)����k���!A!S���n�j�>\r�Eo+���ñQ�T瀮�l�t�i�FxM��$���;b������e!d,2�ʌ������Wu�n���_�H�\0�C�7\'���J�����R�xۇ���ȥ���\Z���+w�es��t��	����T�\\��T�?��1����\\y�\0z�9<�-�÷8�d�Fw\Z\\\0r���T:�}���9Ӳ��J��JR�JR�JR�JR�JR�JR�JR�JR�JR�JR�JR�JR��R��(<�{JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP)JP��'),
(7,'asdfasdfasdfasdf','adsfasdf',8,'');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
