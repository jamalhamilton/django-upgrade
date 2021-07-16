/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : sso

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-07-16 13:45:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add user', '2', 'add_user');
INSERT INTO `auth_permission` VALUES ('6', 'Can change user', '2', 'change_user');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete user', '2', 'delete_user');
INSERT INTO `auth_permission` VALUES ('8', 'Can view user', '2', 'view_user');
INSERT INTO `auth_permission` VALUES ('9', 'Can add region', '3', 'add_region');
INSERT INTO `auth_permission` VALUES ('10', 'Can change region', '3', 'change_region');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete region', '3', 'delete_region');
INSERT INTO `auth_permission` VALUES ('12', 'Can view region', '3', 'view_region');
INSERT INTO `auth_permission` VALUES ('13', 'Can add setting', '4', 'add_setting');
INSERT INTO `auth_permission` VALUES ('14', 'Can change setting', '4', 'change_setting');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete setting', '4', 'delete_setting');
INSERT INTO `auth_permission` VALUES ('16', 'Can view setting', '4', 'view_setting');
INSERT INTO `auth_permission` VALUES ('17', 'Can add zip exclude', '5', 'add_zipexclude');
INSERT INTO `auth_permission` VALUES ('18', 'Can change zip exclude', '5', 'change_zipexclude');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete zip exclude', '5', 'delete_zipexclude');
INSERT INTO `auth_permission` VALUES ('20', 'Can view zip exclude', '5', 'view_zipexclude');
INSERT INTO `auth_permission` VALUES ('21', 'Can add client', '6', 'add_client');
INSERT INTO `auth_permission` VALUES ('22', 'Can change client', '6', 'change_client');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete client', '6', 'delete_client');
INSERT INTO `auth_permission` VALUES ('24', 'Can view client', '6', 'view_client');
INSERT INTO `auth_permission` VALUES ('25', 'Can add has attribution', '7', 'add_hasattribution');
INSERT INTO `auth_permission` VALUES ('26', 'Can change has attribution', '7', 'change_hasattribution');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete has attribution', '7', 'delete_hasattribution');
INSERT INTO `auth_permission` VALUES ('28', 'Can view has attribution', '7', 'view_hasattribution');
INSERT INTO `auth_permission` VALUES ('29', 'Can add has delivery date', '8', 'add_hasdeliverydate');
INSERT INTO `auth_permission` VALUES ('30', 'Can change has delivery date', '8', 'change_hasdeliverydate');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete has delivery date', '8', 'delete_hasdeliverydate');
INSERT INTO `auth_permission` VALUES ('32', 'Can view has delivery date', '8', 'view_hasdeliverydate');
INSERT INTO `auth_permission` VALUES ('33', 'Can add permission', '9', 'add_permission');
INSERT INTO `auth_permission` VALUES ('34', 'Can change permission', '9', 'change_permission');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete permission', '9', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('36', 'Can view permission', '9', 'view_permission');
INSERT INTO `auth_permission` VALUES ('37', 'Can add group', '10', 'add_group');
INSERT INTO `auth_permission` VALUES ('38', 'Can change group', '10', 'change_group');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete group', '10', 'delete_group');
INSERT INTO `auth_permission` VALUES ('40', 'Can view group', '10', 'view_group');
INSERT INTO `auth_permission` VALUES ('41', 'Can add content type', '11', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('42', 'Can change content type', '11', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete content type', '11', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('44', 'Can view content type', '11', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('45', 'Can add session', '12', 'add_session');
INSERT INTO `auth_permission` VALUES ('46', 'Can change session', '12', 'change_session');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete session', '12', 'delete_session');
INSERT INTO `auth_permission` VALUES ('48', 'Can view session', '12', 'view_session');
INSERT INTO `auth_permission` VALUES ('49', 'Can add consumer', '13', 'add_consumer');
INSERT INTO `auth_permission` VALUES ('50', 'Can change consumer', '13', 'change_consumer');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete consumer', '13', 'delete_consumer');
INSERT INTO `auth_permission` VALUES ('52', 'Can view consumer', '13', 'view_consumer');
INSERT INTO `auth_permission` VALUES ('53', 'Can add token', '14', 'add_token');
INSERT INTO `auth_permission` VALUES ('54', 'Can change token', '14', 'change_token');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete token', '14', 'delete_token');
INSERT INTO `auth_permission` VALUES ('56', 'Can view token', '14', 'view_token');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_login_registration_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('10', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('9', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('11', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('2', 'login_registration', 'user');
INSERT INTO `django_content_type` VALUES ('6', 'onboarding', 'client');
INSERT INTO `django_content_type` VALUES ('7', 'onboarding', 'hasattribution');
INSERT INTO `django_content_type` VALUES ('8', 'onboarding', 'hasdeliverydate');
INSERT INTO `django_content_type` VALUES ('3', 'onboarding', 'region');
INSERT INTO `django_content_type` VALUES ('4', 'onboarding', 'setting');
INSERT INTO `django_content_type` VALUES ('5', 'onboarding', 'zipexclude');
INSERT INTO `django_content_type` VALUES ('12', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('13', 'sso_server', 'consumer');
INSERT INTO `django_content_type` VALUES ('14', 'sso_server', 'token');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'login_registration', '0001_initial', '2021-07-01 08:42:37.988429');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0001_initial', '2021-07-01 15:02:47.201337');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2021-07-01 15:02:47.544303');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2021-07-01 15:02:49.095804');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2021-07-01 15:02:49.150712');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2021-07-01 15:02:49.984787');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0001_initial', '2021-07-01 15:02:50.891309');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0002_alter_permission_name_max_length', '2021-07-01 15:02:53.904459');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0003_alter_user_email_max_length', '2021-07-01 15:02:53.961719');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0004_alter_user_username_opts', '2021-07-01 15:02:54.022111');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0005_alter_user_last_login_null', '2021-07-01 15:02:54.078142');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0006_require_contenttypes_0002', '2021-07-01 15:02:54.120417');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0007_alter_validators_add_error_messages', '2021-07-01 15:02:54.184160');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0008_alter_user_username_max_length', '2021-07-01 15:02:54.238136');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0009_alter_user_last_name_max_length', '2021-07-01 15:02:54.301488');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0010_alter_group_name_max_length', '2021-07-01 15:02:54.983503');
INSERT INTO `django_migrations` VALUES ('17', 'auth', '0011_update_proxy_permissions', '2021-07-01 15:02:55.069798');
INSERT INTO `django_migrations` VALUES ('18', 'login_registration', '0002_user_is_super', '2021-07-01 15:02:55.494189');
INSERT INTO `django_migrations` VALUES ('19', 'login_registration', '0003_auto_20200323_2110', '2021-07-01 15:02:55.911363');
INSERT INTO `django_migrations` VALUES ('20', 'login_registration', '0004_auto_20200421_2046', '2021-07-01 15:02:56.645896');
INSERT INTO `django_migrations` VALUES ('21', 'login_registration', '0005_delete_client', '2021-07-01 15:02:56.690825');
INSERT INTO `django_migrations` VALUES ('22', 'login_registration', '0006_auto_20200710_1836', '2021-07-01 15:02:56.974423');
INSERT INTO `django_migrations` VALUES ('23', 'login_registration', '0007_user_last_login', '2021-07-01 15:02:57.370324');
INSERT INTO `django_migrations` VALUES ('24', 'login_registration', '0008_auto_20200710_2311', '2021-07-01 15:02:57.634977');
INSERT INTO `django_migrations` VALUES ('25', 'login_registration', '0009_auto_20201020_1854', '2021-07-01 15:02:57.875583');
INSERT INTO `django_migrations` VALUES ('26', 'login_registration', '0010_user_is_staff', '2021-07-01 15:02:58.239443');
INSERT INTO `django_migrations` VALUES ('27', 'login_registration', '0011_user_is_superuser', '2021-07-01 15:02:58.607229');
INSERT INTO `django_migrations` VALUES ('28', 'login_registration', '0012_auto_20210628_1943', '2021-07-01 15:02:58.678018');
INSERT INTO `django_migrations` VALUES ('29', 'login_registration', '0013_user_company_id', '2021-07-01 15:02:59.329729');
INSERT INTO `django_migrations` VALUES ('30', 'onboarding', '0001_initial', '2021-07-01 15:02:59.383249');
INSERT INTO `django_migrations` VALUES ('31', 'onboarding', '0002_auto_20200224_2347', '2021-07-01 15:02:59.433412');
INSERT INTO `django_migrations` VALUES ('32', 'onboarding', '0003_zipexclude', '2021-07-01 15:02:59.473965');
INSERT INTO `django_migrations` VALUES ('33', 'onboarding', '0004_client', '2021-07-01 15:02:59.518803');
INSERT INTO `django_migrations` VALUES ('34', 'onboarding', '0005_hasattribution', '2021-07-01 15:02:59.558049');
INSERT INTO `django_migrations` VALUES ('35', 'onboarding', '0006_regionsettingslog', '2021-07-01 15:02:59.600893');
INSERT INTO `django_migrations` VALUES ('36', 'onboarding', '0007_delete_regionsettingslog', '2021-07-01 15:02:59.640163');
INSERT INTO `django_migrations` VALUES ('37', 'onboarding', '0008_hasdeliverydate', '2021-07-01 15:02:59.683952');
INSERT INTO `django_migrations` VALUES ('38', 'sessions', '0001_initial', '2021-07-01 15:02:59.956778');
INSERT INTO `django_migrations` VALUES ('39', 'sso_server', '0001_initial', '2021-07-01 15:03:00.879165');
INSERT INTO `django_migrations` VALUES ('40', 'sso_server', '0002_consumer_name_max_length', '2021-07-01 15:03:02.629299');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('1slo8bleotlgvxhboan7cg8ncy3rv44m', 'M2I5MzEyOGIyNDhiNzE4YjFlMGY0NDcyMWI2NTdhNTZlY2RlN2U3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZDQ5MDU3ZTgzZDhjNWY3NjUyMzk0ZjZiMzY3ZjcwOTA1NDY3OGYxIn0=', '2021-07-18 17:25:15.433368');
INSERT INTO `django_session` VALUES ('2c56mpakhu26vs1ad6n75qfk6hzx1ut1', 'YmM0YWM0NjU0MTM5NjNlYWY1YjdmZDhhYmI3YTUyODhjYWEzZjQ2YTp7ImxvZ2luX2Vycm9yIjoiVGhlIGxvZ2luIGFuZCBwYXNzd29yZCBjb21iaW5hdGlvbiBkaWQgbm90IG1hdGNoIGFueSB1c2VyLiBDaGVjayB5b3VyIGNyZWRlbnRpYWxzLiAifQ==', '2021-07-26 20:43:42.144926');
INSERT INTO `django_session` VALUES ('3v9ztt0tt8h8gxgumy5p8ckw782nr8pb', 'MTU5ZmQ3YzdmNjc5YTE3NzQ2YWVmNTRjMGVlMGU4ZWY4YjdhNTBmYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTYyY2NlYmYxNzdhMjNiYjBmOTJmZjQzZDMyNTA2Njc2N2EwZTMzIn0=', '2021-07-27 20:01:04.038046');
INSERT INTO `django_session` VALUES ('3zidki7paqa288trd9rc5hlwrzv9e0q7', 'NjkyMTkzNGM3MjFlZTVhOTgzODlhN2VlYjQwYTk4YTFlZmZhYWNkMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0M2M1YmU0NTBiMmJmMDNiZjg5MmJhMTlhMGQyMmJkZWUyNzdmODMzIn0=', '2021-07-27 12:33:10.869043');
INSERT INTO `django_session` VALUES ('4vvt6nmqvztupl92gqvbzrbvl9aydbcu', 'MTU5ZmQ3YzdmNjc5YTE3NzQ2YWVmNTRjMGVlMGU4ZWY4YjdhNTBmYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTYyY2NlYmYxNzdhMjNiYjBmOTJmZjQzZDMyNTA2Njc2N2EwZTMzIn0=', '2021-07-27 19:59:30.642447');
INSERT INTO `django_session` VALUES ('761byiyyeclbhb9ceseu5vrugwc623hk', 'M2I5MzEyOGIyNDhiNzE4YjFlMGY0NDcyMWI2NTdhNTZlY2RlN2U3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZDQ5MDU3ZTgzZDhjNWY3NjUyMzk0ZjZiMzY3ZjcwOTA1NDY3OGYxIn0=', '2021-07-26 21:14:57.608607');
INSERT INTO `django_session` VALUES ('80v97p5fp3qqukb1zi70mipr7a06ecpz', 'MDAyNzlkNWE2YjI5ZTU3NDJlNGExOTIyODZiMmJlNjM2MmNiZjNmNDp7fQ==', '2021-07-29 15:58:30.890538');
INSERT INTO `django_session` VALUES ('cyrh6eu5l8uvefr656v7ptxsug4zpy25', 'MTU5ZmQ3YzdmNjc5YTE3NzQ2YWVmNTRjMGVlMGU4ZWY4YjdhNTBmYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTYyY2NlYmYxNzdhMjNiYjBmOTJmZjQzZDMyNTA2Njc2N2EwZTMzIn0=', '2021-07-29 05:30:55.841777');
INSERT INTO `django_session` VALUES ('d4ppv8rs861lb7r5hcj8f1elb3yxj21s', 'ODY5ZjZjMWFlNGU0Y2IyZDE4MDU4YTBkMDU3ZTEyZmI0ZTIwYWNlOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkOTdlNTc5MTRlNmU4MjMzODFlNjM4YTRhMzgzOTVjZDgxMTRmYmQ3In0=', '2021-07-16 10:41:35.564272');
INSERT INTO `django_session` VALUES ('dx5lucl4eju0zh02ycr439t1maojd0x2', 'MDAyNzlkNWE2YjI5ZTU3NDJlNGExOTIyODZiMmJlNjM2MmNiZjNmNDp7fQ==', '2021-07-28 21:36:17.066176');
INSERT INTO `django_session` VALUES ('ex4svze55nkc5asg6bu328nrh2lwdzds', 'NjkyMTkzNGM3MjFlZTVhOTgzODlhN2VlYjQwYTk4YTFlZmZhYWNkMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0M2M1YmU0NTBiMmJmMDNiZjg5MmJhMTlhMGQyMmJkZWUyNzdmODMzIn0=', '2021-07-27 12:34:38.434771');
INSERT INTO `django_session` VALUES ('fbt8b6g4ntkj9hmfem26dkdqjw4zllk0', 'ODY5ZjZjMWFlNGU0Y2IyZDE4MDU4YTBkMDU3ZTEyZmI0ZTIwYWNlOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkOTdlNTc5MTRlNmU4MjMzODFlNjM4YTRhMzgzOTVjZDgxMTRmYmQ3In0=', '2021-07-27 11:21:54.982578');
INSERT INTO `django_session` VALUES ('gs5zgbcy9gfrhhgop4zcthkv2slm54tc', 'M2I5MzEyOGIyNDhiNzE4YjFlMGY0NDcyMWI2NTdhNTZlY2RlN2U3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZDQ5MDU3ZTgzZDhjNWY3NjUyMzk0ZjZiMzY3ZjcwOTA1NDY3OGYxIn0=', '2021-07-20 08:30:56.821864');
INSERT INTO `django_session` VALUES ('hqjdvo00cjt1pbjdzmy9u4n6dfpzztzn', 'MTU5ZmQ3YzdmNjc5YTE3NzQ2YWVmNTRjMGVlMGU4ZWY4YjdhNTBmYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTYyY2NlYmYxNzdhMjNiYjBmOTJmZjQzZDMyNTA2Njc2N2EwZTMzIn0=', '2021-07-27 19:58:24.453090');
INSERT INTO `django_session` VALUES ('hrqjrh5s0ovofoyqmxiim7fbqwzlekj6', 'ODY5ZjZjMWFlNGU0Y2IyZDE4MDU4YTBkMDU3ZTEyZmI0ZTIwYWNlOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkOTdlNTc5MTRlNmU4MjMzODFlNjM4YTRhMzgzOTVjZDgxMTRmYmQ3In0=', '2021-07-16 10:42:28.356398');
INSERT INTO `django_session` VALUES ('hxv461l65sboont3dkd0hivd2re6yivi', 'MTU5ZmQ3YzdmNjc5YTE3NzQ2YWVmNTRjMGVlMGU4ZWY4YjdhNTBmYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTYyY2NlYmYxNzdhMjNiYjBmOTJmZjQzZDMyNTA2Njc2N2EwZTMzIn0=', '2021-07-27 20:12:42.644755');
INSERT INTO `django_session` VALUES ('ig7s1fq7aasphhyrudkw7uaqvd1fyo0w', 'M2I5MzEyOGIyNDhiNzE4YjFlMGY0NDcyMWI2NTdhNTZlY2RlN2U3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZDQ5MDU3ZTgzZDhjNWY3NjUyMzk0ZjZiMzY3ZjcwOTA1NDY3OGYxIn0=', '2021-07-18 15:42:06.240301');
INSERT INTO `django_session` VALUES ('ije81elfbinoxvhqtr43u43d0dem0r02', 'ZTE2MjFkNzUyMjQyMDE5ZmQ0YWM2YjFlZTM4MGY3YWQ3OTI2NmJlNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkOTdlNTc5MTRlNmU4MjMzODFlNjM4YTRhMzgzOTVjZDgxMTRmYmQ3IiwiZXJyb3JzIjp7fX0=', '2021-07-16 10:46:00.141128');
INSERT INTO `django_session` VALUES ('kodmxiuzr6zr5n0blbfmo73vrvbkqasy', 'ZTE2MjFkNzUyMjQyMDE5ZmQ0YWM2YjFlZTM4MGY3YWQ3OTI2NmJlNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkOTdlNTc5MTRlNmU4MjMzODFlNjM4YTRhMzgzOTVjZDgxMTRmYmQ3IiwiZXJyb3JzIjp7fX0=', '2021-07-27 11:02:23.254580');
INSERT INTO `django_session` VALUES ('n9b1lwvdiz7vbhpwco9a3vys1s4u4yv8', 'MTAyMTI3OWZhNDNjZTkxNGJlZGQyMWU4MjE2ZGViZDcyMTk2ZWEwOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkOTdlNTc5MTRlNmU4MjMzODFlNjM4YTRhMzgzOTVjZDgxMTRmYmQ3IiwiZXJyb3JzIjp7fSwiYnlwYXNzIjpmYWxzZX0=', '2021-07-15 15:15:27.416530');
INSERT INTO `django_session` VALUES ('qjq7sdbsuysi3q19dpmz25yzvqewzau9', 'MDAyNzlkNWE2YjI5ZTU3NDJlNGExOTIyODZiMmJlNjM2MmNiZjNmNDp7fQ==', '2021-07-30 16:56:17.556559');
INSERT INTO `django_session` VALUES ('qkahb9bky6vjiguxkqz2kwfnrrb93miy', 'ODY5ZjZjMWFlNGU0Y2IyZDE4MDU4YTBkMDU3ZTEyZmI0ZTIwYWNlOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkOTdlNTc5MTRlNmU4MjMzODFlNjM4YTRhMzgzOTVjZDgxMTRmYmQ3In0=', '2021-07-27 11:25:44.854014');
INSERT INTO `django_session` VALUES ('sev1g4hm5afrxcuyj33uu6ly02iz7wax', 'NjkyMTkzNGM3MjFlZTVhOTgzODlhN2VlYjQwYTk4YTFlZmZhYWNkMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0M2M1YmU0NTBiMmJmMDNiZjg5MmJhMTlhMGQyMmJkZWUyNzdmODMzIn0=', '2021-07-27 12:35:48.980688');
INSERT INTO `django_session` VALUES ('t696u00wd2jtqw0iicls58b313ahqmby', 'M2I5MzEyOGIyNDhiNzE4YjFlMGY0NDcyMWI2NTdhNTZlY2RlN2U3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZDQ5MDU3ZTgzZDhjNWY3NjUyMzk0ZjZiMzY3ZjcwOTA1NDY3OGYxIn0=', '2021-07-23 17:25:17.511214');
INSERT INTO `django_session` VALUES ('ta7d0aw5yf6i5q3apf9ckdqbqu5z5kxl', 'ZmYxMTIxMGI4YWI2MjE2MWI0YTk1YzIxODc2NjVmZjE1ZmU5ZTM5Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTYyY2NlYmYxNzdhMjNiYjBmOTJmZjQzZDMyNTA2Njc2N2EwZTMzIiwiZXJyb3JzIjp7fSwiZm9ybV9kYXRhIjp7fX0=', '2021-07-27 20:22:02.292348');
INSERT INTO `django_session` VALUES ('u5ii3blzy6xj650dg32vew97glfr2f1u', 'ZmYxMTIxMGI4YWI2MjE2MWI0YTk1YzIxODc2NjVmZjE1ZmU5ZTM5Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTYyY2NlYmYxNzdhMjNiYjBmOTJmZjQzZDMyNTA2Njc2N2EwZTMzIiwiZXJyb3JzIjp7fSwiZm9ybV9kYXRhIjp7fX0=', '2021-07-29 05:43:33.826411');
INSERT INTO `django_session` VALUES ('uxy3q881dbu1gbgenst1s5802p3ic42g', 'Y2MzZGFjNzMwYTVlOGVhODlkNzIyNDEzYmI5NmU1ZGUyOGVhMzI4Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTYyY2NlYmYxNzdhMjNiYjBmOTJmZjQzZDMyNTA2Njc2N2EwZTMzIiwiZXJyb3JzIjp7fSwiZm9ybV9kYXRhIjp7ImZpcnN0X25hbWUiOiIiLCJsYXN0X25hbWUiOiIiLCJlbWFpbCI6IiJ9fQ==', '2021-07-27 20:04:39.732824');
INSERT INTO `django_session` VALUES ('w6kwtte9rr1kra1t4j7qhzk4n7b4tk6s', 'OTc2ZWQyYTYwYjRlOGVkNjE1NDRiODAwMjAyMDg4MzQ2MzdhNjEwMjp7Il9hdXRoX3VzZXJfaWQiOiIzNDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjJhNjJjY2ViZjE3N2EyM2JiMGY5MmZmNDNkMzI1MDY2NzY3YTBlMzMifQ==', '2021-07-27 20:24:09.044441');
INSERT INTO `django_session` VALUES ('z3sa2ip6z61gq2ypemctfavd7qmnvv8n', 'YTU4MGJlOWYzYTBkOWM2MTVkYzUzNzUxMDZhNzI4YjI2Y2JmYzI4Zjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkOTdlNTc5MTRlNmU4MjMzODFlNjM4YTRhMzgzOTVjZDgxMTRmYmQ3In0=', '2021-07-27 11:12:22.513843');
INSERT INTO `django_session` VALUES ('z5ma9o1pvq8lc1dn7144o70bc4f099ys', 'MTU5ZmQ3YzdmNjc5YTE3NzQ2YWVmNTRjMGVlMGU4ZWY4YjdhNTBmYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTYyY2NlYmYxNzdhMjNiYjBmOTJmZjQzZDMyNTA2Njc2N2EwZTMzIn0=', '2021-07-29 05:32:47.036914');

-- ----------------------------
-- Table structure for login_registration_user
-- ----------------------------
DROP TABLE IF EXISTS `login_registration_user`;
CREATE TABLE `login_registration_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_super` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_registration_user
-- ----------------------------
INSERT INTO `login_registration_user` VALUES ('1', 'J', 'H', 'jamal@gmail.com', 'pbkdf2_sha256$150000$uDAq5WXBAYyO$Lm1Iw2PFVbidN5zzVsurbZEwd6a5eLeGzWHct4z2v44=', '2021-07-08 16:01:55.088235', '2021-07-13 19:52:57.917162', '1', '1', '1', '3', '2021-07-16 16:53:47.834663', '1', '1', '140');
INSERT INTO `login_registration_user` VALUES ('2', 'Caleb', 'Pearson', 'calebcpteam@gmail.com', 'pbkdf2_sha256$150000$qvKx9oZQpnqR$BAW+aJQoEo6DMga0303kmvXaX8hFhOLxPqZ2lwP5vGk=', '2020-02-24 23:42:13.692192', '2020-04-21 23:50:31.785453', '1', '0', '1', '3', '2021-07-13 11:12:22.225373', '0', '0', '140');
INSERT INTO `login_registration_user` VALUES ('3', 'Billy', 'Alvaro', 'balvaro@maxreturnsrei.com', '$2b$12$HhlIeT3xXZdjm9v2KYWZVO.cQu2mcUPo.LAhrC1gJR2vf56paxu0K', '2020-02-24 23:42:14.013464', '2021-07-02 17:19:57.643260', '0', '0', '0', '4', null, '0', '0', '140');

-- ----------------------------
-- Table structure for sso_server_consumer
-- ----------------------------
DROP TABLE IF EXISTS `sso_server_consumer`;
CREATE TABLE `sso_server_consumer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `private_key` varchar(64) NOT NULL,
  `public_key` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `private_key` (`private_key`),
  UNIQUE KEY `public_key` (`public_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sso_server_consumer
-- ----------------------------
INSERT INTO `sso_server_consumer` VALUES ('1', 'djangosso', 'private_djangosso@12345', 'pub_djangosso@12345');

-- ----------------------------
-- Table structure for sso_server_token
-- ----------------------------
DROP TABLE IF EXISTS `sso_server_token`;
CREATE TABLE `sso_server_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_token` varchar(64) NOT NULL,
  `access_token` varchar(64) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `redirect_to` varchar(255) NOT NULL,
  `consumer_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `request_token` (`request_token`),
  UNIQUE KEY `access_token` (`access_token`),
  KEY `sso_server_token_consumer_id_09eb6bbb_fk_sso_server_consumer_id` (`consumer_id`),
  KEY `sso_server_token_user_id_644f8aa7_fk_login_registration_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sso_server_token
-- ----------------------------
INSERT INTO `sso_server_token` VALUES ('19', 'BGpnsPOt23KPavpOlORPFXFj3xSMfn652KQNBMmKZ37Me4FbLla6Za1ZGDKe4RNL', 'pzgD5GVSB7STr4G18R9b6GLBoP8SzCqzCFo16n9Vkm40sIzeLKOHqKg1PfXJU8mo', '2021-07-08 16:30:19.365767', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('20', 'aO8TInkCDrgp67lgoNXtJueRhPFrfX7NqtlEqo83Q7TtPurirhhg5Y7KdK4y0fwm', 'vdqkGxZWweNt5SD4Nb6IOWq3povZdGx5zhVpDPKhIOdNTwcSMRDklPMqngRLd5VR', '2021-07-08 17:26:20.810771', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('21', '7pnhrSusxWAtZWUgfHLYCzx2lSpxGEFcAssGxOT8i7KABy9VYeXp5MC8CvsxuvwS', 'afJ18gBGjWo5EoXrZPVdUzQG3GyQgpQupSakbZtmvZx6NWjA68kyy7V4i3LJYPFh', '2021-07-08 17:26:37.504154', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('22', 'jYF0m9grgrhgBscBtuNieIG7qH2BL2DyoY8f1VbTd29DMnLjqbmWXJ8uRPdf3lVo', 'IX5KA0P79CvwynYUUbi3Pl68gHasCmxAdVgpmHUomuh5MiTFtKIr2KggeESg0Ejy', '2021-07-08 17:29:33.865752', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('23', '08cdpbFIQZrPc8mWPxJnWnmE7aWAoNRycKvj4MxJoTvv1Ur3LKCbFnVk4n7rh9ZH', 'a3L9RNDCJhZKhAbGD93M96BONqid57mhU6geRQkqvGyXEy7CtOgms5zB2M1517kc', '2021-07-08 17:51:42.646986', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('24', 'vmNx7ybCFOOA2440mtyr4FUuZQC4YIgQPZMSN30Y051I5156UBfkRKt0wNxCzCqO', 'y8MUuCHgx8yixmxvxtPSTRAvIjpSgOWnglT9tNqWfOTK9rk0wUXKDYsaMiJBS4B5', '2021-07-08 17:54:16.865737', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('25', 'zhjyE95fBFo1gIsBcOkL2Ga4UyJ1M65WKmWqqrN8XDDV0rNNIKW65rivT5SS2cOO', 'Iq0sTMXrgSDMsCuByfnYtkNKiPRmnCqxo1nifPrl6TNCjjmhlY3Aj4Asj2xBUDYG', '2021-07-08 17:54:48.428250', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('26', 'voihxS8IwRvhFE9h6woQtB1GKMiLl9BstGTsapQH8JgNHo6o5OYNvf2S6HCQaKtm', 'ds08IAaRoaZaIkfdkjYcOPiay5I3RxtpAztipssT5MSrTCvNqdr0vToVNKvQlJAG', '2021-07-08 18:43:56.693857', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', '339');
INSERT INTO `sso_server_token` VALUES ('27', 'YEKzHwzlgBDd1wabpGmG0FzfqqvWmuuDtTpyWq0DHfj8hahZOGpfuEmipDoGYFcX', 'hRY8j0wCc96KIHMTUZaBvO8QGzu3t7xaGk909dWA6ISEiZO5S06dimnPmhYLsjdC', '2021-07-08 18:46:33.354046', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('28', 'rjnhN4x7Jv4eKrNM1kaoZArSYc5CmitZeVNmG7Np4w6kJI57Pv2b05FNJPRg2oVO', 'UVsdTyNn5hQAJaJzUajnC0DNRi7Io2nSGRsAK93vyf4jFKCWaYJns1c3wVE21T1t', '2021-07-08 18:47:40.506364', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('29', 'YJgGOtxLoOQAjjI033lxSfCDnGmmLLi65sAqYcmVxEGHuvZLyP4z7HCA0MRyHxAG', 'M84DfTQaQ3JnaM5BV5QpFkX73YtHIHTtcj7aeMVy5Fx4qo6D6VH3JqPbHOX3J3Rn', '2021-07-08 18:47:44.131324', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('30', 'dGDFgdlxoUB5v1iJE0Anw0aCDJ2woeuwtCzl7W8vLBw0Ym3wkbFJjNK0fRzIveMP', 'EmPcB0b8DUwTyb0zj0wCpIsiwj4jf9xYxLBtADwXbIYHjBOuz3l9bqEIxL07L52T', '2021-07-08 19:01:33.053924', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('31', '6uID04fR0vyVmKUzf58PocGjZp2vwR595u4ToHuwoVvg29OzbHkYVKXG9iCUwimd', 'Lpl5uO1Zmm3QYppMPg26wI9vV2meVyys3E3jLhZjzrRzWHVX2pxvWEh1734Pc5hw', '2021-07-08 19:02:47.303436', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('32', 'BHrADcR7Y5hZSYH6RyWfQ1jer00yZg0BMBUEVt3bBAjaN2t83Dudz2MwxlTblj4t', 'LRptb6zFBHtFyy96JOwVdj6OCXn3KBRJWx7Z7wGsOFnbrOoB2ZGJ33atfAVcpKYq', '2021-07-08 19:17:03.918798', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('33', 'NRMFtCN0WdEFCvo5svqB5iU79m76SiRFLG4otLgjcsiQVsn7lfJklJ3XW71IHcoL', 'rGH41Wg4OiTp54i5E5GmBAmACjbcZB2WJ7o5CvcMsef5gyuh6kAG02RsgNbanaeL', '2021-07-08 19:23:57.949094', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('34', 'Y5DO1tihG21tdCOFYD38U64kNtJjlTOy6IR9xpe5aHBnqJBUpCLAGkTBgqIJkWwV', '59c2lIzGgBY9eAus4pDcQk9QHKaBiGDEgByqUbIawhxmMGCyjvDgOnXDWAHZz0XT', '2021-07-09 16:23:02.771957', 'http://127.0.0.1:8002/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('35', 'UdfNn5f7V0V7iUmaJg4VY6VkGeQX4177wJLeOnAV81tJaU8ESxgLuawr5MpVpVp4', 'DlWgOjl5hXBqw16DKQHGajHUN2jdkNwnA1HpCOry9QaxjTil6apcu3bL04v3Q0tQ', '2021-07-09 16:40:22.521163', 'http://127.0.0.1:8002/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('36', 'MvF1EfBDqBN8LB0idDanlmZIOyRQF3wck7bYP3YC3FWhsA6afwWUPvRsBYfl7a6H', 'T2ETTctIaNblKwjN6x44YORgUHYoSnX1bPNyezTfQg6JyhXDjBxMpY3pH8TLxNSA', '2021-07-09 16:45:05.756369', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('37', 'sKEL3f7MfWDe5iPeIPsSGBmSFqdEzLNOmHZEzNev9lCarvR5gbQVo4Traot3rzQ6', 'wVqGSYug0JZLJeU9ncXgQpyFd55a9HSwCc8RtinWozXeoNfqmoULNDoxarWySgUV', '2021-07-09 17:25:20.096062', 'http://127.0.0.1:8002/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('38', 'ngCfvusxKp6nj5XzfX1vFJk0O9pwvBfHk9on66VKlNpWnXZbNkpDqnoaPM8dnJiG', 'scAj305l3M0UC4lohq4xQUHQlcM0vnhMH5ZPbipwqE5HVVQIFPWATWTw0nIgTuAw', '2021-07-09 18:07:42.356833', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('39', '2mvNjoJIQUjy15TqzuTKGruLIxfPb5E9jG0fAOYEvUgp6tqfiySuUwexLUdiIa8R', 'OmrjriKPlZceWghtqNVKdCX0UeOvzyRCBw44SJPyG2LjrtH8PXhXdkxXAAH4zl4v', '2021-07-13 11:12:26.615302', 'http://127.0.0.1:8002/ssologinauthenticate/?next=%2F', '1', '2');
INSERT INTO `sso_server_token` VALUES ('40', 'NCdlBrCxce4HfB3q0C0nUFBuQZGgU9EDBrVEb8c2T0JJUlg6fcT8IZtYCsR6C81b', 'lsSvm6wFfFNQ1QzB548JckjrMWuoZOkgKRlk0sxYMH3T29xyc5dlEmE2mPBd8D5q', '2021-07-13 11:21:59.107262', 'http://127.0.0.1:8002/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('41', '8jRrbB2d1wcOSdesvDKUrl6sNvj9XsOsklFpbFeAd7KQSnIGHYjH7qp9BcAZz1XG', '8C3ILuM3yWYyipKbETT6V2Y59qLaO03eX5lpAwcbO1LylD1uqcLz39vX8pBq3FKE', '2021-07-13 11:24:50.396333', 'http://127.0.0.1:8002/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('42', 'Ly6D96BpF0vEa9387WCrVLsuTAkkrDBSgqqa6VuXkytLLliNrbXzp66rarMmmU5Q', 'UReC2rJLkfMhRK6J5YTPJ6m1pJOqmR1Y512OQb1tiguFVbqTGqkcpqYeC01Z08nN', '2021-07-13 11:25:48.937038', 'http://127.0.0.1:8002/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('43', 'auJQSLWNxs4Ax1YM1iLvamP1z697h6IeStCmiHG6dUA4cFArPBvLAb6NMj5LXTE6', '5JlJLxWM5X9vGv4IoJonLr1VBdcmacRlkK9ty7AQebyxYolAUai4t7DcTEDkr6u6', '2021-07-13 12:12:10.406037', 'http://127.0.0.1:8002/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('44', 'YGif2L3u5afS4AWLqg3vvZ6PHl7IcY7E4J2g8n5mQHfx8Z9vJjxy6WNV66Uf08E5', 'oZZtiatDmbSOpLfstEjJv7ha787lZDWtntVccaOpAzFqVDl7M98HXSxjBedqDczo', '2021-07-13 12:12:18.359960', 'http://127.0.0.1:8002/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('45', 'fFg4pOXTtxaG135E7y2qW5uAiHUgiOw0xtxEZIhApNGrV1gCGSkC2t3SAEmAPNvf', 'p8dQuzlZbHY8ZSdTxD0hccwyIqc1gsjNLjDPUBXgNc00h5PwvGgVGY5iWIK9lDhU', '2021-07-13 12:26:22.213542', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('46', 'YByUw3dcZtqjFmiMTR9F8MQOm3K53WXFBJcAX3TBYJZO8VGiutZHd7NGnOur6Fl2', 'ViCcxl1d8CaOGmSuwzLqTtPJo7Ce2NCzpoweu8K1lEoIgu7s8dfhVbOv2hBonKGU', '2021-07-13 12:33:14.940570', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('47', 'voWPH8mS6KUFnyqPqFH9Erw8pEuEOO7mwa96oRzq58BqS1vdppqnBENz25kCyQDZ', 'zWLwvp577JIrnsXc5TsFe7mFwgBxOi0vpJmDpEwlSoLGlve2tPEOREZXEdZHwwLI', '2021-07-13 12:34:21.061212', 'http://127.0.0.1:8002/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('48', 'e1dgdxX4Nd48pCXOJ8bk09ODagQ0qpJ4NxS0NYgkMYjs1q1l7My4GdQqA9GRZxkd', '5hm6WZVbc6VJ0ilWILW1QmFawTfIjeWxRNrNz68DE8NvH3BEOlsyzd6QwLlRzSmz', '2021-07-13 12:34:42.530475', 'http://127.0.0.1:8002/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('49', 'BdelQOqA5toavn6lZE0DiLbHkFpQQOwJJls3cFfEVwCH4bYyIEmS5FEn4KYrFjUw', 'gJxmoUldbfYDFXitBvV1uxJdUBHlHZ0cklHjsVBAutB7WOVdqpkMcm4YgVu4FdT5', '2021-07-13 12:35:53.065103', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('50', 'hBqWFXroqemJgihqVEfZ2MQnygU52wCbS9tUDoooaaXrosr3RtrqcORJhYIzUB49', 'jYKwrZAMk57WzOPRyFJoDfazsN2jVZfnH5eZQZTkjAoT3jXJl5e8o0yYx2rgXAuj', '2021-07-13 19:50:27.628480', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('51', 'vCIHhwyJrLNK50GbVKOyv8KKd89MTqKUdgCgSgcTkYE2rhBd7T3DXXhw5ptGozj9', 'uE3EycEAdd5BdSVxU7WE54Voe2eJwzYLsqkEMQfNVoMoqwqcfVKs9c82xZoMslOc', '2021-07-13 19:53:13.585252', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('52', 'Ym1Mo99CxemC4yiirOn4k8mEEnj8LFSDeJZOgxd0sSSr6ypwR7vNVjUmUTISLNgd', 'tYvwvM0MAHqQhhRthQEpkORCVeAQFfPDFXHRv5dhwbcaXzsN5vnpJiRzWMKLI0lr', '2021-07-13 19:53:17.092220', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('53', 'uKCagdT7NvLLAjtS6xWvkhn24zovy1WLiqyiqa48FBZK414G4QrKADROXGtvcyCt', '4fNMzJCpzg5aoJwGl5QR8EaOQifU4Arx9SHpReBYWhPJLjjjZfNZ9o804JpCaHNr', '2021-07-13 19:54:09.030698', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('54', 'J4hAirAXmvTFNEzlyKPJKese9zTvepSOGebCCReGdTwYKHbueMCbJUsL1YMuPdZY', 'TfyJ0m7UznlGvtbA0m4ZhKyKRVFMUVNrnpMbBwKLo17E2Hvv1HlCERqf5L36E6AZ', '2021-07-13 19:55:40.561918', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('55', '2ety50DZ3S42C2VCTEud423AnYoNxXEZ3W4JBG37OgPSlfIFWlKZ7ku4iyQ1LRrL', '1pSuOAU1zWcNHwwzTYPO5lRiUtbzlrcyeXvuRNhrYHu3bbLM40CSpEDRtvDc5bfK', '2021-07-13 19:58:28.001527', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('56', 'EJEVDvcWtugAH6ZorJZ0yehuddR8s5DOznQgPh9MgX6dk51lVRxFmkRQRlAgbJmc', 'qwGX1nupu2Je90A2LIPiwvCkXAqmvKsPZGxNaO2QZicQNJK7PKvIYOFPxPYv4Jk5', '2021-07-13 19:59:16.954666', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('57', 'soe0HaeYfgTtP4OMwXpVrrhqS6iFkh3oamRIu3oEDaJuC8ca6EHoo3FuXIKqgpsd', '1wQrxDmqvQ3PgtNDObpNYVDwPTdSf8zgaRTEqCSY7nEfPJ9TTluCiS9MsNTv1BBv', '2021-07-13 19:59:34.191012', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('58', 'nY5NWhvtctzpaDz2mHdqWenQriK0U4aoxkU8Ilkh0cDPvaqoBQkVkjkeISthR3Xp', 'EhcPUsBhvHQ70vUibkaCYPHw2JoO10r4pe9QcfmH0eQAcQgr13N1KUr0XCTOeKDb', '2021-07-13 20:01:07.917712', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('59', 'iJ6mv4KloQhgGPzwh1BvpzcRxWdofeGRP3OjRIUq2mGcY2QvK0ROCvaOZhHHyDf9', 'DzU8jM1Fq13ZbzcleZo9Kf7Evvc5qTF8HnG4t3lR2vXB1G7TibHiPGk0HXQVNjxh', '2021-07-13 20:12:01.673032', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('60', 'ihTr0F54lJDUBBnrmUNCTfzGqNjqfCDKlJ1QKIuAN7oliN3YuefoDwdWNMum3Hxq', 'cqjSPHmYFhs0AcgqgFz2Iv5xz3cwaKMsQcPuUQbs55rr43RF03kXH3xs6czEEsf2', '2021-07-13 20:12:46.231487', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('61', 'tZR4wIo6NDZnW4HRddtfpTkNqFJwm8wzBdMeHxqlgT7iBehX6iyMDvDhCMuCddWy', 'IuwacGapTVOOY9PGnrWR63w2kllTOSlggWOLUq9IXzYLuMhvmSV9BObQEWmC0DVp', '2021-07-13 20:22:24.789564', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('62', 'f02eM6kuUsvlW1QHaFuTDn4R9k60uAapqRZmWvqzdzpfxKIErhCw5eHtf15ZhGOV', 'sU6p2sJRmSmoK3aXN3RWPYuGeGOsb6IeqMfydckU1ZMwy8HVSPhAkt3q4r0PJaMB', '2021-07-13 20:24:12.480504', 'http://127.0.0.1:8001/ssologinauthenticate/?next=%2F', '1', '341');
INSERT INTO `sso_server_token` VALUES ('63', 'sGAfyYrG0rmTQMB9mRrUn6Ztd5haIZlReyl3OSA6fVHuOVbCBKyyqx2zrFLDmbX6', 'XKlMLHXtLXTAUEd3yJzPZltcqSwRlEbwoIE2zPMtToZxxN0GQmtPcEXrP6WD7Uen', '2021-07-14 12:17:26.015722', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('64', '9e4IOXgfbzYG25rYkEXFSHges8qc8SE8r1IIeJM0tBqW902eLVI8zaQ0C9BHR2p7', 'i3GH1cXi6nbCc95eg0XLehxXDpWfZ4n0yS8IND4DPquVCkJLSQwKmsQ748J5n6Dz', '2021-07-14 12:21:57.770572', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('65', 'HomrSqYDMy8HhvuXp88kUmUyTEI74kyJ8kKEePrt4KhNlQhjukpEVKXR18HdSlFC', 'TVIlsHLsIJIk2dC6SMmRC0jG1DC2dW5Hr1GEAY99iQpU4dE89m80ydCNJLl3BO6W', '2021-07-14 12:22:03.191032', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('66', 'oDArOpcfn1fGwAPr5r8JDkO9AxyHp3kFOgeViBi3q336ZncnMOfBqeeQoEnKh2Is', 'Xsbvglw8InC58fECCyyDHoMqhoyWp0MTVoxRzjwPLrI8VUnIRuP5dAV8dzbyL7qk', '2021-07-14 12:30:43.758678', 'http://127.0.0.1:8000/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('67', 'zvtFWQz9k0mZuo8hFcQiNxCpMIWyXxOq1mikMF9JOYyr1PrtjQYOkTIVnWw6xmk0', 'iT90uij2xJErNbmDZETfnQyc7wIn9r2y5ZOnciylYhnDjylLRidPnsmlvhTGQm1l', '2021-07-14 12:33:29.558607', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('68', 'RpA74RMLKWXuEXdsoP3aRjO6wZfC383Rtlc7OgSwwnTub2uup4rEyecSqBV4YzsZ', 'Jfo89qkhxeJ3XLDd8icKPgS2KbHZZtjV58tsTyaVZwwXe292RfPSZi1lNVIM56dj', '2021-07-14 12:56:02.074298', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('69', 'GsHSL8CWWV9eGTgOWhXjnMTodOmKOXawmu5EjPIutNIdnsF7r5vvmvtEfPDaS9im', 'pdMAcwrTFEDAqmsFoCjMoIMwlBUGZACbc9R0EneArLlTfirp7FXtR056bY4KTUrg', '2021-07-14 13:07:08.852421', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('70', 'ewhOFwGK8V0GL3qd2UUtKLiqSCObNheIkc5B5f3jn3xJadNv2bp41EyDgaC3pTwF', '1gYJaAI8vJJbSvnEHb68irpotnAJexZK8QcmHzpD32FEYEuM2QlwcTHKGEWxDEPo', '2021-07-14 13:07:12.177768', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('71', 'yL05W29Xeo1wp3JQFv9ZmdOR7oIBwhzPvdKAeLrPWX61KJuWrCw662sHYnFoAVE6', 'lu0jATDuzMs94wJMnlkJNiogErmcJzCQ1rfpcLZlzCBCpMLu5beCAxgaKz3sXUQy', '2021-07-14 13:13:37.629633', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('72', 'pOWq9e8pbf2WjZXiOUcOPOFjiccMSfuUxJ1rfB0q0kSkJCKi9mce3N4d76S1Ip61', 'wT5NrAMgRn1pckpQ8UkSXISieoyyD6f4FfcL1gizEISPVs5b9QHK0IbVcctHGYmq', '2021-07-14 13:13:40.509608', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('73', 'jbbij6969Izb3Rv5UVIrzxoVp2x5KGOI1BkLbcpNKn7wvzXPAioeunAyv36Jknhb', 'o4hWH6xAlYRF1suRlrJDNy8nyrF8ajlyhZSoM4nXP8NA3S91PHRU1WULfatQJxHp', '2021-07-14 13:32:37.240405', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('74', 'HwBPuH7jVU3eAIzB1AjE4yHunOp44WFfabWp6alD9Ql1Eg4reBbNxTBpnH3GT5de', 'iGZmLfyh1A3YG5l01Th6Zg5o67p9ecuqpqHduL3PjFSNpq9l637qmggkR1Zj5dYM', '2021-07-14 13:32:40.648481', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('75', 'g7Okgadpb8HvwKSrOBHmIZRw3r8Lx1ohrENgbRzkMhquZeW417PahNKAShqxScj0', 'bSIWM4LRfjpguPI80o8Eb64TyTvl8bVMxTHTKpjZlJGzGulRT0z9jyZ7jgwh27PX', '2021-07-14 13:34:20.370898', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('76', '0kHAIuoJRa3xgdGxIcr9MqiZQhbgtvdkGhlrUte0kaMPSctONIZWaLzQcR43xxIZ', 'B1X1Yhu9Xz27O8YPFuLX70kxo793BYs6jAeC3Gtdj2n7LisXnJW9eEkFDfLCNT2z', '2021-07-14 18:24:55.658139', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('77', 'zmSZVp8MfCO3TIvUgfygYaurJ9fZ9ekJ6EJvDj9AaDEIflojlBoGehvNSb7KUiyS', '2jENh60wB1TXfsqdN236kgjOMkoeoq2Df4CMiyjdRwr8MQpfOFO8k8WC6Y7ONf80', '2021-07-14 18:25:06.260360', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('79', 'JaxougfoAfmkokk1nRotDrSWRjMX2MCHFH9GZVuLfmTCLpV4MvViTCHvR7D6wz3j', 'BVWA2BdFUElZCOUcV74qFLx6rTpOnrQX9nPi6uM7iWmRlPXHH5hFLpipXTG53Xvp', '2021-07-14 18:25:42.606384', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('80', '94baLUvixwpAsbruu5hdwEroN5UqHUROqVOCoJumufsBoQHpReJS3MOpC780mgYd', 'Pv2bqKEsNx1g6lfZ9qPYoqIkI7Z8AbYT97a3X4Z5M3stIZiQv6rFklagsnEYduSa', '2021-07-14 18:37:06.886228', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('81', 'DEgYT76FBI3KfDGQBM3oH4ox5e5UPV4SZNPuv4mi4dgfqQFHVwPzVLvX6kWET46X', '4kxc9aFQTBCOTD5KAxDXoKlv2sJcZrJAHmFWMOarxm3Udmqk9KRidKu9KBIbP3EF', '2021-07-14 18:37:10.642551', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('82', 'sj0yqWkTGf8Wj1Blf2rleQL7Ay2lPT75wKFsG4I8aDfaV2Gh8OrdGSsizL3mwAww', '5Ddvf3w2BPKG0qGR6hcNNi4muvEyRLLQXHlFnq6qdvpyDTOmUqF8A6zMtwnTrgRI', '2021-07-14 18:37:54.388057', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('83', 'w3covpqf0x7ugC9cViI8fzOqrL9Nv1cALYlt21dTBrfvqUMqkUE99gaYWdoBLyDl', 's2S4oPpYoPDIeb0CsimJpcSl7c6PZUK6fK2SRFhuhhBL5aqVzEgg8aYaQRN1jmoY', '2021-07-14 18:37:57.293993', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('84', 'lEmhqoPixiJd442eSzGaikeyv97ID61FSNzA0q1Z7zl5WjMiTOQffPI0Y0fJ7MFh', 'ni14S9mJkfRqytNdVy7RbVLBjSZAss6HqHqdc1vBZbIwQH0yb7gAM0IE4lwv2bXG', '2021-07-14 18:39:06.830183', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('85', 'xhFbDHsqYPi5kqQUlT5wYDH3PF2VKW42lgFTs3oNBfoOw5gwpyVhTBqxH52I02KV', 'XoSgkfIoigMm0vVS5jzG9ggdJ2An5MBplpZ3mBiC0IGhrCGmhZ8g85MW33M5XHPi', '2021-07-14 18:39:08.953040', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('86', 'q8BAUJoC400rg3LhPEndtZQSO7H12yiRJW7zDQUpDuNpww9Q9JD9gx4I6hpIWT1S', 'vwLvGSQSLRwedEmADvk3S3U68hnhfRk65XKB2b37p3Ex4k3ZkZ6i3yArwGloqdFb', '2021-07-14 18:40:19.353858', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('87', 'SAByl89rzO5HDLyhZLLd9EqSMMX7ocGmF4BulPwMZkHaQDV5HeNico3Wq9SjdzwB', 'PCtVjonPjcbdzGNoDv4tnEApaExWzYllJ5aCReCdkcXYcVXSsOPPLW97nMoFncNb', '2021-07-14 18:45:33.405738', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('88', 'PRG2j9Yuza3AkKHdR7Y9cWVOarViZ52eMaWGa01fMHhWMLbDXEVYLAhQQahz63Up', '4Jv3YaopoLwde9edHvmDKrXMqy2GEKtwZqlEUki0luyzVMqOGX9SB0THWin7AenU', '2021-07-14 18:45:35.806986', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('89', '7nxqHK8YOq8AnPweYvcOcFKmnG2YwFdWMWlrF9lPUG0jwGxWU7bvxUlxA7KaADYk', 'BrdLuI3yW3bItcFYpCksECltWEFVGufsgLuH8PJR6Qb3n5JCsTwc9J5O29OFtU30', '2021-07-14 19:16:11.875281', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('90', '6RiN4o055tQ4f944cHDwf8HJDi1eabuuwYbgyen5DASfj14y7BKXK7slufEiaGuZ', 'pgCRRWtamAp2c35Re3vAKLLItg598G3wYvyurFbsxKsD8HhChhUj5uHIaKMogkPe', '2021-07-14 19:16:59.922189', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('91', 'VgjTJyUmvitFDo5epeIz1OmbbxxTxjUl5sBlthSRjk80pyYzle736kqRo4eyFKuf', 'CrI4D18Zkq1ENX3SaV95DrpbotVaIQkG6SEkeYu0dLYbtygHfvc00WIokeHD5XEQ', '2021-07-14 19:52:37.955145', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('92', '18ECdTfUrT3ctHqdjQJvXBtZpmeuJQbJJ7AKBV0D14bUxplqU7VlSJpG0Hvf48Zb', 'xvMnQj85dUyQldKW9MgHnfIc5wi94HiReKPCzf5ih60DLiQs1DN0XTkug3zzyudq', '2021-07-14 19:57:17.302357', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('93', 'OWQH7uMGXkIsL5n8QNWMaK7nSuEVFJdj6r2MnK2EYZldNKHoEab8yazSF4twch82', 'VGj3mQ9ghiphQJBLhAuO0ZnDz6lFmWvdoXA864TRboNuG6jjBGyXh50F6psnXIZO', '2021-07-14 19:57:21.032091', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('94', 'hIeX3MuKD4apcs7G5UsSwBJ4xvOeuIFCVV9FBGlGTbvk0S2t7PqUmn0GWG1uSiEp', 'ISPXHX3FVkZj5UXpiT7YiDLKf0m5Zea4q3yFTznh4WTMVrOh2113TD74kIn0gQpm', '2021-07-14 20:00:25.048109', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('95', '08ViBnBhY2MuvCcO59r7BmZvK4nFyxQkLY6iQWABxlfcBY6dPYolsVFOeedoeVBR', 'IgN7YeDvOJMQhbAWLyKHl4tA861lb5SONB0z2ZtyG2MAjSEwneoeXSbUiqnIBnon', '2021-07-14 20:00:28.478692', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('96', 'nRbfHy0mt0pNrbBdeuvxM0OrlZykarFUAK77SRbNRfRUFY10AI3ppZKqFaMZ9wmi', 'fVc8z9Y53u7OxsNEFbymvAF5YRn0Qn2ropiCbevdVUZDyQB13wDpQt6Z2rCDZD9A', '2021-07-14 20:10:42.628435', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('97', 'W2wBALWpKEB3xUHMcGwZEZvB9kKUCpzh8T9mkf0ueUQBmG2NGxo3oV5C9zN93ILB', 'EcHzZI43hdghiPF5SovNR0Vp1g9vXpCqmOLS5TG0fOZEaxayU2BQ9VI1SNx6XJCu', '2021-07-14 20:10:46.387089', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('98', 'odcfu3DbWzZMTI2pURbHRJMlxvcK42vXmRWSwC5FnwmzRzT6Hi2vF9m5O5ClnktK', 'KKZp4AnyNVVuWkRk6eCPqVWjuJEPrP60Rt6P9VveFTz6PR0p3da3eZaxdWll5i3o', '2021-07-14 20:29:35.216339', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('99', 'OxiMecRC06gevKPRLNxazMCeKwFUwOkWygnrAdPrI9ckh199KVDwIL57RA1EKtGe', 'TGQy8hhQYxussLyvMEUirCvBEHardFAJXL0CeY5FPi5WuxxCFJE90sbvaAJ0kDxt', '2021-07-14 20:32:41.870959', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('100', 'Cg7xyGeDIAIno4S1U1kkyMoSY4PdbYZZAmvBtxBvy9wA2JvMqxzUUxGXM0IUTPqy', 'knIS0PjBt9PevhoP2cGjf1qXupydWVzeH0Whkb7v8cT3d8D1b4wRLtU3GWRwbZzo', '2021-07-14 20:39:16.416549', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('101', 'nCsF8gU8ib2q5lcxXPBwrzjDity20TlJsjABxjSKUMoAnHUD1jjYMAdjyJux6FRK', 'IYHwaIhP2mX2vFOTU5Nln2d03k6t4XF3VjXp48vSe4nijfMoGI2s22Fe05ud9cXL', '2021-07-14 21:16:40.309888', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('102', 'huSykCnJuZ4n5nzZd07jLmzS2splux50LFzwE3PrCaqVhXJOjnhX4JlG1o0r5JPu', '1Ek0VSTpokfxMQCBs5gQEBaJ1gAOsIsMe6hewXexJLuftSDZaoiXna21DDYYUKet', '2021-07-14 21:31:16.965079', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('103', 'OLdL18ds9nmZPFlhYzgUkkP5r0XM4vphh9MgXii8qnxfMlhLkKLIK7udJ5iU80xW', 'Fs6zPRYRtLkUcHKwJmbsQWw0OagoYv8mp6AEeU9XwhoN8apeVWy1pb0OLdtIb5Kk', '2021-07-14 21:31:20.101791', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('104', 'GRopMr5WPLwzJCGvxqDo9dq3MEeCMH1VtKcZTG89ORHpbDp5nkmjcNEj24Wcmqn6', '6wVAZKcSEaMESmVSu7gj3Db6hRzqzrWNXBCIIirzjX0wasI3VAIaRNOBUTAXRog6', '2021-07-14 21:31:23.542105', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('105', 'IOJ9SmFW8W5dnmoDuyQ2K3raJ8j37RbtEJFkxcHZGvfkJyZPcrZV6n8dSwS2w1Mq', '0UpvjQfah6LrUGFBfdNfdT3E0sUF4YKiIfPt5s8EBD68wscVASJLT4fE4dQ55Spp', '2021-07-14 21:31:24.786233', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('106', 'ZzhKj4LURGFU5JqW6SdOQsd3HYX9WmSjmjGKzQt3XFRK3QLC7XXCztyS7dWfE7Jn', 'tqNBh7ejQRXHboEvy6DziPf1OKxExGXmytY4jldktMyCs4PHfUft6IEzQmsclDcN', '2021-07-14 21:35:08.196892', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('107', 'vTcwWYsG5j3TBpqcvcMMZ9RTClZ4VB7ATSxZAgIr7Tcn7PaEJeBKsuawmnUtTh4m', 'jHJBQIYGN59ORRAVHNWzX21cCp0hpMFTGJEMdhLAcVBwgskQsnnHSEXsl3YTNhjs', '2021-07-14 21:56:45.018931', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('108', 'LApR3iZlkb2EETBDxYEzJO6VxCxzGNtgOnWsDoKpkhO3qEgB2eQwwfQZl8QZ3kMT', 'tiPekd3R296DNRT8UQ5PFRUlXeVUDjNkJw56my692K7GslhSEnEafGXqspNLIDNS', '2021-07-15 05:30:56.955741', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('109', 'h59XThTHvCvILPcQtXCxBQIE2W17cNCaIF4WM38u6DBSIvtCUH4lq3gX4muWpL1B', '2l7HOtMmkRtrOmIZ7CnuMuVoQ00chdLGb9rTQzumbErVHmyFdgZZdxYxSvIJwFRu', '2021-07-15 05:29:31.975867', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('110', 'tZXC3tDlgq26QQhG2ZBxHF48m0KcDvfIzNTKV5dVaKUoIFyIo2IQPXeclPEb6TSq', '3omzCXIF4UPhdONX1ZbsEzmVv4lWspVonGwdTWFtYbKmrOxyK08CbrIXMq4CkiKL', '2021-07-15 05:31:24.334687', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('111', 'jzTcZU2zlvyYxUF2zaLniEVY5jEvkD6MgZiDv09LpJ281NxQjGJowpG0pdiefxwg', 'MHhZawZT6zpXNjJ36XuKf5JtDEzxeGI7XP5jZjOQqnlH1Y7aHApyjBBUZO0p0zgM', '2021-07-15 05:32:48.260046', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('112', 'j26cDfdO36euHx53hFXYesD7Xa5LpmAht1gKZEYnHCwEOHn13meYE31GOaM4jbXR', 'CipoWvPdAMqyP9IAZ2M75Xdd82yvR5MSl3jSqiLu72TFM61lHCaeIhoabo4mKwOa', '2021-07-15 05:33:49.405520', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('113', 'i3lrpEp8lNVxw1OIja61XqdIwKXC61CJU1YZ6OewSZKtsZBDokIrWvu9Ebtxi5Rt', 'wcCwc4TbLRsMSI87DEdRz9RBeXP7FGATisNwHLK6BKTpQOa4LUQIeEI7yp756egM', '2021-07-15 05:33:57.858326', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('114', '40h7TqPGGZ62OIEvcgqC2Edr6FmUpTBWzqbznZifErSBdJb536UM2pcFQUY1fBiM', 'Sy2WGv7dnd9Qyn5mkKBbzMgpaMpbFbbisNC9ecLz4TQq3Y5qH6B0vuk9Dw6jsZgL', '2021-07-15 05:34:45.284070', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('115', 'Amz789Cw5JSb4axNWzV5h03jjZQlBDWfMtWT7zPRUitIwjQ55cZonAdOgtvChaLD', 'tvwIs96ypqQH2teBh2IqIVNmrBPOK2g5JgGbc0lAEkjMm5ldwVYmTdaSIVYl2eaj', '2021-07-15 05:44:03.523185', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('116', 'yb4ccICpa4AoSYkBewOsTSGFhJzjT57eA7qTYPAkImS5KiBmRfojfZSTyqIFTx0Y', 'OW9IX3r2xhbGNRDaNQuRqafQ4Zy2xQjm9AT5hiyCoqtIgBHHqJWbKNgdj13I3j7L', '2021-07-15 05:44:26.407656', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('117', 'gqBzG6ELKyFzGVWadapRUl59p4bIeN6WZDvd3loUIROGTDesD9Jk7o8VzDfaertE', 'dZeRvBpHhg8Ao2auG8c5dsEqtmDrPdobk8hUYRUwVGZfNsGLvzYoc1rBWLdxNqL1', '2021-07-15 05:45:01.335562', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('118', 'LseQbchp6efGjRslS0QSCJ55QObnkqQdy8Pgpk6dPAHowInogtonSrrNxw6M56Pu', 'j0Ee4oXoxYWpIYxCTmXMpSH5GM9O8iIBprMU7HEkAemVd4OTzoIOyDZJx6bedeTL', '2021-07-15 15:57:36.367787', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('119', '8PeqRFuEuIUTB8jGqEnqyCnhRYqRdFVLRxAfBuLpBHcJdVSg2qWqA9zJbLA3hTBH', 'CtwcZDsufVlo2hLbcKSRH567HBPF6EXTcUeEFad3BzMc3fTBRVHHZZEv4bOvw94s', '2021-07-15 15:58:58.705807', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('120', 'Vfiz5TWW9YYdJBBuD35nU6k1CXonPlsbEMnPR9W2rBBS53iGxxsqtndGQ70XAh64', 'y5gyidtdyg9G9Q24qY4VsoM7QRswt57nNlaGLbefmPXMVTZv8p3EC0nG7joz6rQE', '2021-07-15 16:08:07.945825', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('121', 'fY0nA2DnepQkSDLImpD8NqgacMNutF8OCFfNh8U9oV34KMYbbClIojb0QV0Kqk08', 'lrRNhXXYqbQe4wzAR7CqJeuRWhNz7F4RGiXhtAY1MbQARGYcWMGXw5ufrGSZNRvy', '2021-07-15 16:26:04.186529', 'http://liveloop-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('122', 'BVaQqim1j6n127Slctu3mYQcPNfwkXVvIvRGskPiEj0WufGQ3Ifvy6YWgk02j3CE', 'S6UIiULYMsECLRpihrm0kD8L03y2PDJsxjAnYekr2DNzlh8Mnq2qcOwUZHpoEQOZ', '2021-07-15 16:39:58.337667', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('123', 'FnXoDkmc1dtZmSpPgrvcnq9NVK8uJfJGbYfrR9UShEdW7BLDwcNW7P4vUY1E3rS8', 'wOStYbsHdxuBFzYEG1WtWcmeIQkn58zSN5rhvwzAkwsS7rwqbCX0hved2ep5dy45', '2021-07-15 16:42:19.117807', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('124', 'kgjBJaRKTxcgLuAv4WxhXsOXnj4bMJg1lWOXhuOa6m3NjaPof57xUDn4A72A8szb', 'KJSj2sximdSoOfBt7YV4DaUB7wihdk0wLAQZlEs3gAddiCHgw0brDoqdPkbEdAVm', '2021-07-15 16:41:48.406694', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('125', '0eZoyhj6gW5vpLHxfj6HPMGGoSD5Tp2jPBiZ6GzgzsPvrERtNIDcrQIWWJMgCusE', 'xjwDuQnnzpn5TKrHVftNntEIH9p4hFls0fuLUhqyI90wzRntt0MtMi5odVzLRlU7', '2021-07-15 16:43:16.027938', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('126', 'b463vg51rRvu8SAEEgI8zKU4BNytZbAl5OMLOp05sJHE7TjqYUYqrtzZH3jP3JMa', 'lKzgHYXrRmhimsNU3ZCycDATh2c233oyIP03MmEGiOsaPSyNGOvGl0mz6OlVTDaD', '2021-07-16 16:24:10.648159', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('127', 'H55EXTfWZDyob1U1TffTKOuJnkxEcwKoNOor99xSSnHmXC1S4W2KTNhCo35T1FTq', 'q65LizVUCghluvFMrFvvswsEMh5FZo94gFspD4rfGobKGzbh8gm4GrdeSH8IY31K', '2021-07-16 16:24:42.580404', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('128', 'uPcaDGNnMxW0mcJfc7i9Egzv66nSFkJeLxjWILazW9G3aJdgXxGswm7BV9tmCbIz', 'JcsrDJFrSWyMLwrvF6tnR8r6EFCh043na2VFEHYkHRjHV7trDFTW91KrUTvkAdwl', '2021-07-16 16:25:25.886426', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('129', 'UslgHguE9QHfeFwQ0zWdPs7inmecCfJvXsYqJIBXQFunANqld0XMBNI645WSQg8U', 'fPySWpazy10NjW6qDuXtTNVi8R3hIpL5wm9QntHP8fafWuBkMSDghyHITHEPwRFG', '2021-07-16 16:25:27.272734', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('130', 'M3eIfTpUteDozhUmTTs4ZdU0pfxNMpZDxxNCM3nRCBs0KzbCPIxIYa2VlTXirS51', 'ltGoPFKiOVFchkDV8hwrFNtYef0z2IuiN7aNJyJKed9Zc3CqyVoT8OB5wjUbYRk6', '2021-07-16 16:25:51.564470', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('131', 'Ve18ESbTzTavNucoKnTLXlkYItHzlggx8uCHNVfxX3MavIsb5OR1zsTCcJ3VGDEM', 'ITMOllefbtzbqJwnpnb0lG9rNjHDvq5pRDLH34152ZLERAhsQWHytijrRRSHi2pZ', '2021-07-16 16:26:00.734581', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('132', 'othhc1Qm7GOaQl9eYrR5Exeb8F1kiIpYAf8ywocdlkLgJCsWBj6RZ09pfM8tEWdn', 'qonlZlzuBFaGTyD324S0WtFdIkEBiKM1wRZ8rBBFpvwQUe9rC6d1AuET63UsPti6', '2021-07-16 16:26:56.589172', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('133', 'pIN45OF9WJZgGdfwSYlsErtTAq1uCewx4VDADz6JSGQgNp9lCchb0x4cHO7Zavik', 'U49bap3mUOUA9k8whdJLn4JkNAD0F78Trh3qv0GbfzuFdNAtfWxER7GfLIXjJisc', '2021-07-16 16:31:34.772761', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('134', 'JasJknkgIsXjSqCH3nlE1G52hpfevtyG6B6rrVo4Wbg0X6ym8spGmGe4vflNrVwv', 'ZKMI4lSkN8iC6YUcDNXBOEX398KhnBPcsLJ9gjyUONwbtaP1Y9oCfWpU8dG3A0RW', '2021-07-16 16:34:17.136332', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('135', 'Ih2YPVooCWdne3gpoCUMJsImtkYNZhFVKHej3sAjddcD9czfpeShnsuvciVNsRN8', 'u1SzpnTitt0O1Tf62sekUmfjelQhPTUws9vh1KxmC1vefBrHvsk48R9zvWclaUF9', '2021-07-16 16:49:47.875668', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('136', '5ysGySnXOKTMuxCzrvIQwYvQ6434lZTHGehF9xy5jlP5mx0uZfqVpZBm1uuU6IPX', 'nRfWrGNs7wJtKk0my8l20LM9Q4EfWWAMpjWp0x7TzYGE7rIN9Tos3tknQdD4lZnY', '2021-07-16 16:49:50.309004', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('137', 'zmumbGRdRjj56Z6gmLeE8AkDbdj8FYdqtmgApTKTSiWzbKnLV5VjHhRUwiPeE1iz', 'Ul5oqm3F7hZGcmA5YNMnmpkwe99gNfyo1DyqkkbbN1qdIVdKFSTMLbUsKpx60PTM', '2021-07-16 16:49:54.565086', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('138', 'XHBKbmt21nXOJ6zMIKEqlUwpjPuOQE6pQQeUSRTL2s8JTqEuC22RcKwv87RUbaKb', 'AlIAkBSrayNk7WZPmzkivlwCyantg9pTBgqB12HAIPqI8ELsncerifNCuxW5yFBL', '2021-07-16 16:51:26.906184', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('139', '46ZxPT968dUBVJ22mHvY4xjOSE0mq2fgHqRU9MApRPUBauuweth8ct4S6K8ST7es', 'WcoeJkYGGlVg7kGNzlsQG2jmLkynoAO95assbUYoIVW9vrWwZn5ufy5mtQLXf3Yh', '2021-07-16 16:53:50.810445', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', '1');
INSERT INTO `sso_server_token` VALUES ('140', 'YUqwH0WweChlZ0P4aooHmLHQuvNUe1Jj6uOc6iIk5n1c49t8enKVHjbqCFhwr7fY', 'yU9mA0XOjJDiBzP9XdVt8UagtPtOVZlZz2MPfilyAHsXPHR5zZusa3nszgo1dMIB', '2021-07-16 16:56:25.013561', 'http://buyersonar-dev.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('141', 'Omgui6nzPP1bYoq3WJDDTQXZHOVqhqvMhMI9GD9ClBG9ZqwbObv87rFc7KBoryNv', 'EHzrxdQBU48MWZhvSo9XR8fKJe5GokqN7ptpu4MHTxLde7p5EVeiffumDHn4Vlbk', '2021-07-16 16:57:37.976816', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
INSERT INTO `sso_server_token` VALUES ('142', 'h3NugkaxsP9o5GggmqgIazXiSqniazcOSgKsIzdvBPrtiRtMeVrbYuQi7IhVnl6d', 'RYDwdtMthQXLfNvsJaoJFtJegQnn5xUC1IRUyqtzxWy3jdOtHkc4IHSrVQ8Ar6Za', '2021-07-16 17:07:56.420228', 'http://liveloop-dev-new.herokuapp.com/ssologinauthenticate/?next=%2F', '1', null);
