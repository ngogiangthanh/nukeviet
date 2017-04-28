-- NUKEVIET 4.0
-- Module: Database
-- http://www.nukeviet.vn
--
-- Host: 127.0.0.1
-- Generation Time: April 28, 2017, 04:11 PM GMT
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET SESSION `character_set_client`='utf8mb4';
SET SESSION `character_set_results`='utf8mb4';
SET SESSION `character_set_connection`='utf8mb4';
SET SESSION `collation_connection`='utf8mb4_unicode_ci';
SET NAMES 'utf8mb4';
ALTER DATABASE DEFAULT CHARACTER SET `utf8mb4` COLLATE `utf8mb4_unicode_ci`;

--
-- Database: `ytuongtre`
--


-- ---------------------------------------


--
-- Table structure for table `ytt_authors`
--

DROP TABLE IF EXISTS `ytt_authors`;
CREATE TABLE `ytt_authors` (
  `admin_id` mediumint(8) unsigned NOT NULL,
  `editor` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `files_level` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `susp_reason` text  COLLATE utf8mb4_unicode_ci,
  `check_num` varchar(40)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_authors`
--

INSERT INTO `ytt_authors` VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 0, 0, 0, '', '9fc191a0694ddc8b5f50f9af30e5eae0', 1493385366, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36');


-- ---------------------------------------


--
-- Table structure for table `ytt_authors_config`
--

DROP TABLE IF EXISTS `ytt_authors_config`;
CREATE TABLE `ytt_authors_config` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `keyname` varchar(32)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyname` (`keyname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_authors_module`
--

DROP TABLE IF EXISTS `ytt_authors_module`;
CREATE TABLE `ytt_authors_module` (
  `mid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `module` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  `act_1` tinyint(4) NOT NULL DEFAULT '0',
  `act_2` tinyint(4) NOT NULL DEFAULT '1',
  `act_3` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`mid`),
  UNIQUE KEY `module` (`module`)
) ENGINE=MyISAM  AUTO_INCREMENT=12  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_authors_module`
--

INSERT INTO `ytt_authors_module` VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, 'e1b8ac2d0f698ba85c1ea123d2235d4f'), 
(2, 'authors', 'mod_authors', 2, 1, 1, 1, '15cc16fad5bc3548e915810a48233a62'), 
(3, 'settings', 'mod_settings', 3, 1, 1, 0, 'bd36492c8a6727ce31d353631de5d1f1'), 
(4, 'database', 'mod_database', 4, 1, 0, 0, 'ae2fd2648e51d8c3b3fa9d31c59f7cf5'), 
(5, 'webtools', 'mod_webtools', 5, 1, 0, 0, '9e0d2f9eb52c0125881e7e0968914f11'), 
(6, 'seotools', 'mod_seotools', 6, 1, 1, 0, '3680df712ce89b9ae33c49d92a63943e'), 
(7, 'language', 'mod_language', 7, 1, 1, 0, '0d409dbf77b59b5ac4a1d0784bd55c90'), 
(8, 'modules', 'mod_modules', 8, 1, 1, 0, 'a5f3e8f0a81e9215ed50f94d77cf313d'), 
(9, 'themes', 'mod_themes', 9, 1, 1, 0, '0a5f5ac35fc9bc3c4f183e86f0ec14b0'), 
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, '1e9cb02ea3efb9302d55cb1ab948dd60'), 
(11, 'upload', 'mod_upload', 11, 1, 1, 1, '78557386197cee7cb62945e8450c150a');


-- ---------------------------------------


--
-- Table structure for table `ytt_banip`
--

DROP TABLE IF EXISTS `ytt_banip`;
CREATE TABLE `ytt_banip` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `ip` varchar(32)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_banners_click`
--

DROP TABLE IF EXISTS `ytt_banners_click`;
CREATE TABLE `ytt_banners_click` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `click_time` int(11) unsigned NOT NULL DEFAULT '0',
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(15)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `bid` (`bid`),
  KEY `click_day` (`click_day`),
  KEY `click_ip` (`click_ip`),
  KEY `click_country` (`click_country`),
  KEY `click_browse_key` (`click_browse_key`),
  KEY `click_os_key` (`click_os_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_banners_click`
--

INSERT INTO `ytt_banners_click` VALUES
(2, 1493316418, 0, '::1', 'ZZ', '', 'chrome', '', 'Windows 10', 'http://localhost/nukeviet/vi/news/cong-nghe-thuc-pham/');


-- ---------------------------------------


--
-- Table structure for table `ytt_banners_clients`
--

DROP TABLE IF EXISTS `ytt_banners_clients`;
CREATE TABLE `ytt_banners_clients` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(60)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(200)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_time` int(11) unsigned NOT NULL DEFAULT '0',
  `full_name` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `yim` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `check_num` varchar(40)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(15)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_agent` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadtype` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`),
  KEY `full_name` (`full_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_banners_plans`
--

DROP TABLE IF EXISTS `ytt_banners_plans`;
CREATE TABLE `ytt_banners_plans` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `blang` char(2)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text  COLLATE utf8mb4_unicode_ci,
  `form` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `require_image` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM  AUTO_INCREMENT=4  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_banners_plans`
--

INSERT INTO `ytt_banners_plans` VALUES
(1, '', 'Quảng cáo giữa trang', '', 'sequential', 575, 72, 1, 1), 
(2, '', 'Quảng cáo trái', '', 'sequential', 212, 400, 1, 1), 
(3, '', 'Quảng cáo phải', '', 'random', 250, 400, 1, 1);


-- ---------------------------------------


--
-- Table structure for table `ytt_banners_rows`
--

DROP TABLE IF EXISTS `ytt_banners_rows`;
CREATE TABLE `ytt_banners_rows` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_name` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) unsigned NOT NULL DEFAULT '0',
  `height` int(4) unsigned NOT NULL DEFAULT '0',
  `file_alt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `bannerhtml` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `clid` (`clid`)
) ENGINE=MyISAM  AUTO_INCREMENT=5  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_banners_rows`
--

INSERT INTO `ytt_banners_rows` VALUES
(2, 'Quảng cáo trái', 2, 0, 'quangcao-left_2.png', 'png', 'image/png', 212, 400, '', '', '', '_blank', '', 1493308468, 1493308468, 0, 1, 1, 2), 
(3, 'Quảng cáo giữa trang', 1, 0, 'quancao-mid_1.png', 'png', 'image/png', 575, 72, '', '', '', '_blank', '', 1493308468, 1493308468, 0, 0, 1, 1), 
(4, 'Quảng cáo phải', 3, 0, 'quangcao-right_2.png', 'png', 'image/png', 250, 400, '', '', '', '_blank', '', 1493372689, 1493372689, 0, 0, 1, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_config`
--

DROP TABLE IF EXISTS `ytt_config`;
CREATE TABLE `ytt_config` (
  `lang` varchar(3)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text  COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `lang` (`lang`,`module`,`config_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_config`
--

INSERT INTO `ytt_config` VALUES
('sys', 'site', 'closed_site', '0'), 
('sys', 'site', 'admin_theme', 'admin_default'), 
('sys', 'site', 'date_pattern', 'l, d/m/Y'), 
('sys', 'site', 'time_pattern', 'H:i'), 
('sys', 'site', 'online_upd', '1'), 
('sys', 'site', 'statistic', '1'), 
('sys', 'site', 'site_phone', ''), 
('sys', 'site', 'mailer_mode', ''), 
('sys', 'site', 'smtp_host', 'smtp.gmail.com'), 
('sys', 'site', 'smtp_ssl', '1'), 
('sys', 'site', 'smtp_port', '465'), 
('sys', 'site', 'smtp_username', 'user@gmail.com'), 
('sys', 'site', 'smtp_password', ''), 
('sys', 'site', 'googleAnalyticsID', ''), 
('sys', 'site', 'googleAnalyticsSetDomainName', '0'), 
('sys', 'site', 'googleAnalyticsMethod', 'classic'), 
('sys', 'site', 'googleMapsAPI', 'AIzaSyC8ODAzZ75hsAufVBSffnwvKfTOT6TnnNQ'), 
('sys', 'site', 'searchEngineUniqueID', ''), 
('sys', 'site', 'metaTagsOgp', '1'), 
('sys', 'site', 'pageTitleMode', 'pagetitle'), 
('sys', 'site', 'description_length', '170'), 
('sys', 'site', 'nv_unickmin', '4'), 
('sys', 'site', 'nv_unickmax', '20'), 
('sys', 'site', 'nv_upassmin', '8'), 
('sys', 'site', 'nv_upassmax', '32'), 
('sys', 'site', 'dir_forum', ''), 
('sys', 'site', 'nv_unick_type', '4'), 
('sys', 'site', 'nv_upass_type', '3'), 
('sys', 'site', 'allowmailchange', '1'), 
('sys', 'site', 'allowuserpublic', '1'), 
('sys', 'site', 'allowquestion', '0'), 
('sys', 'site', 'allowloginchange', '0'), 
('sys', 'site', 'allowuserlogin', '1'), 
('sys', 'site', 'allowuserloginmulti', '0'), 
('sys', 'site', 'allowuserreg', '2'), 
('sys', 'site', 'is_user_forum', '0'), 
('sys', 'site', 'openid_servers', ''), 
('sys', 'site', 'openid_processing', '0'), 
('sys', 'site', 'user_check_pass_time', '1800'), 
('sys', 'site', 'auto_login_after_reg', '1'), 
('sys', 'site', 'whoviewuser', '2'), 
('sys', 'define', 'nv_gfx_num', '6'), 
('sys', 'global', 'ssl_https', '0'), 
('sys', 'global', 'notification_active', '1'), 
('sys', 'global', 'notification_autodel', '15'), 
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'), 
('sys', 'global', 'block_admin_ip', '0'), 
('sys', 'global', 'admfirewall', '0'), 
('sys', 'global', 'dump_autobackup', '1'), 
('sys', 'global', 'dump_backup_ext', 'gz'), 
('sys', 'global', 'dump_backup_day', '30'), 
('sys', 'global', 'gfx_chk', '3'), 
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'), 
('sys', 'global', 'forbid_extensions', 'php,php3,php4,php5,phtml,inc'), 
('sys', 'global', 'forbid_mimes', ''), 
('sys', 'global', 'nv_max_size', '2097152'), 
('sys', 'global', 'upload_checking_mode', 'mild'), 
('sys', 'global', 'upload_alt_require', '1'), 
('sys', 'global', 'upload_auto_alt', '1'), 
('sys', 'global', 'useactivate', '2'), 
('sys', 'global', 'allow_sitelangs', 'vi'), 
('sys', 'global', 'read_type', '0'), 
('sys', 'global', 'rewrite_enable', '1'), 
('sys', 'global', 'rewrite_optional', '0'), 
('sys', 'global', 'rewrite_endurl', '/'), 
('sys', 'global', 'rewrite_exturl', '.html'), 
('sys', 'global', 'rewrite_op_mod', ''), 
('sys', 'global', 'autocheckupdate', '1'), 
('sys', 'global', 'autoupdatetime', '24'), 
('sys', 'global', 'gzip_method', '1'), 
('sys', 'global', 'authors_detail_main', '0'), 
('sys', 'global', 'spadmin_add_admin', '1'), 
('sys', 'global', 'timestamp', '9'), 
('sys', 'global', 'captcha_type', '1'), 
('sys', 'global', 'version', '4.1.02'), 
('sys', 'global', 'facebook_client_id', ''), 
('sys', 'global', 'facebook_client_secret', ''), 
('sys', 'global', 'google_client_id', ''), 
('sys', 'global', 'google_client_secret', ''), 
('sys', 'global', 'cookie_httponly', '1'), 
('sys', 'global', 'admin_check_pass_time', '1800'), 
('sys', 'global', 'cookie_secure', '0'), 
('sys', 'global', 'is_flood_blocker', '1'), 
('sys', 'global', 'max_requests_60', '40'), 
('sys', 'global', 'max_requests_300', '150'), 
('sys', 'global', 'is_login_blocker', '1'), 
('sys', 'global', 'login_number_tracking', '5'), 
('sys', 'global', 'login_time_tracking', '5'), 
('sys', 'global', 'login_time_ban', '1440'), 
('sys', 'global', 'nv_display_errors_list', '1'), 
('sys', 'global', 'display_errors_list', '1'), 
('sys', 'global', 'nv_auto_resize', '1'), 
('sys', 'global', 'dump_interval', '1'), 
('sys', 'global', 'cdn_url', ''), 
('sys', 'global', 'two_step_verification', '0'), 
('sys', 'global', 'recaptcha_sitekey', ''), 
('sys', 'global', 'recaptcha_secretkey', ''), 
('sys', 'global', 'recaptcha_type', 'image'), 
('sys', 'define', 'nv_gfx_width', '150'), 
('sys', 'define', 'nv_gfx_height', '40'), 
('sys', 'define', 'nv_max_width', '1500'), 
('sys', 'define', 'nv_max_height', '1500'), 
('sys', 'define', 'nv_live_cookie_time', '31104000'), 
('sys', 'define', 'nv_live_session_time', '0'), 
('sys', 'define', 'nv_anti_iframe', '0'), 
('sys', 'define', 'nv_anti_agent', '0'), 
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'), 
('vi', 'global', 'site_domain', ''), 
('vi', 'global', 'site_name', 'Sàn Giao Dịch Ý Tưởng'), 
('vi', 'global', 'site_logo', 'uploads/ytuong-banner-white_200_56.png'), 
('vi', 'global', 'site_banner', ''), 
('vi', 'global', 'site_favicon', 'uploads/favicon.ico'), 
('vi', 'global', 'site_description', 'Khơi nguồn - Kết nối - Thực hiện'), 
('vi', 'global', 'site_keywords', 'y tuong tre, san giao dich, ý tưởng tre, sàn giao dịch'), 
('vi', 'global', 'theme_type', 'r,d,m'), 
('vi', 'global', 'site_theme', 'default'), 
('vi', 'global', 'mobile_theme', 'mobile_default'), 
('vi', 'global', 'site_home_module', 'news'), 
('vi', 'global', 'switch_mobi_des', '1'), 
('vi', 'global', 'upload_logo', ''), 
('vi', 'global', 'upload_logo_pos', 'bottomRight'), 
('vi', 'global', 'autologosize1', '50'), 
('vi', 'global', 'autologosize2', '40'), 
('vi', 'global', 'autologosize3', '30'), 
('vi', 'global', 'autologomod', ''), 
('vi', 'global', 'name_show', '0'), 
('vi', 'global', 'cronjobs_next_time', '1493396156'), 
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật sàn giao dịch ý tưởng trẻ đang tạm ngưng hoạt động.<br  />
<br  />
Thành thật xin lỗi các bạn vì sự bất tiện này!'), 
('vi', 'global', 'ssl_https_modules', ''), 
('vi', 'seotools', 'prcservice', ''), 
('vi', 'about', 'auto_postcomm', '1'), 
('vi', 'about', 'allowed_comm', '-1'), 
('vi', 'about', 'view_comm', '6'), 
('vi', 'about', 'setcomm', '4'), 
('vi', 'about', 'activecomm', '0'), 
('vi', 'about', 'emailcomm', '0'), 
('vi', 'about', 'adminscomm', ''), 
('vi', 'about', 'sortcomm', '0'), 
('vi', 'about', 'captcha', '1'), 
('vi', 'about', 'perpagecomm', '5'), 
('vi', 'about', 'timeoutcomm', '360'), 
('vi', 'news', 'indexfile', 'viewcat_main_right'), 
('vi', 'news', 'per_page', '20'), 
('vi', 'news', 'st_links', '10'), 
('vi', 'news', 'homewidth', '100'), 
('vi', 'news', 'homeheight', '150'), 
('vi', 'news', 'blockwidth', '70'), 
('vi', 'news', 'blockheight', '75'), 
('vi', 'news', 'imagefull', '460'), 
('vi', 'news', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'), 
('vi', 'news', 'showtooltip', '1'), 
('vi', 'news', 'tooltip_position', 'bottom'), 
('vi', 'news', 'tooltip_length', '150'), 
('vi', 'news', 'showhometext', '1'), 
('vi', 'news', 'timecheckstatus', '0'), 
('vi', 'news', 'config_source', '0'), 
('vi', 'news', 'show_no_image', ''), 
('vi', 'news', 'allowed_rating_point', '1'), 
('vi', 'news', 'facebookappid', ''), 
('vi', 'news', 'socialbutton', '1'), 
('vi', 'news', 'alias_lower', '1'), 
('vi', 'news', 'tags_alias', '0'), 
('vi', 'news', 'auto_tags', '0'), 
('vi', 'news', 'tags_remind', '1'), 
('vi', 'news', 'copy_news', '0'), 
('vi', 'news', 'structure_upload', 'Ym'), 
('vi', 'news', 'imgposition', '2'), 
('vi', 'news', 'htmlhometext', '0'), 
('vi', 'news', 'elas_use', '0'), 
('vi', 'news', 'elas_host', ''), 
('vi', 'news', 'elas_port', '9200'), 
('vi', 'news', 'elas_index', ''), 
('vi', 'news', 'instant_articles_active', '0'), 
('vi', 'news', 'instant_articles_template', 'default'), 
('vi', 'news', 'instant_articles_httpauth', '0'), 
('vi', 'news', 'instant_articles_username', ''), 
('vi', 'news', 'instant_articles_password', ''), 
('vi', 'news', 'instant_articles_livetime', '60'), 
('vi', 'news', 'instant_articles_gettime', '120'), 
('vi', 'news', 'instant_articles_auto', '1'), 
('vi', 'news', 'auto_postcomm', '1'), 
('vi', 'news', 'allowed_comm', '-1'), 
('vi', 'news', 'view_comm', '6'), 
('vi', 'news', 'setcomm', '4'), 
('vi', 'news', 'activecomm', '1'), 
('vi', 'news', 'emailcomm', '0'), 
('vi', 'news', 'adminscomm', ''), 
('vi', 'news', 'sortcomm', '0'), 
('vi', 'news', 'captcha', '1'), 
('vi', 'news', 'perpagecomm', '5'), 
('vi', 'news', 'timeoutcomm', '360'), 
('vi', 'page', 'auto_postcomm', '1'), 
('vi', 'page', 'allowed_comm', '-1'), 
('vi', 'page', 'view_comm', '6'), 
('vi', 'page', 'setcomm', '4'), 
('vi', 'page', 'activecomm', '0'), 
('vi', 'page', 'emailcomm', '0'), 
('vi', 'page', 'adminscomm', ''), 
('vi', 'page', 'sortcomm', '0'), 
('vi', 'page', 'captcha', '1'), 
('vi', 'page', 'perpagecomm', '5'), 
('vi', 'page', 'timeoutcomm', '360'), 
('vi', 'siteterms', 'auto_postcomm', '1'), 
('vi', 'siteterms', 'allowed_comm', '-1'), 
('vi', 'siteterms', 'view_comm', '6'), 
('vi', 'siteterms', 'setcomm', '4'), 
('vi', 'siteterms', 'activecomm', '0'), 
('vi', 'siteterms', 'emailcomm', '0'), 
('vi', 'siteterms', 'adminscomm', ''), 
('vi', 'siteterms', 'sortcomm', '0'), 
('vi', 'siteterms', 'captcha', '1'), 
('vi', 'siteterms', 'perpagecomm', '5'), 
('vi', 'siteterms', 'timeoutcomm', '360'), 
('vi', 'freecontent', 'next_execute', '0'), 
('vi', 'contact', 'bodytext', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'), 
('sys', 'site', 'statistics_timezone', 'Asia/Bangkok'), 
('sys', 'site', 'site_email', 'ytuongtrevccict@gmail.com'), 
('sys', 'global', 'error_set_logs', '1'), 
('sys', 'global', 'error_send_email', 'ytuongtrevccict@gmail.com'), 
('sys', 'global', 'site_lang', 'vi'), 
('sys', 'global', 'my_domains', 'localhost'), 
('sys', 'global', 'cookie_prefix', 'nv4c_z331e'), 
('sys', 'global', 'session_prefix', 'nv4s_i9Yn78'), 
('sys', 'global', 'site_timezone', 'byCountry'), 
('sys', 'global', 'proxy_blocker', '0'), 
('sys', 'global', 'str_referer_blocker', '0'), 
('sys', 'global', 'lang_multi', '1'), 
('sys', 'global', 'lang_geo', '0'), 
('sys', 'global', 'ftp_server', 'localhost'), 
('sys', 'global', 'ftp_port', '21'), 
('sys', 'global', 'ftp_user_name', ''), 
('sys', 'global', 'ftp_user_pass', 'rV5vf60L5IOgJI4GmG4Wxa1eb3-tC-SDoCSOBphuFsU,'), 
('sys', 'global', 'ftp_path', '/'), 
('sys', 'global', 'ftp_check_login', '0'), 
('vi', 'shops', 'image_size', '100x100'), 
('vi', 'shops', 'home_view', 'view_home_cat'), 
('vi', 'shops', 'per_page', '20'), 
('vi', 'shops', 'per_row', '4'), 
('vi', 'shops', 'money_unit', 'VND'), 
('vi', 'shops', 'weight_unit', 'kg'), 
('vi', 'shops', 'post_auto_member', '0'), 
('vi', 'shops', 'auto_check_order', '0'), 
('vi', 'shops', 'format_order_id', 'S%06s'), 
('vi', 'shops', 'format_code_id', 'S%06s'), 
('vi', 'shops', 'facebookappid', '405881699767434'), 
('vi', 'shops', 'active_guest_order', '0'), 
('vi', 'shops', 'active_showhomtext', '1'), 
('vi', 'shops', 'active_order', '0'), 
('vi', 'shops', 'active_order_popup', '1'), 
('vi', 'shops', 'active_order_non_detail', '0'), 
('vi', 'shops', 'active_price', '0'), 
('vi', 'shops', 'active_order_number', '0'), 
('vi', 'shops', 'order_day', '0'), 
('vi', 'shops', 'order_nexttime', '0'), 
('vi', 'shops', 'active_payment', '0'), 
('vi', 'shops', 'groups_price', '3'), 
('vi', 'shops', 'active_tooltip', '1'), 
('vi', 'shops', 'timecheckstatus', '0'), 
('vi', 'shops', 'show_product_code', '0'), 
('vi', 'shops', 'show_compare', '0'), 
('vi', 'shops', 'show_displays', '0'), 
('vi', 'shops', 'use_shipping', '0'), 
('vi', 'shops', 'use_coupons', '0'), 
('vi', 'shops', 'active_wishlist', '1'), 
('vi', 'shops', 'active_gift', '0'), 
('vi', 'shops', 'active_warehouse', '0'), 
('vi', 'shops', 'tags_alias', '0'), 
('vi', 'shops', 'auto_tags', '1'), 
('vi', 'shops', 'tags_remind', '0'), 
('vi', 'shops', 'point_active', '0'), 
('vi', 'shops', 'point_conversion', '0'), 
('vi', 'shops', 'point_new_order', '0'), 
('vi', 'shops', 'review_active', '1'), 
('vi', 'shops', 'review_check', '0'), 
('vi', 'shops', 'review_captcha', '1'), 
('vi', 'shops', 'group_price', ''), 
('vi', 'shops', 'groups_notify', '1,2,3,7'), 
('vi', 'shops', 'template_active', '0'), 
('vi', 'shops', 'download_active', '1'), 
('vi', 'shops', 'download_groups', '4'), 
('vi', 'shops', 'alias_lower', '1'), 
('vi', 'shops', 'auto_postcomm', '1'), 
('vi', 'shops', 'allowed_comm', '-1'), 
('vi', 'shops', 'view_comm', '6'), 
('vi', 'shops', 'setcomm', '4'), 
('vi', 'shops', 'activecomm', '1'), 
('vi', 'shops', 'emailcomm', '0'), 
('vi', 'shops', 'adminscomm', ''), 
('vi', 'shops', 'sortcomm', '0'), 
('vi', 'shops', 'captcha', '1'), 
('vi', 'themes', 'default', 'a:4:{s:6:\"header\";a:1:{s:16:\"background_color\";s:7:\"#8dc1ed\";}s:6:\"footer\";a:1:{s:16:\"background_color\";s:7:\"#3289c7\";}s:5:\"gfont\";a:1:{s:6:\"family\";s:6:\"Roboto\";}s:11:\"css_content\";s:70:\"[header]{background-color:#8dc1ed;}[footer]{background-color:#3289c7;}\";}'), 
('en', 'global', 'site_domain', ''), 
('en', 'global', 'site_name', 'NukeViet CMS 4.x'), 
('en', 'global', 'site_logo', ''), 
('en', 'global', 'site_banner', ''), 
('en', 'global', 'site_favicon', ''), 
('en', 'global', 'site_description', 'Sharing success, connect passions'), 
('en', 'global', 'site_keywords', ''), 
('en', 'global', 'theme_type', 'r,d,m'), 
('en', 'global', 'site_theme', 'default'), 
('en', 'global', 'mobile_theme', 'mobile_default'), 
('en', 'global', 'site_home_module', 'news'), 
('en', 'global', 'switch_mobi_des', '1'), 
('en', 'global', 'upload_logo', ''), 
('en', 'global', 'upload_logo_pos', 'bottomRight'), 
('en', 'global', 'autologosize1', '50'), 
('en', 'global', 'autologosize2', '40'), 
('en', 'global', 'autologosize3', '30'), 
('en', 'global', 'autologomod', ''), 
('en', 'global', 'name_show', '1'), 
('en', 'global', 'cronjobs_next_time', '1493344733'), 
('en', 'global', 'disable_site_content', 'For technical reasons Web site temporary not available. we are very sorry for that inconvenience!'), 
('en', 'global', 'ssl_https_modules', ''), 
('en', 'about', 'auto_postcomm', '1'), 
('en', 'about', 'allowed_comm', '-1'), 
('en', 'about', 'view_comm', '6'), 
('en', 'about', 'setcomm', '4'), 
('en', 'about', 'activecomm', '0'), 
('en', 'about', 'emailcomm', '0'), 
('en', 'about', 'adminscomm', ''), 
('en', 'about', 'sortcomm', '0'), 
('en', 'about', 'captcha', '1'), 
('en', 'about', 'perpagecomm', '5'), 
('en', 'about', 'timeoutcomm', '360'), 
('en', 'news', 'indexfile', 'viewcat_main_right'), 
('en', 'news', 'per_page', '20'), 
('en', 'news', 'st_links', '10'), 
('en', 'news', 'homewidth', '100'), 
('en', 'news', 'homeheight', '150'), 
('en', 'news', 'blockwidth', '70'), 
('en', 'news', 'blockheight', '75'), 
('en', 'news', 'imagefull', '460'), 
('en', 'news', 'copyright', 'Note: The above article reprinted at the website or other media sources not specify the source http://nukeviet.vn is copyright infringement'), 
('en', 'news', 'showtooltip', '1'), 
('en', 'news', 'tooltip_position', 'bottom'), 
('en', 'news', 'tooltip_length', '150'), 
('en', 'news', 'showhometext', '1'), 
('en', 'news', 'timecheckstatus', '0'), 
('en', 'news', 'config_source', '0'), 
('en', 'news', 'show_no_image', ''), 
('en', 'news', 'allowed_rating_point', '1'), 
('en', 'news', 'facebookappid', ''), 
('en', 'news', 'socialbutton', '1'), 
('en', 'news', 'alias_lower', '1'), 
('en', 'news', 'tags_alias', '0'), 
('en', 'news', 'auto_tags', '0'), 
('en', 'news', 'tags_remind', '1'), 
('en', 'news', 'copy_news', '0'), 
('en', 'news', 'structure_upload', 'Ym'), 
('en', 'news', 'imgposition', '2'), 
('en', 'news', 'htmlhometext', '0'), 
('en', 'news', 'elas_use', '0'), 
('en', 'news', 'elas_host', ''), 
('en', 'news', 'elas_port', '9200'), 
('en', 'news', 'elas_index', ''), 
('en', 'news', 'instant_articles_active', '0'), 
('en', 'news', 'instant_articles_template', 'default'), 
('en', 'news', 'instant_articles_httpauth', '0'), 
('en', 'news', 'instant_articles_username', ''), 
('en', 'news', 'instant_articles_password', ''), 
('en', 'news', 'instant_articles_livetime', '60'), 
('en', 'news', 'instant_articles_gettime', '120'), 
('en', 'news', 'instant_articles_auto', '1'), 
('en', 'news', 'auto_postcomm', '1'), 
('en', 'news', 'allowed_comm', '-1'), 
('en', 'news', 'view_comm', '6'), 
('en', 'news', 'setcomm', '4'), 
('en', 'news', 'activecomm', '1'), 
('en', 'news', 'emailcomm', '0'), 
('en', 'news', 'adminscomm', ''), 
('en', 'news', 'sortcomm', '0'), 
('en', 'news', 'captcha', '1'), 
('en', 'news', 'perpagecomm', '5'), 
('en', 'news', 'timeoutcomm', '360'), 
('en', 'page', 'auto_postcomm', '1'), 
('en', 'page', 'allowed_comm', '-1'), 
('en', 'page', 'view_comm', '6'), 
('en', 'page', 'setcomm', '4'), 
('en', 'page', 'activecomm', '1'), 
('en', 'page', 'emailcomm', '0'), 
('en', 'page', 'adminscomm', ''), 
('en', 'page', 'sortcomm', '0'), 
('en', 'page', 'captcha', '1'), 
('en', 'page', 'perpagecomm', '5'), 
('en', 'page', 'timeoutcomm', '360'), 
('en', 'siteterms', 'auto_postcomm', '1'), 
('en', 'siteterms', 'allowed_comm', '-1'), 
('en', 'siteterms', 'view_comm', '6'), 
('en', 'siteterms', 'setcomm', '4'), 
('en', 'siteterms', 'activecomm', '1'), 
('en', 'siteterms', 'emailcomm', '0'), 
('en', 'siteterms', 'adminscomm', ''), 
('en', 'siteterms', 'sortcomm', '0'), 
('en', 'siteterms', 'captcha', '1'), 
('en', 'siteterms', 'perpagecomm', '5'), 
('en', 'siteterms', 'timeoutcomm', '360'), 
('en', 'freecontent', 'next_execute', '0'), 
('vi', 'slider', 'indexfile', 'viewcat_page_new'), 
('vi', 'slider', 'homewidth', '100'), 
('vi', 'slider', 'homeheight', '150'), 
('vi', 'slider', 'blockwidth', '52'), 
('vi', 'slider', 'blockheight', '75'), 
('vi', 'slider', 'show_no_image', ''), 
('vi', 'slider', 'structure_upload', 'Ym'), 
('vi', 'slider', 'timecheckstatus', '0'), 
('vi', 'download', 'auto_postcomm', '1'), 
('vi', 'download', 'allowed_comm', '-1'), 
('vi', 'download', 'view_comm', '6'), 
('vi', 'download', 'setcomm', '4'), 
('vi', 'download', 'activecomm', '1'), 
('vi', 'download', 'emailcomm', '0'), 
('vi', 'download', 'adminscomm', ''), 
('vi', 'download', 'sortcomm', '0'), 
('vi', 'download', 'captcha', '1'), 
('vi', 'download', 'perpagecomm', '5'), 
('vi', 'download', 'timeoutcomm', '360');


-- ---------------------------------------


--
-- Table structure for table `ytt_cookies`
--

DROP TABLE IF EXISTS `ytt_cookies`;
CREATE TABLE `ytt_cookies` (
  `name` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0',
  `secure` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_cookies`
--

INSERT INTO `ytt_cookies` VALUES
('nv4c_b1Spx_ctr', 'NThfMTg2XzE0OV81Ny5WTg==', '.api.nukeviet.vn', '/', 1524923267, 0), 
('nv4c_b1Spx_u_lang', '3KI,', '.api.nukeviet.vn', '/', 1524412756, 0), 
('nv4c_b1Spx_statistic_vi', 'l21tlpiWaG1qaA,,', '.api.nukeviet.vn', '/', 1493310556, 0), 
('nv4c_b1Spx_nvvithemever', 'deleted', '.api.nukeviet.vn', '/', 1, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_counter`
--

DROP TABLE IF EXISTS `ytt_counter`;
CREATE TABLE `ytt_counter` (
  `c_type` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT '0',
  `c_count` int(11) unsigned NOT NULL DEFAULT '0',
  `vi_count` int(11) unsigned NOT NULL DEFAULT '0',
  `en_count` int(11) DEFAULT '0',
  UNIQUE KEY `c_type` (`c_type`,`c_val`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_counter`
--

INSERT INTO `ytt_counter` VALUES
('c_time', 'start', 0, 0, 0, 0), 
('c_time', 'last', 0, 1493394358, 0, 0), 
('total', 'hits', 1493394358, 48, 47, 1), 
('year', '2017', 1493394358, 48, 47, 1), 
('year', '2018', 0, 0, 0, 0), 
('year', '2019', 0, 0, 0, 0), 
('year', '2020', 0, 0, 0, 0), 
('year', '2021', 0, 0, 0, 0), 
('year', '2022', 0, 0, 0, 0), 
('year', '2023', 0, 0, 0, 0), 
('year', '2024', 0, 0, 0, 0), 
('year', '2025', 0, 0, 0, 0), 
('month', 'Jan', 0, 0, 0, 0), 
('month', 'Feb', 0, 0, 0, 0), 
('month', 'Mar', 0, 0, 0, 0), 
('month', 'Apr', 1493394358, 48, 47, 1), 
('month', 'May', 0, 0, 0, 0), 
('month', 'Jun', 0, 0, 0, 0), 
('month', 'Jul', 0, 0, 0, 0), 
('month', 'Aug', 0, 0, 0, 0), 
('month', 'Sep', 0, 0, 0, 0), 
('month', 'Oct', 0, 0, 0, 0), 
('month', 'Nov', 0, 0, 0, 0), 
('month', 'Dec', 0, 0, 0, 0), 
('day', '01', 0, 0, 0, 0), 
('day', '02', 0, 0, 0, 0), 
('day', '03', 0, 0, 0, 0), 
('day', '04', 0, 0, 0, 0), 
('day', '05', 0, 0, 0, 0), 
('day', '06', 0, 0, 0, 0), 
('day', '07', 0, 0, 0, 0), 
('day', '08', 0, 0, 0, 0), 
('day', '09', 0, 0, 0, 0), 
('day', '10', 0, 0, 0, 0), 
('day', '11', 0, 0, 0, 0), 
('day', '12', 0, 0, 0, 0), 
('day', '13', 0, 0, 0, 0), 
('day', '14', 0, 0, 0, 0), 
('day', '15', 0, 0, 0, 0), 
('day', '16', 0, 0, 0, 0), 
('day', '17', 0, 0, 0, 0), 
('day', '18', 0, 0, 0, 0), 
('day', '19', 0, 0, 0, 0), 
('day', '20', 0, 0, 0, 0), 
('day', '21', 0, 0, 0, 0), 
('day', '22', 0, 0, 0, 0), 
('day', '23', 0, 0, 0, 0), 
('day', '24', 0, 0, 0, 0), 
('day', '25', 0, 0, 0, 0), 
('day', '26', 0, 0, 0, 0), 
('day', '27', 1493312280, 5, 5, 0), 
('day', '28', 1493394358, 43, 42, 1), 
('day', '29', 0, 0, 0, 0), 
('day', '30', 0, 0, 0, 0), 
('day', '31', 0, 0, 0, 0), 
('dayofweek', 'Sunday', 0, 0, 0, 0), 
('dayofweek', 'Monday', 0, 0, 0, 0), 
('dayofweek', 'Tuesday', 0, 0, 0, 0), 
('dayofweek', 'Wednesday', 0, 0, 0, 0), 
('dayofweek', 'Thursday', 1493312280, 5, 5, 0), 
('dayofweek', 'Friday', 1493394358, 43, 42, 1), 
('dayofweek', 'Saturday', 0, 0, 0, 0), 
('hour', '00', 1493315244, 3, 3, 0), 
('hour', '01', 1493317858, 3, 3, 0), 
('hour', '02', 1493319669, 1, 1, 0), 
('hour', '03', 0, 0, 0, 0), 
('hour', '04', 0, 0, 0, 0), 
('hour', '05', 0, 0, 0, 0), 
('hour', '06', 0, 0, 0, 0), 
('hour', '07', 0, 0, 0, 0), 
('hour', '08', 1493344753, 3, 3, 0), 
('hour', '09', 1493346610, 3, 2, 1), 
('hour', '10', 1493350901, 4, 4, 0), 
('hour', '11', 1493354944, 5, 5, 0), 
('hour', '12', 0, 0, 0, 0), 
('hour', '13', 1493361886, 1, 1, 0), 
('hour', '14', 1493365651, 1, 1, 0), 
('hour', '15', 1493367477, 1, 1, 0), 
('hour', '16', 1493372301, 3, 3, 0), 
('hour', '17', 1493376159, 4, 4, 0), 
('hour', '18', 0, 0, 0, 0), 
('hour', '19', 0, 0, 0, 0), 
('hour', '20', 1493386993, 3, 3, 0), 
('hour', '21', 1493391047, 4, 4, 0), 
('hour', '22', 1493394358, 4, 4, 0), 
('hour', '23', 1493312280, 0, 0, 0), 
('bot', 'googlebot', 0, 0, 0, 0), 
('bot', 'msnbot', 0, 0, 0, 0), 
('bot', 'bingbot', 0, 0, 0, 0), 
('bot', 'yahooslurp', 0, 0, 0, 0), 
('bot', 'w3cvalidator', 0, 0, 0, 0), 
('browser', 'opera', 0, 0, 0, 0), 
('browser', 'operamini', 0, 0, 0, 0), 
('browser', 'webtv', 0, 0, 0, 0), 
('browser', 'explorer', 0, 0, 0, 0), 
('browser', 'edge', 1493394263, 20, 19, 1), 
('browser', 'pocket', 0, 0, 0, 0), 
('browser', 'konqueror', 0, 0, 0, 0), 
('browser', 'icab', 0, 0, 0, 0), 
('browser', 'omniweb', 0, 0, 0, 0), 
('browser', 'firebird', 0, 0, 0, 0), 
('browser', 'firefox', 1493392410, 1, 1, 0), 
('browser', 'iceweasel', 0, 0, 0, 0), 
('browser', 'shiretoko', 0, 0, 0, 0), 
('browser', 'mozilla', 0, 0, 0, 0), 
('browser', 'amaya', 0, 0, 0, 0), 
('browser', 'lynx', 0, 0, 0, 0), 
('browser', 'safari', 0, 0, 0, 0), 
('browser', 'iphone', 0, 0, 0, 0), 
('browser', 'ipod', 0, 0, 0, 0), 
('browser', 'ipad', 0, 0, 0, 0), 
('browser', 'chrome', 1493394358, 27, 27, 0), 
('browser', 'cococ', 0, 0, 0, 0), 
('browser', 'android', 0, 0, 0, 0), 
('browser', 'googlebot', 0, 0, 0, 0), 
('browser', 'yahooslurp', 0, 0, 0, 0), 
('browser', 'w3cvalidator', 0, 0, 0, 0), 
('browser', 'blackberry', 0, 0, 0, 0), 
('browser', 'icecat', 0, 0, 0, 0), 
('browser', 'nokias60', 0, 0, 0, 0), 
('browser', 'nokia', 0, 0, 0, 0), 
('browser', 'msn', 0, 0, 0, 0), 
('browser', 'msnbot', 0, 0, 0, 0), 
('browser', 'bingbot', 0, 0, 0, 0), 
('browser', 'netscape', 0, 0, 0, 0), 
('browser', 'galeon', 0, 0, 0, 0), 
('browser', 'netpositive', 0, 0, 0, 0), 
('browser', 'phoenix', 0, 0, 0, 0), 
('browser', 'Mobile', 0, 0, 0, 0), 
('browser', 'bots', 0, 0, 0, 0), 
('browser', 'Unknown', 0, 0, 0, 0), 
('os', 'unknown', 0, 0, 0, 0), 
('os', 'win', 0, 0, 0, 0), 
('os', 'win10', 1493394358, 47, 46, 1), 
('os', 'win8', 0, 0, 0, 0), 
('os', 'win7', 0, 0, 0, 0), 
('os', 'win2003', 0, 0, 0, 0), 
('os', 'winvista', 0, 0, 0, 0), 
('os', 'wince', 0, 0, 0, 0), 
('os', 'winxp', 0, 0, 0, 0), 
('os', 'win2000', 0, 0, 0, 0), 
('os', 'apple', 0, 0, 0, 0), 
('os', 'linux', 0, 0, 0, 0), 
('os', 'os2', 0, 0, 0, 0), 
('os', 'beos', 0, 0, 0, 0), 
('os', 'iphone', 0, 0, 0, 0), 
('os', 'ipod', 0, 0, 0, 0), 
('os', 'ipad', 0, 0, 0, 0), 
('os', 'blackberry', 0, 0, 0, 0), 
('os', 'nokia', 0, 0, 0, 0), 
('os', 'freebsd', 0, 0, 0, 0), 
('os', 'openbsd', 0, 0, 0, 0), 
('os', 'netbsd', 0, 0, 0, 0), 
('os', 'sunos', 0, 0, 0, 0), 
('os', 'opensolaris', 0, 0, 0, 0), 
('os', 'android', 1493319669, 1, 1, 0), 
('os', 'irix', 0, 0, 0, 0), 
('os', 'palm', 0, 0, 0, 0), 
('country', 'AD', 0, 0, 0, 0), 
('country', 'AE', 0, 0, 0, 0), 
('country', 'AF', 0, 0, 0, 0), 
('country', 'AG', 0, 0, 0, 0), 
('country', 'AI', 0, 0, 0, 0), 
('country', 'AL', 0, 0, 0, 0), 
('country', 'AM', 0, 0, 0, 0), 
('country', 'AN', 0, 0, 0, 0), 
('country', 'AO', 0, 0, 0, 0), 
('country', 'AQ', 0, 0, 0, 0), 
('country', 'AR', 0, 0, 0, 0), 
('country', 'AS', 0, 0, 0, 0), 
('country', 'AT', 0, 0, 0, 0), 
('country', 'AU', 0, 0, 0, 0), 
('country', 'AW', 0, 0, 0, 0), 
('country', 'AZ', 0, 0, 0, 0), 
('country', 'BA', 0, 0, 0, 0), 
('country', 'BB', 0, 0, 0, 0), 
('country', 'BD', 0, 0, 0, 0), 
('country', 'BE', 0, 0, 0, 0), 
('country', 'BF', 0, 0, 0, 0), 
('country', 'BG', 0, 0, 0, 0), 
('country', 'BH', 0, 0, 0, 0), 
('country', 'BI', 0, 0, 0, 0), 
('country', 'BJ', 0, 0, 0, 0), 
('country', 'BM', 0, 0, 0, 0), 
('country', 'BN', 0, 0, 0, 0), 
('country', 'BO', 0, 0, 0, 0), 
('country', 'BR', 0, 0, 0, 0), 
('country', 'BS', 0, 0, 0, 0), 
('country', 'BT', 0, 0, 0, 0), 
('country', 'BW', 0, 0, 0, 0), 
('country', 'BY', 0, 0, 0, 0), 
('country', 'BZ', 0, 0, 0, 0), 
('country', 'CA', 0, 0, 0, 0), 
('country', 'CD', 0, 0, 0, 0), 
('country', 'CF', 0, 0, 0, 0), 
('country', 'CG', 0, 0, 0, 0), 
('country', 'CH', 0, 0, 0, 0), 
('country', 'CI', 0, 0, 0, 0), 
('country', 'CK', 0, 0, 0, 0), 
('country', 'CL', 0, 0, 0, 0), 
('country', 'CM', 0, 0, 0, 0), 
('country', 'CN', 0, 0, 0, 0), 
('country', 'CO', 0, 0, 0, 0), 
('country', 'CR', 0, 0, 0, 0), 
('country', 'CS', 0, 0, 0, 0), 
('country', 'CU', 0, 0, 0, 0), 
('country', 'CV', 0, 0, 0, 0), 
('country', 'CY', 0, 0, 0, 0), 
('country', 'CZ', 0, 0, 0, 0), 
('country', 'DE', 0, 0, 0, 0), 
('country', 'DJ', 0, 0, 0, 0), 
('country', 'DK', 0, 0, 0, 0), 
('country', 'DM', 0, 0, 0, 0), 
('country', 'DO', 0, 0, 0, 0), 
('country', 'DZ', 0, 0, 0, 0), 
('country', 'EC', 0, 0, 0, 0), 
('country', 'EE', 0, 0, 0, 0), 
('country', 'EG', 0, 0, 0, 0), 
('country', 'ER', 0, 0, 0, 0), 
('country', 'ES', 0, 0, 0, 0), 
('country', 'ET', 0, 0, 0, 0), 
('country', 'EU', 0, 0, 0, 0), 
('country', 'FI', 0, 0, 0, 0), 
('country', 'FJ', 0, 0, 0, 0), 
('country', 'FK', 0, 0, 0, 0), 
('country', 'FM', 0, 0, 0, 0), 
('country', 'FO', 0, 0, 0, 0), 
('country', 'FR', 0, 0, 0, 0), 
('country', 'GA', 0, 0, 0, 0), 
('country', 'GB', 0, 0, 0, 0), 
('country', 'GD', 0, 0, 0, 0), 
('country', 'GE', 0, 0, 0, 0), 
('country', 'GF', 0, 0, 0, 0), 
('country', 'GH', 0, 0, 0, 0), 
('country', 'GI', 0, 0, 0, 0), 
('country', 'GL', 0, 0, 0, 0), 
('country', 'GM', 0, 0, 0, 0), 
('country', 'GN', 0, 0, 0, 0), 
('country', 'GP', 0, 0, 0, 0), 
('country', 'GQ', 0, 0, 0, 0), 
('country', 'GR', 0, 0, 0, 0), 
('country', 'GS', 0, 0, 0, 0), 
('country', 'GT', 0, 0, 0, 0), 
('country', 'GU', 0, 0, 0, 0), 
('country', 'GW', 0, 0, 0, 0), 
('country', 'GY', 0, 0, 0, 0), 
('country', 'HK', 0, 0, 0, 0), 
('country', 'HN', 0, 0, 0, 0), 
('country', 'HR', 0, 0, 0, 0), 
('country', 'HT', 0, 0, 0, 0), 
('country', 'HU', 0, 0, 0, 0), 
('country', 'ID', 0, 0, 0, 0), 
('country', 'IE', 0, 0, 0, 0), 
('country', 'IL', 0, 0, 0, 0), 
('country', 'IN', 0, 0, 0, 0), 
('country', 'IO', 0, 0, 0, 0), 
('country', 'IQ', 0, 0, 0, 0), 
('country', 'IR', 0, 0, 0, 0), 
('country', 'IS', 0, 0, 0, 0), 
('country', 'IT', 0, 0, 0, 0), 
('country', 'JM', 0, 0, 0, 0), 
('country', 'JO', 0, 0, 0, 0), 
('country', 'JP', 0, 0, 0, 0), 
('country', 'KE', 0, 0, 0, 0), 
('country', 'KG', 0, 0, 0, 0), 
('country', 'KH', 0, 0, 0, 0), 
('country', 'KI', 0, 0, 0, 0), 
('country', 'KM', 0, 0, 0, 0), 
('country', 'KN', 0, 0, 0, 0), 
('country', 'KR', 0, 0, 0, 0), 
('country', 'KW', 0, 0, 0, 0), 
('country', 'KY', 0, 0, 0, 0), 
('country', 'KZ', 0, 0, 0, 0), 
('country', 'LA', 0, 0, 0, 0), 
('country', 'LB', 0, 0, 0, 0), 
('country', 'LC', 0, 0, 0, 0), 
('country', 'LI', 0, 0, 0, 0), 
('country', 'LK', 0, 0, 0, 0), 
('country', 'LR', 0, 0, 0, 0), 
('country', 'LS', 0, 0, 0, 0), 
('country', 'LT', 0, 0, 0, 0), 
('country', 'LU', 0, 0, 0, 0), 
('country', 'LV', 0, 0, 0, 0), 
('country', 'LY', 0, 0, 0, 0), 
('country', 'MA', 0, 0, 0, 0), 
('country', 'MC', 0, 0, 0, 0), 
('country', 'MD', 0, 0, 0, 0), 
('country', 'MG', 0, 0, 0, 0), 
('country', 'MH', 0, 0, 0, 0), 
('country', 'MK', 0, 0, 0, 0), 
('country', 'ML', 0, 0, 0, 0), 
('country', 'MM', 0, 0, 0, 0), 
('country', 'MN', 0, 0, 0, 0), 
('country', 'MO', 0, 0, 0, 0), 
('country', 'MP', 0, 0, 0, 0), 
('country', 'MQ', 0, 0, 0, 0), 
('country', 'MR', 0, 0, 0, 0), 
('country', 'MT', 0, 0, 0, 0), 
('country', 'MU', 0, 0, 0, 0), 
('country', 'MV', 0, 0, 0, 0), 
('country', 'MW', 0, 0, 0, 0), 
('country', 'MX', 0, 0, 0, 0), 
('country', 'MY', 0, 0, 0, 0), 
('country', 'MZ', 0, 0, 0, 0), 
('country', 'NA', 0, 0, 0, 0), 
('country', 'NC', 0, 0, 0, 0), 
('country', 'NE', 0, 0, 0, 0), 
('country', 'NF', 0, 0, 0, 0), 
('country', 'NG', 0, 0, 0, 0), 
('country', 'NI', 0, 0, 0, 0), 
('country', 'NL', 0, 0, 0, 0), 
('country', 'NO', 0, 0, 0, 0), 
('country', 'NP', 0, 0, 0, 0), 
('country', 'NR', 0, 0, 0, 0), 
('country', 'NU', 0, 0, 0, 0), 
('country', 'NZ', 0, 0, 0, 0), 
('country', 'OM', 0, 0, 0, 0), 
('country', 'PA', 0, 0, 0, 0), 
('country', 'PE', 0, 0, 0, 0), 
('country', 'PF', 0, 0, 0, 0), 
('country', 'PG', 0, 0, 0, 0), 
('country', 'PH', 0, 0, 0, 0), 
('country', 'PK', 0, 0, 0, 0), 
('country', 'PL', 0, 0, 0, 0), 
('country', 'PR', 0, 0, 0, 0), 
('country', 'PS', 0, 0, 0, 0), 
('country', 'PT', 0, 0, 0, 0), 
('country', 'PW', 0, 0, 0, 0), 
('country', 'PY', 0, 0, 0, 0), 
('country', 'QA', 0, 0, 0, 0), 
('country', 'RE', 0, 0, 0, 0), 
('country', 'RO', 0, 0, 0, 0), 
('country', 'RU', 0, 0, 0, 0), 
('country', 'RW', 0, 0, 0, 0), 
('country', 'SA', 0, 0, 0, 0), 
('country', 'SB', 0, 0, 0, 0), 
('country', 'SC', 0, 0, 0, 0), 
('country', 'SD', 0, 0, 0, 0), 
('country', 'SE', 0, 0, 0, 0), 
('country', 'SG', 0, 0, 0, 0), 
('country', 'SI', 0, 0, 0, 0), 
('country', 'SK', 0, 0, 0, 0), 
('country', 'SL', 0, 0, 0, 0), 
('country', 'SM', 0, 0, 0, 0), 
('country', 'SN', 0, 0, 0, 0), 
('country', 'SO', 0, 0, 0, 0), 
('country', 'SR', 0, 0, 0, 0), 
('country', 'ST', 0, 0, 0, 0), 
('country', 'SV', 0, 0, 0, 0), 
('country', 'SY', 0, 0, 0, 0), 
('country', 'SZ', 0, 0, 0, 0), 
('country', 'TD', 0, 0, 0, 0), 
('country', 'TF', 0, 0, 0, 0), 
('country', 'TG', 0, 0, 0, 0), 
('country', 'TH', 0, 0, 0, 0), 
('country', 'TJ', 0, 0, 0, 0), 
('country', 'TK', 0, 0, 0, 0), 
('country', 'TL', 0, 0, 0, 0), 
('country', 'TM', 0, 0, 0, 0), 
('country', 'TN', 0, 0, 0, 0), 
('country', 'TO', 0, 0, 0, 0), 
('country', 'TR', 0, 0, 0, 0), 
('country', 'TT', 0, 0, 0, 0), 
('country', 'TV', 0, 0, 0, 0), 
('country', 'TW', 0, 0, 0, 0), 
('country', 'TZ', 0, 0, 0, 0), 
('country', 'UA', 0, 0, 0, 0), 
('country', 'UG', 0, 0, 0, 0), 
('country', 'US', 0, 0, 0, 0), 
('country', 'UY', 0, 0, 0, 0), 
('country', 'UZ', 0, 0, 0, 0), 
('country', 'VA', 0, 0, 0, 0), 
('country', 'VC', 0, 0, 0, 0), 
('country', 'VE', 0, 0, 0, 0), 
('country', 'VG', 0, 0, 0, 0), 
('country', 'VI', 0, 0, 0, 0), 
('country', 'VN', 0, 0, 0, 0), 
('country', 'VU', 0, 0, 0, 0), 
('country', 'WS', 0, 0, 0, 0), 
('country', 'YE', 0, 0, 0, 0), 
('country', 'YT', 0, 0, 0, 0), 
('country', 'YU', 0, 0, 0, 0), 
('country', 'ZA', 0, 0, 0, 0), 
('country', 'ZM', 0, 0, 0, 0), 
('country', 'ZW', 0, 0, 0, 0), 
('country', 'ZZ', 1493394358, 48, 47, 1), 
('country', 'unkown', 0, 0, 0, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_cronjobs`
--

DROP TABLE IF EXISTS `ytt_cronjobs`;
CREATE TABLE `ytt_cronjobs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `inter_val` int(11) unsigned NOT NULL DEFAULT '0',
  `run_file` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `last_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_result` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vi_cron_name` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `en_cron_name` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `is_sys` (`is_sys`)
) ENGINE=MyISAM  AUTO_INCREMENT=10  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_cronjobs`
--

INSERT INTO `ytt_cronjobs` VALUES
(1, 1493308468, 5, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1493395856, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL', 'Delete expired online status'), 
(2, 1493308468, 1440, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1493395197, 1, 'Tự động lưu CSDL', 'Automatic backup database'), 
(3, 1493308468, 60, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1493392874, 1, 'Xóa các file tạm trong thư mục tmp', 'Empty temporary files'), 
(4, 1493308468, 30, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1493395507, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập', 'Delete IP log files'), 
(5, 1493308468, 1440, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1493395197, 1, 'Xóa các file error_log quá hạn', 'Delete expired error_log log files'), 
(6, 1493308468, 360, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 1, 1493389949, 1, 'Gửi email các thông báo lỗi cho admin', 'Send error logs to admin'), 
(7, 1493308468, 60, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1493392874, 1, 'Xóa các referer quá hạn', 'Delete expired referer'), 
(8, 1493308468, 60, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1493392874, 1, 'Kiểm tra phiên bản NukeViet', 'Check NukeViet version'), 
(9, 1493308468, 1440, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1493395197, 1, 'Xóa thông báo cũ', 'Delete old notification');


-- ---------------------------------------


--
-- Table structure for table `ytt_en_about`
--

DROP TABLE IF EXISTS `ytt_en_about`;
CREATE TABLE `ytt_en_about` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text  COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text  COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  AUTO_INCREMENT=3  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_about`
--

INSERT INTO `ytt_en_about` VALUES
(1, 'Welcome to NukeViet 3.0', 'Welcome-to-NukeViet-3-0', '', '', 0, '', '<p> NukeViet developed by Vietnamese and for Vietnamese. It&#039;s the 1st opensource CMS in Vietnam. Next generation of NukeViet, version 3.0 coding ground up. Support newest web technology, include xHTML, CSS 3, XTemplate, jQuery, AJAX...<br /> <br /> NukeViet&#039;s has it own core libraries build in. So, it&#039;s doesn&#039;t depend on other exists frameworks. With basic knowledge of PHP and MySQL, you can easily using NukeViet for your purposes.<br /> <br /> NukeViet 3 core is simply but powerful. It support modules can be multiply. We called it abstract modules. It help users automatic crea-te many modules without any line of code from any exists module which support crea-te abstract modules.<br /> <br /> NukeViet 3 support automatic setup modules, blocks, themes at Admin Control Panel. It&#039;s also allow you to share your modules by packed it into packets.<br /> <br /> NukeViet 3 support multi languages in 2 types. Multi interface languages and multi database langguages. Had features support web master to build new languages. Many advance features still developing. Let use it, distribute it and feel about opensource.<br /> <br /> At last, NukeViet 3 is a thanksgiving gift from VINADES.,JSC to community for all of your supports. And we hoping we going to be a biggest opensource CMS not only in VietNam, but also in the world. :).<br /> <br /> If you had any feedbacks and ideas for NukeViet 3 close beta. Feel free to send email to admin@nukeviet.vn. All are welcome<br /> <br /> Best regard.</p>', '', 0, '4', '', 0, 1, 1, 1277266815, 1277266815, 1, 0, 0), 
(2, 'NukeViet&#039;s versioning schemes', 'NukeViet-s-versioning-schemes', '', '', 0, '', '<p> NukeViet using 2 versioning schemes:<br /> <br /> I. By numbers (technical purposes):<br /> Structure for numbers is:<br /> major.minor.revision<br /> <br /> 1.Major: Major up-date. Probably not backwards compatible with older version.<br /> 2.Minor: Minor change, may introduce new features, but backwards compatibility is mostly retained.<br /> 3.Revision: Minor bug fixes. Packed for testing or pre-release purposes... Closed beta, open beta, RC, Official release.<br /> <br /> II: By names (new version release management)<br /> Main milestones: Closed beta, Open beta, Release candidate, Official.<br /> 1. Closed beta: Limited testing.<br /> characteristics: New features testing. It may not include in official version if doesn&#039;t accord with community. Closed beta&#039;s name can contain unique numbers. Ex: Closed beta 1, closed beta 2,... Features of previous release may not include in it&#039;s next release. Time release is announced by development team. This milestone stop when system haven&#039;t any major changes.<br /> Purposes: Pre-release version to receive feedbacks and ideas from community. Bug fixes for release version.<br /> Release to: Programmers, expert users.<br /> Supports:<br /> &nbsp;&nbsp;&nbsp; Using: None.<br /> &nbsp;&nbsp;&nbsp; Testing: Documents, not include manual.<br /> Upgrade: None.<br /> <br /> 2. Open beta: Public testing.<br /> characteristics: Features testing, contain full features of official version. It&#039;s almost include in official version even if it doesn&#039;t accord with community. This milestone start after closed beta milestone closed and release weekly to fix bugs. Open beta&#039;s name can contain unique numbers. Ex: Open beta 1, open beta 2,... Next release include all features of it&#039;s previous release. Open beta milestone stop when system haven&#039;t any critical issue.<br /> Purposes: Bug fixed which not detect in closed beta.<br /> Release to: All users of nukeviet.vn forum.<br /> Supports:<br /> &nbsp;&nbsp;&nbsp; Using: Limited. Manual and forum supports.<br /> &nbsp;&nbsp;&nbsp; Testing: Full.<br /> Upgrade: None.<br /> <br /> 3. Release Candidate:<br /> characteristics: Most stable version and prepare for official release. Release candidate&#039;s name can contain unique numbers.<br /> Ex: RC 1, RC 2,... by released number.<br /> If detect cretical issue in this milestone. Another Release Candidate version can be release sooner than release time announced by development team.<br /> Purposes: Reduce bugs of using official version.<br /> Release to: All people.<br /> Supports: Full.<br /> Upgrade: Yes.<br /> <br /> 4. Official:<br /> characteristics: 1st stable release of new version. It only using 1 time. Next release using numbers. Release about 2 weeks after Release Candidate milestone stoped.<br /> Purposes: Stop testing and recommend users using new version.</p>', '', 0, '4', '', 0, 2, 1, 1277267054, 1277693688, 1, 0, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_en_about_config`
--

DROP TABLE IF EXISTS `ytt_en_about_config`;
CREATE TABLE `ytt_en_about_config` (
  `config_name` varchar(30)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_about_config`
--

INSERT INTO `ytt_en_about_config` VALUES
('viewtype', '0'), 
('facebookapi', ''), 
('per_page', '20'), 
('news_first', '0'), 
('related_articles', '5'), 
('copy_page', '0');


-- ---------------------------------------


--
-- Table structure for table `ytt_en_blocks_groups`
--

DROP TABLE IF EXISTS `ytt_en_blocks_groups`;
CREATE TABLE `ytt_en_blocks_groups` (
  `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(55)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10)  COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `groups_view` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text  COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`bid`),
  KEY `theme` (`theme`),
  KEY `module` (`module`),
  KEY `position` (`position`),
  KEY `exp_time` (`exp_time`)
) ENGINE=MyISAM  AUTO_INCREMENT=31  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_blocks_groups`
--

INSERT INTO `ytt_en_blocks_groups` VALUES
(1, 'default', 'news', 'module.block_newscenter.php', 'Breaking news', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'), 
(2, 'default', 'banners', 'global.banners.php', 'Center Banner', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'), 
(3, 'default', 'news', 'global.block_category.php', 'Category', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:25;}'), 
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''), 
(5, 'default', 'banners', 'global.banners.php', 'Left Banner', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:2;}'), 
(6, 'default', 'statistics', 'global.counter.php', 'Statistics', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''), 
(7, 'default', 'about', 'global.about.php', 'About', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''), 
(8, 'default', 'banners', 'global.banners.php', 'Right Banner', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'), 
(9, 'default', 'voting', 'global.voting_random.php', 'Voting', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''), 
(10, 'default', 'news', 'global.block_tophits.php', 'Top Hits', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'), 
(11, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:48:\"/nukeviet/index.php?language=en&amp;nv=siteterms\";}'), 
(12, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''), 
(13, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'), 
(14, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''), 
(15, 'default', 'users', 'global.user_button.php', 'Member login', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''), 
(16, 'default', 'theme', 'global.company_info.php', 'Managing company', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:\"company_name\";s:51:\"Vietnam Open Source Development Joint Stock Company\";s:15:\"company_address\";s:86:\"Room 2004 – CT2 Nang Huong building, 583 Nguyen Trai street, Ha Dong, Hanoi, Vietnam\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013491444406099617481231689453125;s:20:\"company_mapcenterlng\";d:105.7954749999999961573848850093781948089599609375;s:14:\"company_maplat\";d:20.9845159999999992805896908976137638092041015625;s:14:\"company_maplng\";d:105.7954750000000103682396002113819122314453125;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:56:\"+84-4-85872007[+84485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:14:\"+84-4-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'), 
(17, 'default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'), 
(18, 'default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''), 
(19, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'), 
(20, 'default', 'theme', 'global.menu_footer.php', 'Main categories', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'), 
(21, 'default', 'freecontent', 'global.free_content.php', 'Introduction', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'), 
(22, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'), 
(23, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''), 
(24, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''), 
(25, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''), 
(26, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'), 
(27, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, 'a:3:{s:5:\"level\";s:1:\"L\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'), 
(28, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:48:\"/nukeviet/index.php?language=en&amp;nv=siteterms\";}'), 
(29, 'mobile_default', 'theme', 'global.menu_footer.php', 'Main categories', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:9:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";i:8;s:9:\"siteterms\";}}'), 
(30, 'mobile_default', 'theme', 'global.company_info.php', 'Managing company', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:\"company_name\";s:51:\"Vietnam Open Source Development Joint Stock Company\";s:15:\"company_address\";s:86:\"Room 2004 – CT2 Nang Huong building, 583 Nguyen Trai street, Ha Dong, Hanoi, Vietnam\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013491444406099617481231689453125;s:20:\"company_mapcenterlng\";d:105.7954749999999961573848850093781948089599609375;s:14:\"company_maplat\";d:20.9845159999999992805896908976137638092041015625;s:14:\"company_maplng\";d:105.7954750000000103682396002113819122314453125;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:56:\"+84-4-85872007[+84485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:14:\"+84-4-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}');


-- ---------------------------------------


--
-- Table structure for table `ytt_en_blocks_weight`
--

DROP TABLE IF EXISTS `ytt_en_blocks_weight`;
CREATE TABLE `ytt_en_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  UNIQUE KEY `bid` (`bid`,`func_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_blocks_weight`
--

INSERT INTO `ytt_en_blocks_weight` VALUES
(16, 1, 1), 
(16, 38, 1), 
(16, 39, 1), 
(16, 40, 1), 
(16, 41, 1), 
(16, 47, 1), 
(16, 48, 1), 
(16, 49, 1), 
(16, 50, 1), 
(16, 60, 1), 
(16, 63, 1), 
(16, 4, 1), 
(16, 5, 1), 
(16, 6, 1), 
(16, 7, 1), 
(16, 8, 1), 
(16, 9, 1), 
(16, 10, 1), 
(16, 11, 1), 
(16, 12, 1), 
(16, 51, 1), 
(16, 62, 1), 
(16, 54, 1), 
(16, 55, 1), 
(16, 31, 1), 
(16, 32, 1), 
(16, 33, 1), 
(16, 34, 1), 
(16, 35, 1), 
(16, 36, 1), 
(16, 37, 1), 
(16, 57, 1), 
(16, 58, 1), 
(16, 59, 1), 
(16, 19, 1), 
(16, 20, 1), 
(16, 21, 1), 
(16, 22, 1), 
(16, 23, 1), 
(16, 24, 1), 
(16, 25, 1), 
(16, 26, 1), 
(16, 27, 1), 
(16, 28, 1), 
(16, 29, 1), 
(16, 61, 1), 
(18, 1, 1), 
(18, 38, 1), 
(18, 39, 1), 
(18, 40, 1), 
(18, 41, 1), 
(18, 47, 1), 
(18, 48, 1), 
(18, 49, 1), 
(18, 50, 1), 
(18, 60, 1), 
(18, 63, 1), 
(18, 4, 1), 
(18, 5, 1), 
(18, 6, 1), 
(18, 7, 1), 
(18, 8, 1), 
(18, 9, 1), 
(18, 10, 1), 
(18, 11, 1), 
(18, 12, 1), 
(18, 51, 1), 
(18, 62, 1), 
(18, 54, 1), 
(18, 55, 1), 
(18, 31, 1), 
(18, 32, 1), 
(18, 33, 1), 
(18, 34, 1), 
(18, 35, 1), 
(18, 36, 1), 
(18, 37, 1), 
(18, 57, 1), 
(18, 58, 1), 
(18, 59, 1), 
(18, 19, 1), 
(18, 20, 1), 
(18, 21, 1), 
(18, 22, 1), 
(18, 23, 1), 
(18, 24, 1), 
(18, 25, 1), 
(18, 26, 1), 
(18, 27, 1), 
(18, 28, 1), 
(18, 29, 1), 
(18, 61, 1), 
(21, 1, 1), 
(21, 38, 1), 
(21, 39, 1), 
(21, 40, 1), 
(21, 41, 1), 
(21, 47, 1), 
(21, 48, 1), 
(21, 49, 1), 
(21, 50, 1), 
(21, 60, 1), 
(21, 63, 1), 
(21, 4, 1), 
(21, 5, 1), 
(21, 6, 1), 
(21, 7, 1), 
(21, 8, 1), 
(21, 9, 1), 
(21, 10, 1), 
(21, 11, 1), 
(21, 12, 1), 
(21, 51, 1), 
(21, 62, 1), 
(21, 54, 1), 
(21, 55, 1), 
(21, 31, 1), 
(21, 32, 1), 
(21, 33, 1), 
(21, 34, 1), 
(21, 35, 1), 
(21, 36, 1), 
(21, 37, 1), 
(21, 57, 1), 
(21, 58, 1), 
(21, 59, 1), 
(21, 19, 1), 
(21, 20, 1), 
(21, 21, 1), 
(21, 22, 1), 
(21, 23, 1), 
(21, 24, 1), 
(21, 25, 1), 
(21, 26, 1), 
(21, 27, 1), 
(21, 28, 1), 
(21, 29, 1), 
(21, 61, 1), 
(11, 1, 1), 
(11, 38, 1), 
(11, 39, 1), 
(11, 40, 1), 
(11, 41, 1), 
(11, 47, 1), 
(11, 48, 1), 
(11, 49, 1), 
(11, 50, 1), 
(11, 60, 1), 
(11, 63, 1), 
(11, 4, 1), 
(11, 5, 1), 
(11, 6, 1), 
(11, 7, 1), 
(11, 8, 1), 
(11, 9, 1), 
(11, 10, 1), 
(11, 11, 1), 
(11, 12, 1), 
(11, 51, 1), 
(11, 62, 1), 
(11, 54, 1), 
(11, 55, 1), 
(11, 31, 1), 
(11, 32, 1), 
(11, 33, 1), 
(11, 34, 1), 
(11, 35, 1), 
(11, 36, 1), 
(11, 37, 1), 
(11, 57, 1), 
(11, 58, 1), 
(11, 59, 1), 
(11, 19, 1), 
(11, 20, 1), 
(11, 21, 1), 
(11, 22, 1), 
(11, 23, 1), 
(11, 24, 1), 
(11, 25, 1), 
(11, 26, 1), 
(11, 27, 1), 
(11, 28, 1), 
(11, 29, 1), 
(11, 61, 1), 
(12, 1, 2), 
(12, 38, 2), 
(12, 39, 2), 
(12, 40, 2), 
(12, 41, 2), 
(12, 47, 2), 
(12, 48, 2), 
(12, 49, 2), 
(12, 50, 2), 
(12, 60, 2), 
(12, 63, 2), 
(12, 4, 2), 
(12, 5, 2), 
(12, 6, 2), 
(12, 7, 2), 
(12, 8, 2), 
(12, 9, 2), 
(12, 10, 2), 
(12, 11, 2), 
(12, 12, 2), 
(12, 51, 2), 
(12, 62, 2), 
(12, 54, 2), 
(12, 55, 2), 
(12, 31, 2), 
(12, 32, 2), 
(12, 33, 2), 
(12, 34, 2), 
(12, 35, 2), 
(12, 36, 2), 
(12, 37, 2), 
(12, 57, 2), 
(12, 58, 2), 
(12, 59, 2), 
(12, 19, 2), 
(12, 20, 2), 
(12, 21, 2), 
(12, 22, 2), 
(12, 23, 2), 
(12, 24, 2), 
(12, 25, 2), 
(12, 26, 2), 
(12, 27, 2), 
(12, 28, 2), 
(12, 29, 2), 
(12, 61, 2), 
(3, 4, 1), 
(3, 5, 1), 
(3, 6, 1), 
(3, 7, 1), 
(3, 8, 1), 
(3, 9, 1), 
(3, 10, 1), 
(3, 11, 1), 
(3, 12, 1), 
(4, 19, 1), 
(4, 20, 1), 
(4, 21, 1), 
(4, 22, 1), 
(4, 23, 1), 
(4, 24, 1), 
(4, 25, 1), 
(4, 26, 1), 
(4, 27, 1), 
(4, 28, 1), 
(4, 31, 1), 
(4, 32, 1), 
(4, 33, 1), 
(4, 34, 1), 
(4, 35, 1), 
(4, 36, 1), 
(4, 37, 1), 
(5, 1, 1), 
(5, 38, 1), 
(5, 39, 1), 
(5, 40, 1), 
(5, 41, 1), 
(5, 47, 1), 
(5, 48, 1), 
(5, 49, 1), 
(5, 50, 1), 
(5, 60, 1), 
(5, 63, 1), 
(5, 4, 2), 
(5, 5, 2), 
(5, 6, 2), 
(5, 7, 2), 
(5, 8, 2), 
(5, 9, 2), 
(5, 10, 2), 
(5, 11, 2), 
(5, 12, 2), 
(5, 51, 1), 
(5, 62, 1), 
(5, 54, 1), 
(5, 55, 1), 
(5, 31, 2), 
(5, 32, 2), 
(5, 33, 2), 
(5, 34, 2), 
(5, 35, 2), 
(5, 36, 2), 
(5, 37, 2), 
(5, 57, 1), 
(5, 58, 1), 
(5, 59, 1), 
(5, 19, 2), 
(5, 20, 2), 
(5, 21, 2), 
(5, 22, 2), 
(5, 23, 2), 
(5, 24, 2), 
(5, 25, 2), 
(5, 26, 2), 
(5, 27, 2), 
(5, 28, 2), 
(5, 29, 1), 
(5, 61, 1), 
(6, 1, 2), 
(6, 38, 2), 
(6, 39, 2), 
(6, 40, 2), 
(6, 41, 2), 
(6, 47, 2), 
(6, 48, 2), 
(6, 49, 2), 
(6, 50, 2), 
(6, 60, 2), 
(6, 63, 2), 
(6, 4, 3), 
(6, 5, 3), 
(6, 6, 3), 
(6, 7, 3), 
(6, 8, 3), 
(6, 9, 3), 
(6, 10, 3), 
(6, 11, 3), 
(6, 12, 3), 
(6, 51, 2), 
(6, 62, 2), 
(6, 54, 2), 
(6, 55, 2), 
(6, 31, 3), 
(6, 32, 3), 
(6, 33, 3), 
(6, 34, 3), 
(6, 35, 3), 
(6, 36, 3), 
(6, 37, 3), 
(6, 57, 2), 
(6, 58, 2), 
(6, 59, 2), 
(6, 19, 3), 
(6, 20, 3), 
(6, 21, 3), 
(6, 22, 3), 
(6, 23, 3), 
(6, 24, 3), 
(6, 25, 3), 
(6, 26, 3), 
(6, 27, 3), 
(6, 28, 3), 
(6, 29, 2), 
(6, 61, 2), 
(20, 1, 1), 
(20, 38, 1), 
(20, 39, 1), 
(20, 40, 1), 
(20, 41, 1), 
(20, 47, 1), 
(20, 48, 1), 
(20, 49, 1), 
(20, 50, 1), 
(20, 60, 1), 
(20, 63, 1), 
(20, 4, 1), 
(20, 5, 1), 
(20, 6, 1), 
(20, 7, 1), 
(20, 8, 1), 
(20, 9, 1), 
(20, 10, 1), 
(20, 11, 1), 
(20, 12, 1), 
(20, 51, 1), 
(20, 62, 1), 
(20, 54, 1), 
(20, 55, 1), 
(20, 31, 1), 
(20, 32, 1), 
(20, 33, 1), 
(20, 34, 1), 
(20, 35, 1), 
(20, 36, 1), 
(20, 37, 1), 
(20, 57, 1), 
(20, 58, 1), 
(20, 59, 1), 
(20, 19, 1), 
(20, 20, 1), 
(20, 21, 1), 
(20, 22, 1), 
(20, 23, 1), 
(20, 24, 1), 
(20, 25, 1), 
(20, 26, 1), 
(20, 27, 1), 
(20, 28, 1), 
(20, 29, 1), 
(20, 61, 1), 
(17, 1, 1), 
(17, 38, 1), 
(17, 39, 1), 
(17, 40, 1), 
(17, 41, 1), 
(17, 47, 1), 
(17, 48, 1), 
(17, 49, 1), 
(17, 50, 1), 
(17, 60, 1), 
(17, 63, 1), 
(17, 4, 1), 
(17, 5, 1), 
(17, 6, 1), 
(17, 7, 1), 
(17, 8, 1), 
(17, 9, 1), 
(17, 10, 1), 
(17, 11, 1), 
(17, 12, 1), 
(17, 51, 1), 
(17, 62, 1), 
(17, 54, 1), 
(17, 55, 1), 
(17, 31, 1), 
(17, 32, 1), 
(17, 33, 1), 
(17, 34, 1), 
(17, 35, 1), 
(17, 36, 1), 
(17, 37, 1), 
(17, 57, 1), 
(17, 58, 1), 
(17, 59, 1), 
(17, 19, 1), 
(17, 20, 1), 
(17, 21, 1), 
(17, 22, 1), 
(17, 23, 1), 
(17, 24, 1), 
(17, 25, 1), 
(17, 26, 1), 
(17, 27, 1), 
(17, 28, 1), 
(17, 29, 1), 
(17, 61, 1), 
(15, 1, 1), 
(15, 38, 1), 
(15, 39, 1), 
(15, 40, 1), 
(15, 41, 1), 
(15, 47, 1), 
(15, 48, 1), 
(15, 49, 1), 
(15, 50, 1), 
(15, 60, 1), 
(15, 63, 1), 
(15, 4, 1), 
(15, 5, 1), 
(15, 6, 1), 
(15, 7, 1), 
(15, 8, 1), 
(15, 9, 1), 
(15, 10, 1), 
(15, 11, 1), 
(15, 12, 1), 
(15, 51, 1), 
(15, 62, 1), 
(15, 54, 1), 
(15, 55, 1), 
(15, 31, 1), 
(15, 32, 1), 
(15, 33, 1), 
(15, 34, 1), 
(15, 35, 1), 
(15, 36, 1), 
(15, 37, 1), 
(15, 57, 1), 
(15, 58, 1), 
(15, 59, 1), 
(15, 19, 1), 
(15, 20, 1), 
(15, 21, 1), 
(15, 22, 1), 
(15, 23, 1), 
(15, 24, 1), 
(15, 25, 1), 
(15, 26, 1), 
(15, 27, 1), 
(15, 28, 1), 
(15, 29, 1), 
(15, 61, 1), 
(13, 1, 1), 
(13, 38, 1), 
(13, 39, 1), 
(13, 40, 1), 
(13, 41, 1), 
(13, 47, 1), 
(13, 48, 1), 
(13, 49, 1), 
(13, 50, 1), 
(13, 60, 1), 
(13, 63, 1), 
(13, 4, 1), 
(13, 5, 1), 
(13, 6, 1), 
(13, 7, 1), 
(13, 8, 1), 
(13, 9, 1), 
(13, 10, 1), 
(13, 11, 1), 
(13, 12, 1), 
(13, 51, 1), 
(13, 62, 1), 
(13, 54, 1), 
(13, 55, 1), 
(13, 31, 1), 
(13, 32, 1), 
(13, 33, 1), 
(13, 34, 1), 
(13, 35, 1), 
(13, 36, 1), 
(13, 37, 1), 
(13, 57, 1), 
(13, 58, 1), 
(13, 59, 1), 
(13, 19, 1), 
(13, 20, 1), 
(13, 21, 1), 
(13, 22, 1), 
(13, 23, 1), 
(13, 24, 1), 
(13, 25, 1), 
(13, 26, 1), 
(13, 27, 1), 
(13, 28, 1), 
(13, 29, 1), 
(13, 61, 1), 
(14, 1, 2), 
(14, 38, 2), 
(14, 39, 2), 
(14, 40, 2), 
(14, 41, 2), 
(14, 47, 2), 
(14, 48, 2), 
(14, 49, 2), 
(14, 50, 2), 
(14, 60, 2), 
(14, 63, 2), 
(14, 4, 2), 
(14, 5, 2), 
(14, 6, 2), 
(14, 7, 2), 
(14, 8, 2), 
(14, 9, 2), 
(14, 10, 2), 
(14, 11, 2), 
(14, 12, 2), 
(14, 51, 2), 
(14, 62, 2), 
(14, 54, 2), 
(14, 55, 2), 
(14, 31, 2), 
(14, 32, 2), 
(14, 33, 2), 
(14, 34, 2), 
(14, 35, 2), 
(14, 36, 2), 
(14, 37, 2), 
(14, 57, 2), 
(14, 58, 2), 
(14, 59, 2), 
(14, 19, 2), 
(14, 20, 2), 
(14, 21, 2), 
(14, 22, 2), 
(14, 23, 2), 
(14, 24, 2), 
(14, 25, 2), 
(14, 26, 2), 
(14, 27, 2), 
(14, 28, 2), 
(14, 29, 2), 
(14, 61, 2), 
(7, 1, 1), 
(7, 38, 1), 
(7, 39, 1), 
(7, 40, 1), 
(7, 41, 1), 
(7, 47, 1), 
(7, 48, 1), 
(7, 49, 1), 
(7, 50, 1), 
(7, 60, 1), 
(7, 63, 1), 
(7, 4, 1), 
(7, 5, 1), 
(7, 6, 1), 
(7, 7, 1), 
(7, 8, 1), 
(7, 9, 1), 
(7, 10, 1), 
(7, 11, 1), 
(7, 12, 1), 
(7, 51, 1), 
(7, 62, 1), 
(7, 54, 1), 
(7, 55, 1), 
(7, 31, 1), 
(7, 32, 1), 
(7, 33, 1), 
(7, 34, 1), 
(7, 35, 1), 
(7, 36, 1), 
(7, 37, 1), 
(7, 57, 1), 
(7, 58, 1), 
(7, 59, 1), 
(7, 19, 1), 
(7, 20, 1), 
(7, 21, 1), 
(7, 22, 1), 
(7, 23, 1), 
(7, 24, 1), 
(7, 25, 1), 
(7, 26, 1), 
(7, 27, 1), 
(7, 28, 1), 
(7, 29, 1), 
(7, 61, 1), 
(8, 1, 2), 
(8, 38, 2), 
(8, 39, 2), 
(8, 40, 2), 
(8, 41, 2), 
(8, 47, 2), 
(8, 48, 2), 
(8, 49, 2), 
(8, 50, 2), 
(8, 60, 2), 
(8, 63, 2), 
(8, 4, 2), 
(8, 5, 2), 
(8, 6, 2), 
(8, 7, 2), 
(8, 8, 2), 
(8, 9, 2), 
(8, 10, 2), 
(8, 11, 2), 
(8, 12, 2), 
(8, 51, 2), 
(8, 62, 2), 
(8, 54, 2), 
(8, 55, 2), 
(8, 31, 2), 
(8, 32, 2), 
(8, 33, 2), 
(8, 34, 2), 
(8, 35, 2), 
(8, 36, 2), 
(8, 37, 2), 
(8, 57, 2), 
(8, 58, 2), 
(8, 59, 2), 
(8, 19, 2), 
(8, 20, 2), 
(8, 21, 2), 
(8, 22, 2), 
(8, 23, 2), 
(8, 24, 2), 
(8, 25, 2), 
(8, 26, 2), 
(8, 27, 2), 
(8, 28, 2), 
(8, 29, 2), 
(8, 61, 2), 
(9, 1, 3), 
(9, 38, 3), 
(9, 39, 3), 
(9, 40, 3), 
(9, 41, 3), 
(9, 47, 3), 
(9, 48, 3), 
(9, 49, 3), 
(9, 50, 3), 
(9, 60, 3), 
(9, 63, 3), 
(9, 4, 3), 
(9, 5, 3), 
(9, 6, 3), 
(9, 7, 3), 
(9, 8, 3), 
(9, 9, 3), 
(9, 10, 3), 
(9, 11, 3), 
(9, 12, 3), 
(9, 51, 3), 
(9, 62, 3), 
(9, 54, 3), 
(9, 55, 3), 
(9, 31, 3), 
(9, 32, 3), 
(9, 33, 3), 
(9, 34, 3), 
(9, 35, 3), 
(9, 36, 3), 
(9, 37, 3), 
(9, 57, 3), 
(9, 58, 3), 
(9, 59, 3), 
(9, 19, 3), 
(9, 20, 3), 
(9, 21, 3), 
(9, 22, 3), 
(9, 23, 3), 
(9, 24, 3), 
(9, 25, 3), 
(9, 26, 3), 
(9, 27, 3), 
(9, 28, 3), 
(9, 29, 3), 
(9, 61, 3), 
(10, 1, 4), 
(10, 38, 4), 
(10, 39, 4), 
(10, 40, 4), 
(10, 41, 4), 
(10, 47, 4), 
(10, 48, 4), 
(10, 49, 4), 
(10, 50, 4), 
(10, 60, 4), 
(10, 63, 4), 
(10, 4, 4), 
(10, 5, 4), 
(10, 6, 4), 
(10, 7, 4), 
(10, 8, 4), 
(10, 9, 4), 
(10, 10, 4), 
(10, 11, 4), 
(10, 12, 4), 
(10, 51, 4), 
(10, 62, 4), 
(10, 54, 4), 
(10, 55, 4), 
(10, 31, 4), 
(10, 32, 4), 
(10, 33, 4), 
(10, 34, 4), 
(10, 35, 4), 
(10, 36, 4), 
(10, 37, 4), 
(10, 57, 4), 
(10, 58, 4), 
(10, 59, 4), 
(10, 19, 4), 
(10, 20, 4), 
(10, 21, 4), 
(10, 22, 4), 
(10, 23, 4), 
(10, 24, 4), 
(10, 25, 4), 
(10, 26, 4), 
(10, 27, 4), 
(10, 28, 4), 
(10, 29, 4), 
(10, 61, 4), 
(19, 1, 1), 
(19, 38, 1), 
(19, 39, 1), 
(19, 40, 1), 
(19, 41, 1), 
(19, 47, 1), 
(19, 48, 1), 
(19, 49, 1), 
(19, 50, 1), 
(19, 60, 1), 
(19, 63, 1), 
(19, 4, 1), 
(19, 5, 1), 
(19, 6, 1), 
(19, 7, 1), 
(19, 8, 1), 
(19, 9, 1), 
(19, 10, 1), 
(19, 11, 1), 
(19, 12, 1), 
(19, 51, 1), 
(19, 62, 1), 
(19, 54, 1), 
(19, 55, 1), 
(19, 31, 1), 
(19, 32, 1), 
(19, 33, 1), 
(19, 34, 1), 
(19, 35, 1), 
(19, 36, 1), 
(19, 37, 1), 
(19, 57, 1), 
(19, 58, 1), 
(19, 59, 1), 
(19, 19, 1), 
(19, 20, 1), 
(19, 21, 1), 
(19, 22, 1), 
(19, 23, 1), 
(19, 24, 1), 
(19, 25, 1), 
(19, 26, 1), 
(19, 27, 1), 
(19, 28, 1), 
(19, 29, 1), 
(19, 61, 1), 
(1, 4, 1), 
(2, 4, 2), 
(30, 1, 1), 
(30, 38, 1), 
(30, 39, 1), 
(30, 40, 1), 
(30, 41, 1), 
(30, 47, 1), 
(30, 48, 1), 
(30, 49, 1), 
(30, 50, 1), 
(30, 60, 1), 
(30, 63, 1), 
(30, 4, 1), 
(30, 5, 1), 
(30, 6, 1), 
(30, 7, 1), 
(30, 8, 1), 
(30, 9, 1), 
(30, 10, 1), 
(30, 11, 1), 
(30, 12, 1), 
(30, 51, 1), 
(30, 62, 1), 
(30, 54, 1), 
(30, 55, 1), 
(30, 31, 1), 
(30, 32, 1), 
(30, 33, 1), 
(30, 34, 1), 
(30, 35, 1), 
(30, 36, 1), 
(30, 37, 1), 
(30, 57, 1), 
(30, 58, 1), 
(30, 59, 1), 
(30, 19, 1), 
(30, 20, 1), 
(30, 21, 1), 
(30, 22, 1), 
(30, 23, 1), 
(30, 24, 1), 
(30, 25, 1), 
(30, 26, 1), 
(30, 27, 1), 
(30, 28, 1), 
(30, 29, 1), 
(30, 61, 1), 
(28, 1, 1), 
(28, 38, 1), 
(28, 39, 1), 
(28, 40, 1), 
(28, 41, 1), 
(28, 47, 1), 
(28, 48, 1), 
(28, 49, 1), 
(28, 50, 1), 
(28, 60, 1), 
(28, 63, 1), 
(28, 4, 1), 
(28, 5, 1), 
(28, 6, 1), 
(28, 7, 1), 
(28, 8, 1), 
(28, 9, 1), 
(28, 10, 1), 
(28, 11, 1), 
(28, 12, 1), 
(28, 51, 1), 
(28, 62, 1), 
(28, 54, 1), 
(28, 55, 1), 
(28, 31, 1), 
(28, 32, 1), 
(28, 33, 1), 
(28, 34, 1), 
(28, 35, 1), 
(28, 36, 1), 
(28, 37, 1), 
(28, 57, 1), 
(28, 58, 1), 
(28, 59, 1), 
(28, 19, 1), 
(28, 20, 1), 
(28, 21, 1), 
(28, 22, 1), 
(28, 23, 1), 
(28, 24, 1), 
(28, 25, 1), 
(28, 26, 1), 
(28, 27, 1), 
(28, 28, 1), 
(28, 29, 1), 
(28, 61, 1), 
(29, 1, 1), 
(29, 38, 1), 
(29, 39, 1), 
(29, 40, 1), 
(29, 41, 1), 
(29, 47, 1), 
(29, 48, 1), 
(29, 49, 1), 
(29, 50, 1), 
(29, 60, 1), 
(29, 63, 1), 
(29, 4, 1), 
(29, 5, 1), 
(29, 6, 1), 
(29, 7, 1), 
(29, 8, 1), 
(29, 9, 1), 
(29, 10, 1), 
(29, 11, 1), 
(29, 12, 1), 
(29, 51, 1), 
(29, 62, 1), 
(29, 54, 1), 
(29, 55, 1), 
(29, 31, 1), 
(29, 32, 1), 
(29, 33, 1), 
(29, 34, 1), 
(29, 35, 1), 
(29, 36, 1), 
(29, 37, 1), 
(29, 57, 1), 
(29, 58, 1), 
(29, 59, 1), 
(29, 19, 1), 
(29, 20, 1), 
(29, 21, 1), 
(29, 22, 1), 
(29, 23, 1), 
(29, 24, 1), 
(29, 25, 1), 
(29, 26, 1), 
(29, 27, 1), 
(29, 28, 1), 
(29, 29, 1), 
(29, 61, 1), 
(22, 1, 1), 
(22, 38, 1), 
(22, 39, 1), 
(22, 40, 1), 
(22, 41, 1), 
(22, 47, 1), 
(22, 48, 1), 
(22, 49, 1), 
(22, 50, 1), 
(22, 60, 1), 
(22, 63, 1), 
(22, 4, 1), 
(22, 5, 1), 
(22, 6, 1), 
(22, 7, 1), 
(22, 8, 1), 
(22, 9, 1), 
(22, 10, 1), 
(22, 11, 1), 
(22, 12, 1), 
(22, 51, 1), 
(22, 62, 1), 
(22, 54, 1), 
(22, 55, 1), 
(22, 31, 1), 
(22, 32, 1), 
(22, 33, 1), 
(22, 34, 1), 
(22, 35, 1), 
(22, 36, 1), 
(22, 37, 1), 
(22, 57, 1), 
(22, 58, 1), 
(22, 59, 1), 
(22, 19, 1), 
(22, 20, 1), 
(22, 21, 1), 
(22, 22, 1), 
(22, 23, 1), 
(22, 24, 1), 
(22, 25, 1), 
(22, 26, 1), 
(22, 27, 1), 
(22, 28, 1), 
(22, 29, 1), 
(22, 61, 1), 
(23, 1, 2), 
(23, 38, 2), 
(23, 39, 2), 
(23, 40, 2), 
(23, 41, 2), 
(23, 47, 2), 
(23, 48, 2), 
(23, 49, 2), 
(23, 50, 2), 
(23, 60, 2), 
(23, 63, 2), 
(23, 4, 2), 
(23, 5, 2), 
(23, 6, 2), 
(23, 7, 2), 
(23, 8, 2), 
(23, 9, 2), 
(23, 10, 2), 
(23, 11, 2), 
(23, 12, 2), 
(23, 51, 2), 
(23, 62, 2), 
(23, 54, 2), 
(23, 55, 2), 
(23, 31, 2), 
(23, 32, 2), 
(23, 33, 2), 
(23, 34, 2), 
(23, 35, 2), 
(23, 36, 2), 
(23, 37, 2), 
(23, 57, 2), 
(23, 58, 2), 
(23, 59, 2), 
(23, 19, 2), 
(23, 20, 2), 
(23, 21, 2), 
(23, 22, 2), 
(23, 23, 2), 
(23, 24, 2), 
(23, 25, 2), 
(23, 26, 2), 
(23, 27, 2), 
(23, 28, 2), 
(23, 29, 2), 
(23, 61, 2), 
(24, 1, 1), 
(24, 38, 1), 
(24, 39, 1), 
(24, 40, 1), 
(24, 41, 1), 
(24, 47, 1), 
(24, 48, 1), 
(24, 49, 1), 
(24, 50, 1), 
(24, 60, 1), 
(24, 63, 1), 
(24, 4, 1), 
(24, 5, 1), 
(24, 6, 1), 
(24, 7, 1), 
(24, 8, 1), 
(24, 9, 1), 
(24, 10, 1), 
(24, 11, 1), 
(24, 12, 1), 
(24, 51, 1), 
(24, 62, 1), 
(24, 54, 1), 
(24, 55, 1), 
(24, 31, 1), 
(24, 32, 1), 
(24, 33, 1), 
(24, 34, 1), 
(24, 35, 1), 
(24, 36, 1), 
(24, 37, 1), 
(24, 57, 1), 
(24, 58, 1), 
(24, 59, 1), 
(24, 19, 1), 
(24, 20, 1), 
(24, 21, 1), 
(24, 22, 1), 
(24, 23, 1), 
(24, 24, 1), 
(24, 25, 1), 
(24, 26, 1), 
(24, 27, 1), 
(24, 28, 1), 
(24, 29, 1), 
(24, 61, 1), 
(25, 1, 2), 
(25, 38, 2), 
(25, 39, 2), 
(25, 40, 2), 
(25, 41, 2), 
(25, 47, 2), 
(25, 48, 2), 
(25, 49, 2), 
(25, 50, 2), 
(25, 60, 2), 
(25, 63, 2), 
(25, 4, 2), 
(25, 5, 2), 
(25, 6, 2), 
(25, 7, 2), 
(25, 8, 2), 
(25, 9, 2), 
(25, 10, 2), 
(25, 11, 2), 
(25, 12, 2), 
(25, 51, 2), 
(25, 62, 2), 
(25, 54, 2), 
(25, 55, 2), 
(25, 31, 2), 
(25, 32, 2), 
(25, 33, 2), 
(25, 34, 2), 
(25, 35, 2), 
(25, 36, 2), 
(25, 37, 2), 
(25, 57, 2), 
(25, 58, 2), 
(25, 59, 2), 
(25, 19, 2), 
(25, 20, 2), 
(25, 21, 2), 
(25, 22, 2), 
(25, 23, 2), 
(25, 24, 2), 
(25, 25, 2), 
(25, 26, 2), 
(25, 27, 2), 
(25, 28, 2), 
(25, 29, 2), 
(25, 61, 2), 
(26, 1, 3), 
(26, 38, 3), 
(26, 39, 3), 
(26, 40, 3), 
(26, 41, 3), 
(26, 47, 3), 
(26, 48, 3), 
(26, 49, 3), 
(26, 50, 3), 
(26, 60, 3), 
(26, 63, 3), 
(26, 4, 3), 
(26, 5, 3), 
(26, 6, 3), 
(26, 7, 3), 
(26, 8, 3), 
(26, 9, 3), 
(26, 10, 3), 
(26, 11, 3), 
(26, 12, 3), 
(26, 51, 3), 
(26, 62, 3), 
(26, 54, 3), 
(26, 55, 3), 
(26, 31, 3), 
(26, 32, 3), 
(26, 33, 3), 
(26, 34, 3), 
(26, 35, 3), 
(26, 36, 3), 
(26, 37, 3), 
(26, 57, 3), 
(26, 58, 3), 
(26, 59, 3), 
(26, 19, 3), 
(26, 20, 3), 
(26, 21, 3), 
(26, 22, 3), 
(26, 23, 3), 
(26, 24, 3), 
(26, 25, 3), 
(26, 26, 3), 
(26, 27, 3), 
(26, 28, 3), 
(26, 29, 3), 
(26, 61, 3), 
(27, 1, 4), 
(27, 38, 4), 
(27, 39, 4), 
(27, 40, 4), 
(27, 41, 4), 
(27, 47, 4), 
(27, 48, 4), 
(27, 49, 4), 
(27, 50, 4), 
(27, 60, 4), 
(27, 63, 4), 
(27, 4, 4), 
(27, 5, 4), 
(27, 6, 4), 
(27, 7, 4), 
(27, 8, 4), 
(27, 9, 4), 
(27, 10, 4), 
(27, 11, 4), 
(27, 12, 4), 
(27, 51, 4), 
(27, 62, 4), 
(27, 54, 4), 
(27, 55, 4), 
(27, 31, 4), 
(27, 32, 4), 
(27, 33, 4), 
(27, 34, 4), 
(27, 35, 4), 
(27, 36, 4), 
(27, 37, 4), 
(27, 57, 4), 
(27, 58, 4), 
(27, 59, 4), 
(27, 19, 4), 
(27, 20, 4), 
(27, 21, 4), 
(27, 22, 4), 
(27, 23, 4), 
(27, 24, 4), 
(27, 25, 4), 
(27, 26, 4), 
(27, 27, 4), 
(27, 28, 4), 
(27, 29, 4), 
(27, 61, 4);


-- ---------------------------------------


--
-- Table structure for table `ytt_en_comment`
--

DROP TABLE IF EXISTS `ytt_en_comment`;
CREATE TABLE `ytt_en_comment` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(55)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_name` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(15)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `mod_id` (`module`,`area`,`id`),
  KEY `post_time` (`post_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_contact_department`
--

DROP TABLE IF EXISTS `ytt_en_contact_department`;
CREATE TABLE `ytt_en_contact_department` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `full_name` (`full_name`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_contact_reply`
--

DROP TABLE IF EXISTS `ytt_en_contact_reply`;
CREATE TABLE `ytt_en_contact_reply` (
  `rid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reply_content` text  COLLATE utf8mb4_unicode_ci,
  `reply_time` int(11) unsigned NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_contact_send`
--

DROP TABLE IF EXISTS `ytt_en_contact_send`;
CREATE TABLE `ytt_en_contact_send` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cat` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) unsigned NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sender_name` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(15)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sender_name` (`sender_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_contact_supporter`
--

DROP TABLE IF EXISTS `ytt_en_contact_supporter`;
CREATE TABLE `ytt_en_contact_supporter` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `departmentid` smallint(5) unsigned NOT NULL,
  `full_name` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `weight` smallint(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_freecontent_blocks`
--

DROP TABLE IF EXISTS `ytt_en_freecontent_blocks`;
CREATE TABLE `ytt_en_freecontent_blocks` (
  `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_freecontent_rows`
--

DROP TABLE IF EXISTS `ytt_en_freecontent_rows`;
CREATE TABLE `ytt_en_freecontent_rows` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_menu`
--

DROP TABLE IF EXISTS `ytt_en_menu`;
CREATE TABLE `ytt_en_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_menu`
--

INSERT INTO `ytt_en_menu` VALUES
(1, 'Top Menu');


-- ---------------------------------------


--
-- Table structure for table `ytt_en_menu_rows`
--

DROP TABLE IF EXISTS `ytt_en_menu_rows`;
CREATE TABLE `ytt_en_menu_rows` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(5) unsigned NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` text  COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT '0',
  `css` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`,`mid`)
) ENGINE=MyISAM  AUTO_INCREMENT=12  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_menu_rows`
--

INSERT INTO `ytt_en_menu_rows` VALUES
(1, 0, 1, 'About', '/nukeviet/index.php?language=en&nv=about', '', '', '', 1, 1, 0, '', '6', 'about', '', 1, '', 0, 1), 
(2, 0, 1, 'News', '/nukeviet/index.php?language=en&nv=news', '', '', '', 2, 2, 0, '', '6', 'news', '', 1, '', 0, 1), 
(3, 0, 1, 'Users', '/nukeviet/index.php?language=en&nv=users', '', '', '', 3, 3, 0, '6,7,8,9,10,11', '6', 'users', '', 1, '', 0, 1), 
(4, 0, 1, 'Voting', '/nukeviet/index.php?language=en&nv=voting', '', '', '', 4, 10, 0, '', '6', 'voting', '', 1, '', 0, 1), 
(5, 0, 1, 'Contact', '/nukeviet/index.php?language=en&nv=contact', '', '', '', 5, 11, 0, '', '6', 'contact', '', 1, '', 0, 1), 
(6, 3, 1, 'Login', '/nukeviet/index.php?language=en&nv=users&op=login', '', '', '', 1, 4, 1, '', '5', 'users', 'login', 1, '', 0, 1), 
(7, 3, 1, 'Register', '/nukeviet/index.php?language=en&nv=users&op=register', '', '', '', 2, 5, 1, '', '5', 'users', 'register', 1, '', 0, 1), 
(8, 3, 1, 'Password recovery', '/nukeviet/index.php?language=en&nv=users&op=lostpass', '', '', '', 3, 6, 1, '', '5', 'users', 'lostpass', 1, '', 0, 1), 
(9, 3, 1, 'Account Settings', '/nukeviet/index.php?language=en&nv=users&op=editinfo', '', '', '', 4, 7, 1, '', '4,7', 'users', 'editinfo', 1, '', 0, 1), 
(10, 3, 1, 'Members list', '/nukeviet/index.php?language=en&nv=users&op=memberlist', '', '', '', 5, 8, 1, '', '4,7', 'users', 'memberlist', 1, '', 0, 1), 
(11, 3, 1, 'Logout', '/nukeviet/index.php?language=en&nv=users&op=logout', '', '', '', 6, 9, 1, '', '4,7', 'users', 'logout', 1, '', 0, 1);


-- ---------------------------------------


--
-- Table structure for table `ytt_en_modfuncs`
--

DROP TABLE IF EXISTS `ytt_en_modfuncs`;
CREATE TABLE `ytt_en_modfuncs` (
  `func_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `func_name` varchar(55)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `func_site_title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `in_module` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subweight` smallint(2) unsigned NOT NULL DEFAULT '1',
  `setting` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`func_id`),
  UNIQUE KEY `func_name` (`func_name`,`in_module`),
  UNIQUE KEY `alias` (`alias`,`in_module`)
) ENGINE=MyISAM  AUTO_INCREMENT=64  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_modfuncs`
--

INSERT INTO `ytt_en_modfuncs` VALUES
(1, 'main', 'main', 'Main', '', 'about', 1, 0, 1, ''), 
(2, 'sitemap', 'sitemap', 'Sitemap', '', 'about', 0, 0, 0, ''), 
(3, 'rss', 'rss', 'Rss', '', 'about', 0, 0, 0, ''), 
(4, 'main', 'main', 'Main', '', 'news', 1, 0, 1, ''), 
(5, 'viewcat', 'viewcat', 'Viewcat', '', 'news', 1, 0, 2, ''), 
(6, 'topic', 'topic', 'Topic', '', 'news', 1, 0, 3, ''), 
(7, 'content', 'content', 'Content', '', 'news', 1, 1, 4, ''), 
(8, 'detail', 'detail', 'Detail', '', 'news', 1, 0, 5, ''), 
(9, 'tag', 'tag', 'Tag', '', 'news', 1, 0, 6, ''), 
(10, 'rss', 'rss', 'Rss', '', 'news', 1, 1, 7, ''), 
(11, 'search', 'search', 'Search', '', 'news', 1, 1, 8, ''), 
(12, 'groups', 'groups', 'Groups', '', 'news', 1, 0, 9, ''), 
(13, 'sitemap', 'sitemap', 'Sitemap', '', 'news', 0, 0, 0, ''), 
(14, 'print', 'print', 'Print', '', 'news', 0, 0, 0, ''), 
(15, 'rating', 'rating', 'Rating', '', 'news', 0, 0, 0, ''), 
(16, 'savefile', 'savefile', 'Savefile', '', 'news', 0, 0, 0, ''), 
(17, 'sendmail', 'sendmail', 'Sendmail', '', 'news', 0, 0, 0, ''), 
(18, 'instant-rss', 'instant-rss', 'Instant Articles RSS', '', 'news', 0, 0, 0, ''), 
(19, 'main', 'main', 'Main', '', 'users', 1, 0, 1, ''), 
(20, 'login', 'login', 'Login', '', 'users', 1, 1, 2, ''), 
(21, 'register', 'register', 'Register', '', 'users', 1, 1, 3, ''), 
(22, 'lostpass', 'lostpass', 'Password recovery', '', 'users', 1, 1, 4, ''), 
(23, 'active', 'active', 'Active account', '', 'users', 1, 0, 5, ''), 
(24, 'lostactivelink', 'lostactivelink', 'Lostactivelink', '', 'users', 1, 0, 6, ''), 
(25, 'editinfo', 'editinfo', 'Account Settings', '', 'users', 1, 1, 7, ''), 
(26, 'memberlist', 'memberlist', 'Members list', '', 'users', 1, 1, 8, ''), 
(27, 'avatar', 'avatar', 'Avatar', '', 'users', 1, 0, 9, ''), 
(28, 'logout', 'logout', 'Logout', '', 'users', 1, 1, 10, ''), 
(29, 'groups', 'groups', 'Group management', '', 'users', 1, 0, 11, ''), 
(30, 'oauth', 'oauth', 'Oauth', '', 'users', 0, 0, 0, ''), 
(31, 'main', 'main', 'Main', '', 'statistics', 1, 0, 1, ''), 
(32, 'allreferers', 'allreferers', 'By referrers', '', 'statistics', 1, 1, 2, ''), 
(33, 'allcountries', 'allcountries', 'By countries', '', 'statistics', 1, 1, 3, ''), 
(34, 'allbrowsers', 'allbrowsers', 'By browsers ', '', 'statistics', 1, 1, 4, ''), 
(35, 'allos', 'allos', 'By operating system', '', 'statistics', 1, 1, 5, ''), 
(36, 'allbots', 'allbots', 'By search engines', '', 'statistics', 1, 1, 6, ''), 
(37, 'referer', 'referer', 'By month', '', 'statistics', 1, 0, 7, ''), 
(38, 'main', 'main', 'Main', '', 'banners', 1, 0, 1, ''), 
(39, 'addads', 'addads', 'Addads', '', 'banners', 1, 0, 2, ''), 
(40, 'clientinfo', 'clientinfo', 'Clientinfo', '', 'banners', 1, 0, 3, ''), 
(41, 'stats', 'stats', 'Stats', '', 'banners', 1, 0, 4, ''), 
(42, 'cledit', 'cledit', 'Cledit', '', 'banners', 0, 0, 0, ''), 
(43, 'click', 'click', 'Click', '', 'banners', 0, 0, 0, ''), 
(44, 'clinfo', 'clinfo', 'Clinfo', '', 'banners', 0, 0, 0, ''), 
(45, 'logininfo', 'logininfo', 'Logininfo', '', 'banners', 0, 0, 0, ''), 
(46, 'viewmap', 'viewmap', 'Viewmap', '', 'banners', 0, 0, 0, ''), 
(47, 'main', 'main', 'main', '', 'comment', 1, 0, 1, ''), 
(48, 'post', 'post', 'post', '', 'comment', 1, 0, 2, ''), 
(49, 'like', 'like', 'Like', '', 'comment', 1, 0, 3, ''), 
(50, 'delete', 'delete', 'Delete', '', 'comment', 1, 0, 4, ''), 
(51, 'main', 'main', 'Main', '', 'page', 1, 0, 1, ''), 
(52, 'sitemap', 'sitemap', 'Sitemap', '', 'page', 0, 0, 0, ''), 
(53, 'rss', 'rss', 'Rss', '', 'page', 0, 0, 0, ''), 
(54, 'main', 'main', 'Main', '', 'siteterms', 1, 0, 1, ''), 
(55, 'rss', 'rss', 'Rss', '', 'siteterms', 1, 0, 2, ''), 
(56, 'sitemap', 'sitemap', 'Sitemap', '', 'siteterms', 0, 0, 0, ''), 
(57, 'main', 'main', 'Main', '', 'two-step-verification', 1, 0, 1, ''), 
(58, 'confirm', 'confirm', 'Confirm', '', 'two-step-verification', 1, 0, 2, ''), 
(59, 'setup', 'setup', 'Setup', '', 'two-step-verification', 1, 0, 3, ''), 
(60, 'main', 'main', 'Main', '', 'contact', 1, 0, 1, ''), 
(61, 'main', 'main', 'Main', '', 'voting', 1, 0, 1, ''), 
(62, 'main', 'main', 'Main', '', 'seek', 1, 0, 1, ''), 
(63, 'main', 'main', 'Main', '', 'feeds', 1, 0, 1, '');


-- ---------------------------------------


--
-- Table structure for table `ytt_en_modthemes`
--

DROP TABLE IF EXISTS `ytt_en_modthemes`;
CREATE TABLE `ytt_en_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_modthemes`
--

INSERT INTO `ytt_en_modthemes` VALUES
(0, 'left-main-right', 'default'), 
(0, 'main', 'mobile_default'), 
(1, 'left-main-right', 'default'), 
(1, 'main', 'mobile_default'), 
(4, 'left-main-right', 'default'), 
(4, 'main', 'mobile_default'), 
(5, 'left-main-right', 'default'), 
(5, 'main', 'mobile_default'), 
(6, 'left-main-right', 'default'), 
(6, 'main', 'mobile_default'), 
(7, 'left-main-right', 'default'), 
(7, 'main', 'mobile_default'), 
(8, 'left-main-right', 'default'), 
(8, 'main', 'mobile_default'), 
(9, 'left-main-right', 'default'), 
(9, 'main', 'mobile_default'), 
(10, 'left-main-right', 'default'), 
(11, 'left-main-right', 'default'), 
(11, 'main', 'mobile_default'), 
(12, 'left-main-right', 'default'), 
(12, 'main', 'mobile_default'), 
(19, 'left-main-right', 'default'), 
(19, 'main', 'mobile_default'), 
(20, 'left-main-right', 'default'), 
(20, 'main', 'mobile_default'), 
(21, 'left-main-right', 'default'), 
(21, 'main', 'mobile_default'), 
(22, 'left-main-right', 'default'), 
(22, 'main', 'mobile_default'), 
(23, 'left-main-right', 'default'), 
(23, 'main', 'mobile_default'), 
(24, 'left-main-right', 'default'), 
(24, 'main', 'mobile_default'), 
(25, 'left-main', 'default'), 
(25, 'main', 'mobile_default'), 
(26, 'left-main-right', 'default'), 
(26, 'main', 'mobile_default'), 
(27, 'left-main-right', 'default'), 
(28, 'left-main-right', 'default'), 
(28, 'main', 'mobile_default'), 
(29, 'left-main', 'default'), 
(29, 'main', 'mobile_default'), 
(31, 'left-main', 'default'), 
(31, 'main', 'mobile_default'), 
(32, 'left-main', 'default'), 
(32, 'main', 'mobile_default'), 
(33, 'left-main', 'default'), 
(33, 'main', 'mobile_default'), 
(34, 'left-main', 'default'), 
(34, 'main', 'mobile_default'), 
(35, 'left-main', 'default'), 
(35, 'main', 'mobile_default'), 
(36, 'left-main', 'default'), 
(36, 'main', 'mobile_default'), 
(37, 'left-main', 'default'), 
(37, 'main', 'mobile_default'), 
(38, 'left-main-right', 'default'), 
(38, 'main', 'mobile_default'), 
(39, 'left-main-right', 'default'), 
(39, 'main', 'mobile_default'), 
(40, 'left-main-right', 'default'), 
(40, 'main', 'mobile_default'), 
(41, 'left-main-right', 'default'), 
(41, 'main', 'mobile_default'), 
(47, 'left-main-right', 'default'), 
(47, 'main', 'mobile_default'), 
(48, 'left-main-right', 'default'), 
(48, 'main', 'mobile_default'), 
(49, 'left-main-right', 'default'), 
(49, 'main', 'mobile_default'), 
(50, 'left-main-right', 'default'), 
(50, 'main', 'mobile_default'), 
(51, 'left-main', 'default'), 
(51, 'main', 'mobile_default'), 
(54, 'left-main-right', 'default'), 
(54, 'main', 'mobile_default'), 
(55, 'left-main-right', 'default'), 
(55, 'main', 'mobile_default'), 
(57, 'left-main-right', 'default'), 
(57, 'main', 'mobile_default'), 
(58, 'left-main-right', 'default'), 
(58, 'main', 'mobile_default'), 
(59, 'left-main-right', 'default'), 
(59, 'main', 'mobile_default'), 
(60, 'left-main', 'default'), 
(60, 'main', 'mobile_default'), 
(61, 'left-main', 'default'), 
(61, 'main', 'mobile_default'), 
(62, 'left-main-right', 'default'), 
(62, 'main', 'mobile_default'), 
(63, 'left-main-right', 'default'), 
(63, 'main', 'mobile_default');


-- ---------------------------------------


--
-- Table structure for table `ytt_en_modules`
--

DROP TABLE IF EXISTS `ytt_en_modules`;
CREATE TABLE `ytt_en_modules` (
  `title` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_theme` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  `main_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text  COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admins` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `gid` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_modules`
--

INSERT INTO `ytt_en_modules` VALUES
('about', 'page', 'about', 'about', 'page', 'About', '', '', 1493344733, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 0), 
('news', 'news', 'news', 'news', 'news', 'News', '', '', 1493344733, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 0), 
('users', 'users', 'users', 'users', 'users', 'Users', '', 'Users', 1493344733, 1, 1, '', '', '', '', '6', 3, 1, '', 0, 0), 
('contact', 'contact', 'contact', 'contact', 'contact', 'Contact', '', '', 1493344733, 1, 1, '', '', '', '', '6', 4, 1, '', 0, 0), 
('statistics', 'statistics', 'statistics', 'statistics', 'statistics', 'Statistics', '', '', 1493344733, 1, 1, '', '', '', 'online, statistics', '6', 5, 1, '', 0, 0), 
('voting', 'voting', 'voting', 'voting', 'voting', 'Voting', '', '', 1493344733, 1, 1, '', '', '', '', '6', 6, 1, '', 1, 0), 
('banners', 'banners', 'banners', 'banners', 'banners', 'Banners', '', '', 1493344733, 1, 1, '', '', '', '', '6', 7, 1, '', 0, 0), 
('seek', 'seek', 'seek', 'seek', 'seek', 'Search', '', '', 1493344733, 1, 0, '', '', '', '', '6', 8, 1, '', 0, 0), 
('menu', 'menu', 'menu', 'menu', 'menu', 'Navigation Bar', '', '', 1493344733, 0, 1, '', '', '', '', '6', 9, 1, '', 0, 0), 
('feeds', 'feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', '', 'RSS-feeds', 1493344733, 1, 1, '', '', '', '', '6', 10, 1, '', 0, 0), 
('page', 'page', 'page', 'page', 'page', 'Page', '', '', 1493344733, 1, 1, '', '', '', '', '6', 11, 1, '', 1, 0), 
('comment', 'comment', 'comment', 'comment', 'comment', 'Comment', '', '', 1493344733, 0, 1, '', '', '', '', '6', 12, 1, '', 0, 0), 
('siteterms', 'page', 'siteterms', 'siteterms', 'page', 'Terms & Conditions', '', '', 1493344733, 1, 1, '', '', '', '', '6', 13, 1, '', 1, 0), 
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'freecontent', 'Introduction', '', '', 1493344733, 0, 1, '', '', '', '', '6', 14, 1, '', 0, 0), 
('two-step-verification', 'two-step-verification', 'two_step_verification', 'two_step_verification', 'two-step-verification', '2-Step Verification', '', '', 1493344733, 1, 0, '', '', '', '', '6', 15, 1, '', 0, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_1`
--

DROP TABLE IF EXISTS `ytt_en_news_1`;
CREATE TABLE `ytt_en_news_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_news_1`
--

INSERT INTO `ytt_en_news_1` VALUES
(1, 1, '1,7,8', 0, 8, 'VINADES', 0, 1277689959, 1277690410, 1, 1277689920, 0, 2, 'Invite to co-operate announcement', 'Invite-to-co-operate-announcement', 'VINADES.,JSC was founded in order to professionalize NukeViet opensource development and release. We also using NukeViet in our bussiness projects to make it continue developing. Include Advertisment, provide hosting services for NukeViet CMS development.', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_10`
--

DROP TABLE IF EXISTS `ytt_en_news_10`;
CREATE TABLE `ytt_en_news_10` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_11`
--

DROP TABLE IF EXISTS `ytt_en_news_11`;
CREATE TABLE `ytt_en_news_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_12`
--

DROP TABLE IF EXISTS `ytt_en_news_12`;
CREATE TABLE `ytt_en_news_12` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  AUTO_INCREMENT=4  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_news_12`
--

INSERT INTO `ytt_en_news_12` VALUES
(3, 12, '12,7', 0, 8, '', 2, 1277691851, 1287160943, 1, 1277691840, 0, 2, 'HTML 5 review', 'HTML-5-review', 'I have to say that my money used to be on XHTML 2.0 eventually winning the battle for the next great web standard. Either that, or the two titans would continue to battle it out for the forseable future, leading to an increasingly fragmented web.', '', '', 0, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_13`
--

DROP TABLE IF EXISTS `ytt_en_news_13`;
CREATE TABLE `ytt_en_news_13` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_14`
--

DROP TABLE IF EXISTS `ytt_en_news_14`;
CREATE TABLE `ytt_en_news_14` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  AUTO_INCREMENT=3  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_news_14`
--

INSERT INTO `ytt_en_news_14` VALUES
(2, 14, '14,8', 0, 8, '', 1, 1277691366, 1277691470, 1, 1277691360, 0, 2, 'What does WWW mean?', 'What-does-WWW-mean', 'The World Wide Web, abbreviated as WWW and commonly known as the Web, is a system of interlinked hypertext&nbsp; documents accessed via the Internet.', '', '', 0, 1, '2', 1, 0, 0, 0, 0, 0, 0, '', 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_2`
--

DROP TABLE IF EXISTS `ytt_en_news_2`;
CREATE TABLE `ytt_en_news_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_3`
--

DROP TABLE IF EXISTS `ytt_en_news_3`;
CREATE TABLE `ytt_en_news_3` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_4`
--

DROP TABLE IF EXISTS `ytt_en_news_4`;
CREATE TABLE `ytt_en_news_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  AUTO_INCREMENT=6  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_news_4`
--

INSERT INTO `ytt_en_news_4` VALUES
(4, 4, '4', 0, 1, 'VOVNews&#x002F;VNA', 0, 1292959020, 1292959513, 1, 1292959020, 0, 2, 'First open-source company starts operation', 'First-open-source-company-starts-operation', 'The Vietnam Open Source Development Joint Stock Company (VINADES.,JSC), the first firm operating in the field of open source in the country, made its debut on February 25.', 'nangly.jpg', '', 1, 1, '6', 1, 0, 1, 0, 0, 0, 0, '', 0), 
(5, 4, '4', 0, 1, '', 0, 1292959490, 1292959664, 1, 1292959440, 0, 2, 'NukeViet 3.0 - New CMS for News site', 'NukeViet-30-New-CMS-for-News-site', 'NukeViet 3.0 is a professional system: VINADES.,JSC founded to maintain and improve NukeViet 3.0 features. VINADES.,JSC co-operated with many professional hosting providers to test compatibility issues.', 'nukeviet-cms.jpg', '', 1, 1, '6', 1, 0, 1, 0, 0, 0, 0, '', 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_5`
--

DROP TABLE IF EXISTS `ytt_en_news_5`;
CREATE TABLE `ytt_en_news_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_6`
--

DROP TABLE IF EXISTS `ytt_en_news_6`;
CREATE TABLE `ytt_en_news_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_7`
--

DROP TABLE IF EXISTS `ytt_en_news_7`;
CREATE TABLE `ytt_en_news_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  AUTO_INCREMENT=4  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_news_7`
--

INSERT INTO `ytt_en_news_7` VALUES
(1, 1, '1,7,8', 0, 8, 'VINADES', 0, 1277689959, 1277690410, 1, 1277689920, 0, 2, 'Invite to co-operate announcement', 'Invite-to-co-operate-announcement', 'VINADES.,JSC was founded in order to professionalize NukeViet opensource development and release. We also using NukeViet in our bussiness projects to make it continue developing. Include Advertisment, provide hosting services for NukeViet CMS development.', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0), 
(3, 12, '12,7', 0, 8, '', 2, 1277691851, 1287160943, 1, 1277691840, 0, 2, 'HTML 5 review', 'HTML-5-review', 'I have to say that my money used to be on XHTML 2.0 eventually winning the battle for the next great web standard. Either that, or the two titans would continue to battle it out for the forseable future, leading to an increasingly fragmented web.', '', '', 0, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_8`
--

DROP TABLE IF EXISTS `ytt_en_news_8`;
CREATE TABLE `ytt_en_news_8` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  AUTO_INCREMENT=3  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_news_8`
--

INSERT INTO `ytt_en_news_8` VALUES
(1, 1, '1,7,8', 0, 8, 'VINADES', 0, 1277689959, 1277690410, 1, 1277689920, 0, 2, 'Invite to co-operate announcement', 'Invite-to-co-operate-announcement', 'VINADES.,JSC was founded in order to professionalize NukeViet opensource development and release. We also using NukeViet in our bussiness projects to make it continue developing. Include Advertisment, provide hosting services for NukeViet CMS development.', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0), 
(2, 14, '14,8', 0, 8, '', 1, 1277691366, 1277691470, 1, 1277691360, 0, 2, 'What does WWW mean?', 'What-does-WWW-mean', 'The World Wide Web, abbreviated as WWW and commonly known as the Web, is a system of interlinked hypertext&nbsp; documents accessed via the Internet.', '', '', 0, 1, '2', 1, 0, 0, 0, 0, 0, 0, '', 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_9`
--

DROP TABLE IF EXISTS `ytt_en_news_9`;
CREATE TABLE `ytt_en_news_9` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_admins`
--

DROP TABLE IF EXISTS `ytt_en_news_admins`;
CREATE TABLE `ytt_en_news_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`,`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_block`
--

DROP TABLE IF EXISTS `ytt_en_news_block`;
CREATE TABLE `ytt_en_news_block` (
  `bid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL,
  UNIQUE KEY `bid` (`bid`,`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_block_cat`
--

DROP TABLE IF EXISTS `ytt_en_news_block_cat`;
CREATE TABLE `ytt_en_news_block_cat` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text  COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  AUTO_INCREMENT=3  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_news_block_cat`
--

INSERT INTO `ytt_en_news_block_cat` VALUES
(1, 0, 4, 'Hot News', 'Hot-News', '', '', 1, '', 1279963759, 1279963759), 
(2, 1, 4, 'Top News', 'Top-News', '', '', 2, '', 1279963766, 1279963766);


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_cat`
--

DROP TABLE IF EXISTS `ytt_en_news_cat`;
CREATE TABLE `ytt_en_news_cat` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text  COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text  COLLATE utf8mb4_unicode_ci,
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `newday` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text  COLLATE utf8mb4_unicode_ci,
  `admins` text  COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`catid`),
  UNIQUE KEY `alias` (`alias`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM  AUTO_INCREMENT=15  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_news_cat`
--

INSERT INTO `ytt_en_news_cat` VALUES
(1, 0, 'Co-operate', '', 'Co-operate', '', '', '', 0, 2, 5, 0, 'viewcat_page_new', 2, '2,3', 1, 3, 2, 0, '', '', '', 1277689708, 1277689708, '6'), 
(2, 1, 'Careers at NukeViet', '', 'Careers-at-NukeViet', '', '', '', 0, 1, 6, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690086, 1277690259, '6'), 
(3, 1, 'Partners', '', 'Partners', '', '', '', 0, 2, 7, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690142, 1277690291, '6'), 
(4, 0, 'NukeViet news', '', 'NukeViet-news', '', '', '', 0, 1, 1, 0, 'viewcat_page_new', 3, '5,6,7', 1, 3, 2, 0, '', '', '', 1277690451, 1277690451, '6'), 
(5, 4, 'Security issues', '', 'Security-issues', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690497, 1277690564, '6'), 
(6, 4, 'Release notes', '', 'Release-notes', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690588, 1277690588, '6'), 
(7, 4, 'Development team talk', '', 'Development-team-talk', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690652, 1277690652, '6'), 
(8, 0, 'NukeViet community', '', 'NukeViet-community', '', '', '', 0, 3, 8, 0, 'viewcat_page_new', 3, '9,10,11', 1, 3, 2, 0, '', '', '', 1277690748, 1277690748, '6'), 
(9, 8, 'Activities', '', 'Activities', '', '', '', 0, 1, 9, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690765, 1277690765, '6'), 
(10, 8, 'Events', '', 'Events', '', '', '', 0, 2, 10, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690783, 1277690783, '6'), 
(11, 8, 'Faces of week &#x3A;D', '', 'Faces-of-week-D', '', '', '', 0, 3, 11, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690821, 1277690821, '6'), 
(12, 0, 'Lastest technologies', '', 'Lastest-technologies', '', '', '', 0, 4, 12, 0, 'viewcat_page_new', 2, '13,14', 1, 3, 2, 0, '', '', '', 1277690888, 1277690888, '6'), 
(13, 12, 'World wide web', '', 'World-wide-web', '', '', '', 0, 1, 13, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690934, 1277690934, '6'), 
(14, 12, 'Around internet', '', 'Around-internet', '', '', '', 0, 2, 14, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690982, 1277690982, '6');


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_config_post`
--

DROP TABLE IF EXISTS `ytt_en_news_config_post`;
CREATE TABLE `ytt_en_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_detail`
--

DROP TABLE IF EXISTS `ytt_en_news_detail`;
CREATE TABLE `ytt_en_news_detail` (
  `id` int(11) unsigned NOT NULL,
  `titlesite` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodyhtml` longtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `sourcetext` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_news_detail`
--

INSERT INTO `ytt_en_news_detail` VALUES
(1, '', '', '<p> <span style=\"color: black;\"><span style=\"color: black;\"><font size=\"2\"><span style=\"font-family: verdana,sans-serif;\">VIETNAM OPEN SOURCE DEVELOPMENT COMPANY (VINADES.,JSC)<br /> Head office: Room 2004 – CT2 Nang Huong building, 583 Nguyen Trai street, Hanoi, Vietnam.<br /> Mobile: (+84)4 8587 2007<br /> Fax: (+84) 4 3550 0914<br /> Website: <a f8f55ee40942436149=\"true\" href=\"http://www.vinades.vn/\" target=\"_blank\">www.vinades.vn</a> - <a f8f55ee40942436149=\"true\" href=\"http://www.nukeviet.vn/\" target=\"_blank\">www.nukeviet.vn</a></span></font></span></span></p><div h4f82558737983=\"nukeviet.vn\" style=\"display: inline; cursor: pointer; padding-right: 16px; width: 16px; height: 16px;\"> <span style=\"color: black;\"><span style=\"color: black;\"><font size=\"2\"><span style=\"font-family: verdana,sans-serif;\">&nbsp;</span></font></span></span></div><br /><p> <span style=\"color: black;\"><span style=\"color: black;\"><font size=\"2\"><span style=\"font-family: verdana,sans-serif;\">Email: <a href=\"mailto:contact@vinades.vn\" target=\"_blank\">contact@vinades.vn</a><br /> <br /> <br /> Dear valued customers and partners,<br /> <br /> VINADES.,JSC was founded in order to professionalize NukeViet opensource development and release. We also using NukeViet in our bussiness projects to make it continue developing.<br /> <br /> NukeViet is a Content Management System (CMS). 1st general purpose CMS developed by Vietnamese community. It have so many pros. Ex: Biggest community in VietNam, pure Vietnamese, easy to use, easy to develop...<br /> <br /> NukeViet 3 is lastest version of NukeViet and it still developing but almost complete with many advantage features.<br /> <br /> With respects to invite hosting - domain providers, and all company that pay attension to NukeViet in bussiness co-operate.<br /> <br /> Co-operate types:<br /> <br /> 1. Website advertisement, banners exchange, links:<br /> a. Description:<br /> Website advertising &amp; communication channels.<br /> On each release version of NukeViet.<br /> b. Benefits:<br /> Broadcast to all end users on both side.<br /> Reduce advertisement cost.<br /> c. Warranties:<br /> Place advertisement banner of partners on both side.<br /> Open sub-forum at NukeViet.VN to support end users who using hosting services providing by partners.<br /> <br /> 2. Provide host packet for NukeViet development testing purpose:<br /> <br /> a. Description:<br /> Sign the contract and agreements.<br /> Partners provide all types of hosting packet for VINADES.,JSC. Each type at least 1 re-sale packet.<br /> VINADES.,JSC provide an certificate verify host providing by partner compartable with NukeViet.<br /> b. Benefits:<br /> Expand market.<br /> Reduce cost, improve bussiness value.<br /> c. Warranties:<br /> Partner provide free hosting packet for VINADES.,JSC to test NukeViet compatibility.<br /> VINADES.JSC annoucement tested result to community.<br /> <br /> 3. Support end users:<br /> a. Description:<br /> Co-operate to solve problem of end user.<br /> Partners send end user requires about NukeViet CMS to VINADES.,JSC. VINADES also send user requires about hosting services to partners.<br /> b. Benefits:<br /> Reduce cost, human resources to support end users.<br /> Support end user more effective.<br /> c. Warranties:<br /> Solve end user requires as soon as possible.<br /> <br /> 4. Other types:<br /> Besides, as a publisher of NukeViet CMS, we also place advertisements on software user interface, sample articles in each release version. With thousands of downloaded hits each release version, we believe that it is the most effective advertisement type to webmasters.<br /> If partners have any ideas about new co-operate types. You are welcome and feel free to send specifics to us. Our slogan is &quot;Co-operate for development&quot;.<br /> <br /> We look forward to co-operating with you.<br /> <br /> Sincerely,<br /> <br /> VINADES.,JSC</span></font></span></span></p>', '', 2, 0, 1, 1, 1, 0), 
(2, '', '', '<p> With a web browser, one can view web pages&nbsp; that may contain text, images, videos, and other multimedia&nbsp; and navigate between them by using hyperlinks. Using concepts from earlier hypertext systems, British engineer and computer scientist Sir Tim Berners-Lee, now the Director of the World Wide Web Consortium, wrote a proposal in March 1989 for what would eventually become the World Wide Web. He was later joined by Belgian computer scientist Robert Cailliau while both were working at CERN in Geneva, Switzerland. In 1990, they proposed using &quot;HyperText to link and access information of various kinds as a web of nodes in which the user can browse at will&quot;, and released that web in December.<br /> <br /> &quot;The World-Wide Web (W3) was developed to be a pool of human knowledge, which would allow collaborators in remote sites to share their ideas and all aspects of a common project.&quot;. If two projects are independently crea-ted, rather than have a central figure make the changes, the two bodies of information could form into one cohesive piece of work.</p><p> For more detail. See <a href=\"http://en.wikipedia.org/wiki/World_Wide_Web\" target=\"_blank\">Wikipedia</a></p>', '', 1, 0, 1, 1, 1, 0), 
(3, '', '', '<p> But now that the W3C has admitted defeat, and abandoned <span class=\"caps\">XHTML</span> 2.0, there’s now no getting away f-rom the fact that <span class=\"caps\">HTML</span> 5 is the future. As such, I’ve now spent some time taking a look at this emerging standard, and hope you’ll endulge my ego by taking a glance over my thoughts on the matter.</p><p> Before I get started though, I have to say that I’m very impressed by what I’ve seen. It’s a good set of standards that are being cre-ated, and I hope that they will gradually be adopted over the next few years.</p><h2> New markup</h2><p> <span class=\"caps\">HTML</span> 5 introduces some new markup elements to encourage better structure within documents. The most important of these is &lt;section&gt;, which is used to define a hierarchy within a document. Sections can be nested to define subsections, and each section can be broken up into &lt;header&gt; and &lt;footer&gt; areas.</p><p> The important thing about this addition is that it removes the previous dependancy on &lt;h1&gt;, &lt;h2&gt; and related tags to define structure. Within each &lt;section&gt;, the top level heading is always &lt;h1&gt;. You can use as many &lt;h1&gt; tags as you like within your content, so long as they are correctly nested within &lt;section&gt; tags.</p><p> There’s a plethora of other new tags, all of which seem pretty useful. The best thing about all of this, however, is that there’s no reason not to start using them right away. There’s a small piece of JavaScript that’s needed to make Internet Explorer behave, but aside f-rom that it’s all good. More details about this hack are available at <a href=\"http://www.diveintohtml5.org/\">http://www.diveintohtml5.org</a></p><h2> Easier media embedding</h2><p> <span class=\"caps\">HTML</span> 5 defines some new tags that will make it a lot easier to embed video and audio into pages. In the same way that images are embedded using &lt;img&gt; tags, so now can video and audio files be embedded using &lt;video&gt; and &lt;audio&gt;.</p><p> I don’t think than anyone is going to complain about these new features. They free us f-rom relying on third-party plugins, such as Adobe Flash, for such simple activities such as playing video.</p><p> Unfortunately, due to some annoying licensing conditions and a lack of support for the open-source Theora codec, actually using these tags at the moment requires that videos are encoded in two different formats. Even then, you’ll still need to still provide an Adobe Flash fallback for Internet Explorer.</p><p> You’ll need to be pretty devoted to <span class=\"caps\">HTML</span> 5 to use these tags yet…</p><h2> Relaxed markup rules</h2><p> This is one thorny subject. You know how we’ve all been so good recently with our well-formed <span class=\"caps\">XHTML</span>, quoting those attributes and closing those tags? Now there’s no need to, apparently…</p><p> On the surface, this seems like a big step backwards into the bad days of tag soup. However, if you dig deeper, the reasoning behind this decision goes something like this:</p><ol> <li> It’s unnacceptable to crash out an entire <span class=\"caps\">HTML</span> page just because of a simple <span class=\"caps\">XML</span> syntax error.</li> <li> This means that browsers cannot use an <span class=\"caps\">XML</span> parser, and must instead use a HTML-aware fault-tolerant parser.</li> <li> For consistency, all browsers should handle any such “syntax errors” (such as unquoted attributes and unclosed tags), in the same way.</li> <li> If all browsers are behaving in the same way, then unquoted attributes and unclosed tags are not really syntax errors any more. In fact, by leaving them out of our pages, we can save a few bytes!</li></ol><p> This isn’t to say that you have to throw away those <span class=\"caps\">XHTML</span> coding habits. It’s still all valid <span class=\"caps\">HTML</span> 5. In fact, if you really want to be strict, you can set a different content-type header to enforce well-formed <span class=\"caps\">XHTML</span>. But for most people, we’ll just carry on coding well-formed <span class=\"caps\">HTML</span> with the odd typo, but no longer have to worry about clients screaming at us when the perfectly-rendered page doesn’t validate.</p><h2> So what now?</h2><p> The <span class=\"caps\">HTML</span> 5 specification is getting pretty close to stable, so it’s now safe to use bits of this new standard in your code. How much you use is entirely a personal choice. However, we should all get used to the new markup over the next few years, because <span class=\"caps\">HTML</span> 5 is assuredly here to stay.</p><p> Myself, I’ll be switching to the new doctype and using the new markup for document sections in my code. This step involves very little effort and does a good job of showing support for the new specification.</p><p> The new media tags are another matter. Until all platforms support a single video format, it’s simply not sustainable to be transcoding all videos into two filetypes. When this is coupled with having to provide a Flash fallback, it all seems like a pretty poor return on investment.</p><p> These features will no doubt become more useable over the next few years, as newer browser take the place of old. One day, hopefully, we’ll be able write clean, semantic pages without having to worry about backwards-compatibility.</p><p> Part of this progress relies on web developers using these new standards in our pages. By adopting new technology, we show our support for the standards it represents and place pressure on browser vendors to adhere to those standards. It’s a bit of effort in the short term, but in the long term it will pay dividends.</p>\', \'http://www.etianen.com/blog/developers/2010/2/html-5-review/', '', 2, 0, 1, 1, 1, 0), 
(4, '', '', '<p> <span>The Hanoi-based company will further develop and popularise an open source content management system best known as NukeViet in the country. </span></p><p> <span>VINADES Chairman Nguyen Anh Tu said NukeViet is totally free and users can download the product at www.nukeviet.vn. </span></p><p> <span>NukeViet has been widely used across the country over the past five years. The system, built on PHP-Nuke and MySQL database, enables users to easily post and manage files on the Internet or Intranet.</span></p>', '', 0, 0, 1, 1, 1, 0), 
(5, '', '', '<p style=\"text-align: justify;\"> NukeViet also testing by many experienced webmasters to optimize system features. NukeViet&#039;s core team are programming enthusiasts. All of them want to make NukeViet become the best and most popular open source CMS.</p><p style=\"text-align: justify;\"> <strong>NukeViet 3.0 is a powerful system:</strong><br /> Learn by experiences f-rom NukeViet 2.0, NukeViet 3.0 build ground up on latest web technologies, allow you easily cre-ate portal, online news express, social network, e commerce system.<br /> NukeViet 3.0 can process huge amount of data. It was used by many companies, corporation&#039;s website with millions of news entries with high traffic.<br /> <br /> <strong>NukeViet 3.0 is easy to use system:</strong><br /> NukeViet allow you easily to customize and instantly use without any line of code. As developers, NukeViet help you build your own modules rapidly.</p><h2 style=\"text-align: justify;\"> NukeViet 3.0 features:</h2><p style=\"text-align: justify;\"> <strong>Technology bases:</strong><br /> NukeViet 3.0 using PHP 5 and MySQL 5 as main programming languages. XTemplate and jQuery for use Ajax f-rom system core.<br /> NukeViet 3.0 is fully validated with xHTML 1.0, CSS 2.1 and compatible with all major browsers.<br /> NukeViet 3.0 layout website using grid CSS framework like BluePrintCSS for design templates rapidly.<br /> <br /> NukeViet 3.0 has it own core libraries and it is platform independent. You can build your own modules with basic knowledge of PHP and MySQL.<br /> <br /> <strong>Module structure:</strong><br /> NukeViet 3.0 re-construct module structure. All module files packed into a particular folder. It&#039;s also define module block and module theme for layout modules in many ways.<br /> <br /> NukeViet 3.0 support modules can be multiply. We called it abstract modules. It help users automatic cre-ate many modules without any line of code f-rom any exists module which support cre-ate abstract modules.<br /> <br /> NukeViet 3.0 support automatic setup modules, blocks, themes f-rom Admin Control Panel. It&#039;s also allow you to share your modules by packed it into packets. NukeViet allow grant, deny access or even re-install, de-lete module.<br /> <br /> <strong>Multi language:</strong><br /> NukeViet 3 support multi languages in 2 types. Multi interface languages and multi database languages. It had features support administrators to build new languages. In NukeViet 3, admin language, user language, interface language, database language are separate for easily build multi languages systems.<br /> <br /> <strong>Right:</strong><br /> All manage features only access in admin area. NukeViet 3.0 allow grant access by module and language. It also allow cre-ate user groups and grant access modules by group.<br /> <br /> <strong>Themes:</strong><br /> NukeViet 3.0 support automatic install and uninstall themes. You can easily customize themes in module and module&#039;s functions. NukeViet store HTML, CSS code separately f-rom PHP code to help designers rapidly layout website.<br /> <br /> <strong>Customize website using blocks</strong><br /> A block can be a widget, advertisement pictures or any defined data. You can place block in many positions visually by drag and d-rop or argument it in Admin Control Panel.<br /> <br /> <strong>Securities:</strong><br /> NukeViet using security filters to filter data upload.<br /> Logging and control access f-rom many search engine as Google, Yahoo or any search engine.<br /> Anti spam using Captcha, anti flood data...<br /> NukeViet 3.0 has logging systems to log and track information about client to prevent attack.<br /> NukeViet 3.0 support automatic up-date to fix security issues or upgrade your website to latest version of NukeViet.<br /> <br /> <strong>Database:</strong><br /> You can backup database and download backup files to restore database to any point you restored your database.<br /> <br /> <strong>Control errors report</strong><br /> You can configure to display each type of error only one time. System then sent log files about this error to administrator via email.<br /> <br /> <strong>SEO:</strong><br /> Support SEO link<br /> Manage and customize website title<br /> Manage meta tag<br /> <br /> Support keywords for cre-ate statistic via search engine<br /> <br /> <strong>Prepared for integrate with third party application</strong><br /> NukeViet 3.0 has it own user database and many built-in methods to connect with many forum application. PHPBB or VBB can integrate and use with NukeViet 3.0 by single click.<br /> <br /> <strong>Distributed login</strong><br /> NukeViet support login by OpenID. Users can login to your website by accounts f-rom popular and well-known provider, such as Google, Yahoo or other OpenID providers. It help your website more accessible and reduce user&#039;s time to filling out registration forms.<br /> <br /> Download NukeViet 3.0: <a href=\"http://code.google.com/p/nuke-viet/downloads/list\">http://code.google.com/p/nuke-viet/downloads/list</a><br /> Website: <a href=\"http://nukeviet.vn/\">http://nukeviet.vn</a></p>', '', 2, 0, 1, 1, 1, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_logs`
--

DROP TABLE IF EXISTS `ytt_en_news_logs`;
CREATE TABLE `ytt_en_news_logs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_rows`
--

DROP TABLE IF EXISTS `ytt_en_news_rows`;
CREATE TABLE `ytt_en_news_rows` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  AUTO_INCREMENT=6  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_news_rows`
--

INSERT INTO `ytt_en_news_rows` VALUES
(1, 1, '1,7,8', 0, 8, 'VINADES', 0, 1277689959, 1277690410, 1, 1277689920, 0, 2, 'Invite to co-operate announcement', 'Invite-to-co-operate-announcement', 'VINADES.,JSC was founded in order to professionalize NukeViet opensource development and release. We also using NukeViet in our bussiness projects to make it continue developing. Include Advertisment, provide hosting services for NukeViet CMS development.', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0), 
(2, 14, '14,8', 0, 8, '', 1, 1277691366, 1277691470, 1, 1277691360, 0, 2, 'What does WWW mean?', 'What-does-WWW-mean', 'The World Wide Web, abbreviated as WWW and commonly known as the Web, is a system of interlinked hypertext&nbsp; documents accessed via the Internet.', '', '', 0, 1, '2', 1, 0, 0, 0, 0, 0, 0, '', 0), 
(3, 12, '12,7', 0, 8, '', 2, 1277691851, 1287160943, 1, 1277691840, 0, 2, 'HTML 5 review', 'HTML-5-review', 'I have to say that my money used to be on XHTML 2.0 eventually winning the battle for the next great web standard. Either that, or the two titans would continue to battle it out for the forseable future, leading to an increasingly fragmented web.', '', '', 0, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0), 
(4, 4, '4', 0, 1, 'VOVNews&#x002F;VNA', 0, 1292959020, 1292959513, 1, 1292959020, 0, 2, 'First open-source company starts operation', 'First-open-source-company-starts-operation', 'The Vietnam Open Source Development Joint Stock Company (VINADES.,JSC), the first firm operating in the field of open source in the country, made its debut on February 25.', 'nangly.jpg', '', 1, 1, '6', 1, 0, 1, 0, 0, 0, 0, '', 0), 
(5, 4, '4', 0, 1, '', 0, 1292959490, 1292959664, 1, 1292959440, 0, 2, 'NukeViet 3.0 - New CMS for News site', 'NukeViet-30-New-CMS-for-News-site', 'NukeViet 3.0 is a professional system: VINADES.,JSC founded to maintain and improve NukeViet 3.0 features. VINADES.,JSC co-operated with many professional hosting providers to test compatibility issues.', 'nukeviet-cms.jpg', '', 1, 1, '6', 1, 0, 1, 0, 0, 0, 0, '', 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_sources`
--

DROP TABLE IF EXISTS `ytt_en_news_sources`;
CREATE TABLE `ytt_en_news_sources` (
  `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`sourceid`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM  AUTO_INCREMENT=3  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_news_sources`
--

INSERT INTO `ytt_en_news_sources` VALUES
(1, 'Wikipedia', 'http://www.wikipedia.org', '', 1, 1277691366, 1277691366), 
(2, 'Enlightened Website Development', 'http://www.etianen.com', '', 2, 1277691851, 1277691851);


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_tags`
--

DROP TABLE IF EXISTS `ytt_en_news_tags`;
CREATE TABLE `ytt_en_news_tags` (
  `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text  COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  AUTO_INCREMENT=6  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_news_tags`
--

INSERT INTO `ytt_en_news_tags` VALUES
(1, 0, 'vinades', '', '', 'VINADES'), 
(2, 0, 'web', '', '', 'Web'), 
(3, 0, 'html5', '', '', 'HTML5'), 
(4, 0, 'nguyen-anh-tu', '', '', 'Nguyen Anh Tu'), 
(5, 0, 'nukeviet', '', '', 'NukeViet');


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_tags_id`
--

DROP TABLE IF EXISTS `ytt_en_news_tags_id`;
CREATE TABLE `ytt_en_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65)  COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `id_tid` (`id`,`tid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_news_tags_id`
--

INSERT INTO `ytt_en_news_tags_id` VALUES
(1, 1, 'VINADES'), 
(2, 2, 'Web'), 
(3, 3, 'HTML5'), 
(4, 1, 'VINADES'), 
(4, 4, 'Nguyen Anh Tu'), 
(5, 5, 'NukeViet'), 
(5, 1, 'VINADES');


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_tmp`
--

DROP TABLE IF EXISTS `ytt_en_news_tmp`;
CREATE TABLE `ytt_en_news_tmp` (
  `id` mediumint(8) unsigned NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `time_edit` int(11) NOT NULL,
  `time_late` int(11) NOT NULL,
  `ip` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_news_topics`
--

DROP TABLE IF EXISTS `ytt_en_news_topics`;
CREATE TABLE `ytt_en_news_topics` (
  `topicid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text  COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`topicid`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_page`
--

DROP TABLE IF EXISTS `ytt_en_page`;
CREATE TABLE `ytt_en_page` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text  COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text  COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_page_config`
--

DROP TABLE IF EXISTS `ytt_en_page_config`;
CREATE TABLE `ytt_en_page_config` (
  `config_name` varchar(30)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_page_config`
--

INSERT INTO `ytt_en_page_config` VALUES
('viewtype', '0'), 
('facebookapi', ''), 
('per_page', '20'), 
('news_first', '0'), 
('related_articles', '5'), 
('copy_page', '0');


-- ---------------------------------------


--
-- Table structure for table `ytt_en_referer_stats`
--

DROP TABLE IF EXISTS `ytt_en_referer_stats`;
CREATE TABLE `ytt_en_referer_stats` (
  `host` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `host` (`host`),
  KEY `total` (`total`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_searchkeys`
--

DROP TABLE IF EXISTS `ytt_en_searchkeys`;
CREATE TABLE `ytt_en_searchkeys` (
  `id` varchar(32)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `id` (`id`),
  KEY `skey` (`skey`),
  KEY `search_engine` (`search_engine`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_siteterms`
--

DROP TABLE IF EXISTS `ytt_en_siteterms`;
CREATE TABLE `ytt_en_siteterms` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text  COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text  COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_siteterms_config`
--

DROP TABLE IF EXISTS `ytt_en_siteterms_config`;
CREATE TABLE `ytt_en_siteterms_config` (
  `config_name` varchar(30)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_en_siteterms_config`
--

INSERT INTO `ytt_en_siteterms_config` VALUES
('viewtype', '0'), 
('facebookapi', ''), 
('per_page', '20'), 
('news_first', '0'), 
('related_articles', '5'), 
('copy_page', '0');


-- ---------------------------------------


--
-- Table structure for table `ytt_en_voting`
--

DROP TABLE IF EXISTS `ytt_en_voting`;
CREATE TABLE `ytt_en_voting` (
  `vid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT '1',
  `active_captcha` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  UNIQUE KEY `question` (`question`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_en_voting_rows`
--

DROP TABLE IF EXISTS `ytt_en_voting_rows`;
CREATE TABLE `ytt_en_voting_rows` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vid` smallint(5) unsigned NOT NULL,
  `title` varchar(245)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `vid` (`vid`,`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_extension_files`
--

DROP TABLE IF EXISTS `ytt_extension_files`;
CREATE TABLE `ytt_extension_files` (
  `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) unsigned NOT NULL DEFAULT '0',
  `duplicate` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`idfile`)
) ENGINE=MyISAM  AUTO_INCREMENT=953  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_extension_files`
--

INSERT INTO `ytt_extension_files` VALUES
(1, 'module', 'shops', 'themes/admin_default/css/shops.css', 1493308835, 0), 
(2, 'module', 'shops', 'themes/admin_default/js/content.js', 1493308835, 0), 
(3, 'module', 'shops', 'themes/admin_default/js/shops.js', 1493308835, 0), 
(4, 'module', 'shops', 'themes/admin_default/modules/shops/.htaccess', 1493308835, 0), 
(5, 'module', 'shops', 'themes/admin_default/modules/shops/block.tpl', 1493308835, 0), 
(6, 'module', 'shops', 'themes/admin_default/modules/shops/blockcat.tpl', 1493308835, 0), 
(7, 'module', 'shops', 'themes/admin_default/modules/shops/block_cat_list.tpl', 1493308835, 0), 
(8, 'module', 'shops', 'themes/admin_default/modules/shops/block_list.tpl', 1493308835, 0), 
(9, 'module', 'shops', 'themes/admin_default/modules/shops/carrier.tpl', 1493308835, 0), 
(10, 'module', 'shops', 'themes/admin_default/modules/shops/carrier_config.tpl', 1493308835, 0), 
(11, 'module', 'shops', 'themes/admin_default/modules/shops/carrier_config_items.tpl', 1493308835, 0), 
(12, 'module', 'shops', 'themes/admin_default/modules/shops/cat_add.tpl', 1493308835, 0), 
(13, 'module', 'shops', 'themes/admin_default/modules/shops/cat_delete.tpl', 1493308835, 0), 
(14, 'module', 'shops', 'themes/admin_default/modules/shops/cat_lists.tpl', 1493308835, 0), 
(15, 'module', 'shops', 'themes/admin_default/modules/shops/content.tpl', 1493308835, 0), 
(16, 'module', 'shops', 'themes/admin_default/modules/shops/coupons.tpl', 1493308835, 0), 
(17, 'module', 'shops', 'themes/admin_default/modules/shops/coupons_view.tpl', 1493308835, 0), 
(18, 'module', 'shops', 'themes/admin_default/modules/shops/discounts.tpl', 1493308835, 0), 
(19, 'module', 'shops', 'themes/admin_default/modules/shops/docpay.tpl', 1493308835, 0), 
(20, 'module', 'shops', 'themes/admin_default/modules/shops/download.tpl', 1493308835, 0), 
(21, 'module', 'shops', 'themes/admin_default/modules/shops/email_new_order_payment.tpl', 1493308835, 0), 
(22, 'module', 'shops', 'themes/admin_default/modules/shops/fields.tpl', 1493308835, 0), 
(23, 'module', 'shops', 'themes/admin_default/modules/shops/field_tab.tpl', 1493308835, 0), 
(24, 'module', 'shops', 'themes/admin_default/modules/shops/getprice.tpl', 1493308835, 0), 
(25, 'module', 'shops', 'themes/admin_default/modules/shops/group_add.tpl', 1493308835, 0), 
(26, 'module', 'shops', 'themes/admin_default/modules/shops/group_delete.tpl', 1493308835, 0), 
(27, 'module', 'shops', 'themes/admin_default/modules/shops/group_lists.tpl', 1493308835, 0), 
(28, 'module', 'shops', 'themes/admin_default/modules/shops/index.html', 1493308835, 0), 
(29, 'module', 'shops', 'themes/admin_default/modules/shops/items.tpl', 1493308835, 0), 
(30, 'module', 'shops', 'themes/admin_default/modules/shops/location.tpl', 1493308835, 0), 
(31, 'module', 'shops', 'themes/admin_default/modules/shops/location_lists.tpl', 1493308835, 0), 
(32, 'module', 'shops', 'themes/admin_default/modules/shops/main.tpl', 1493308835, 0), 
(33, 'module', 'shops', 'themes/admin_default/modules/shops/money.tpl', 1493308835, 0), 
(34, 'module', 'shops', 'themes/admin_default/modules/shops/order.tpl', 1493308835, 0), 
(35, 'module', 'shops', 'themes/admin_default/modules/shops/order_seller.tpl', 1493308835, 0), 
(36, 'module', 'shops', 'themes/admin_default/modules/shops/or_view.tpl', 1493308835, 0), 
(37, 'module', 'shops', 'themes/admin_default/modules/shops/payport.tpl', 1493308835, 0), 
(38, 'module', 'shops', 'themes/admin_default/modules/shops/point.tpl', 1493308835, 0), 
(39, 'module', 'shops', 'themes/admin_default/modules/shops/print.tpl', 1493308835, 0), 
(40, 'module', 'shops', 'themes/admin_default/modules/shops/prounit.tpl', 1493308835, 0), 
(41, 'module', 'shops', 'themes/admin_default/modules/shops/review.tpl', 1493308835, 0), 
(42, 'module', 'shops', 'themes/admin_default/modules/shops/seller.tpl', 1493308835, 0), 
(43, 'module', 'shops', 'themes/admin_default/modules/shops/setting.tpl', 1493308835, 0), 
(44, 'module', 'shops', 'themes/admin_default/modules/shops/shipping.tpl', 1493308835, 0), 
(45, 'module', 'shops', 'themes/admin_default/modules/shops/shipping_menu.tpl', 1493308835, 0), 
(46, 'module', 'shops', 'themes/admin_default/modules/shops/shops.tpl', 1493308835, 0), 
(47, 'module', 'shops', 'themes/admin_default/modules/shops/tabs.tpl', 1493308835, 0), 
(48, 'module', 'shops', 'themes/admin_default/modules/shops/tags.tpl', 1493308835, 0), 
(49, 'module', 'shops', 'themes/admin_default/modules/shops/tags_lists.tpl', 1493308835, 0), 
(50, 'module', 'shops', 'themes/admin_default/modules/shops/template.tpl', 1493308835, 0), 
(51, 'module', 'shops', 'themes/admin_default/modules/shops/topics.tpl', 1493308835, 0), 
(52, 'module', 'shops', 'themes/admin_default/modules/shops/updateprice.tpl', 1493308835, 0), 
(53, 'module', 'shops', 'themes/admin_default/modules/shops/warehouse.tpl', 1493308835, 0), 
(54, 'module', 'shops', 'themes/admin_default/modules/shops/warehouse_logs.tpl', 1493308835, 0), 
(55, 'module', 'shops', 'themes/admin_default/modules/shops/weight.tpl', 1493308835, 0), 
(56, 'module', 'shops', 'themes/default/css/jquery.bxslider.css', 1493308835, 0), 
(57, 'module', 'shops', 'themes/default/css/shops.css', 1493308835, 0), 
(58, 'module', 'shops', 'themes/default/images/shops/24x24-no.png', 1493308835, 0), 
(59, 'module', 'shops', 'themes/default/images/shops/access_head_bg.png', 1493308835, 0), 
(60, 'module', 'shops', 'themes/default/images/shops/ajax-loader.gif', 1493308835, 0), 
(61, 'module', 'shops', 'themes/default/images/shops/bgbt.png', 1493308835, 0), 
(62, 'module', 'shops', 'themes/default/images/shops/bg_divtab.png', 1493308835, 0), 
(63, 'module', 'shops', 'themes/default/images/shops/bl.png', 1493308835, 0), 
(64, 'module', 'shops', 'themes/default/images/shops/br.png', 1493308835, 0), 
(65, 'module', 'shops', 'themes/default/images/shops/buzz.png', 1493308835, 0), 
(66, 'module', 'shops', 'themes/default/images/shops/controls.png', 1493308835, 0), 
(67, 'module', 'shops', 'themes/default/images/shops/flickr.png', 1493308835, 0), 
(68, 'module', 'shops', 'themes/default/images/shops/google.png', 1493308835, 0), 
(69, 'module', 'shops', 'themes/default/images/shops/icon_files/doc.png', 1493308835, 0), 
(70, 'module', 'shops', 'themes/default/images/shops/icon_files/document.png', 1493308835, 0), 
(71, 'module', 'shops', 'themes/default/images/shops/icon_files/docx.png', 1493308835, 0), 
(72, 'module', 'shops', 'themes/default/images/shops/icon_files/odt.png', 1493308835, 0), 
(73, 'module', 'shops', 'themes/default/images/shops/icon_files/pdf.png', 1493308835, 0), 
(74, 'module', 'shops', 'themes/default/images/shops/icon_files/ppt.png', 1493308835, 0), 
(75, 'module', 'shops', 'themes/default/images/shops/icon_files/pptx.png', 1493308835, 0), 
(76, 'module', 'shops', 'themes/default/images/shops/icon_files/rar.png', 1493308835, 0), 
(77, 'module', 'shops', 'themes/default/images/shops/icon_files/xsl.png', 1493308835, 0), 
(78, 'module', 'shops', 'themes/default/images/shops/icon_files/xslx.png', 1493308835, 0), 
(79, 'module', 'shops', 'themes/default/images/shops/icon_files/zip.png', 1493308835, 0), 
(80, 'module', 'shops', 'themes/default/images/shops/index.html', 1493308835, 0), 
(81, 'module', 'shops', 'themes/default/images/shops/no-image.jpg', 1493308835, 0), 
(82, 'module', 'shops', 'themes/default/images/shops/previous-next.png', 1493308835, 0), 
(83, 'module', 'shops', 'themes/default/images/shops/print.png', 1493308835, 0), 
(84, 'module', 'shops', 'themes/default/images/shops/pro_cat_header.png', 1493308835, 0), 
(85, 'module', 'shops', 'themes/default/images/shops/pro_tab.png', 1493308835, 0), 
(86, 'module', 'shops', 'themes/default/images/shops/rate/rate-btn2-hover.png', 1493308835, 0), 
(87, 'module', 'shops', 'themes/default/images/shops/rate/rate-btn2.png', 1493308835, 0), 
(88, 'module', 'shops', 'themes/default/images/shops/rate/rate-btn3-hover.png', 1493308835, 0), 
(89, 'module', 'shops', 'themes/default/images/shops/rate/rate-stars.png', 1493308835, 0), 
(90, 'module', 'shops', 'themes/default/images/shops/square.jpg', 1493308835, 0), 
(91, 'module', 'shops', 'themes/default/images/shops/star-png.png', 1493308835, 0), 
(92, 'module', 'shops', 'themes/default/images/shops/star.png', 1493308835, 0), 
(93, 'module', 'shops', 'themes/default/images/shops/twitter.png', 1493308835, 0), 
(94, 'module', 'shops', 'themes/default/images/shops/zoom-img.png', 1493308835, 0), 
(95, 'module', 'shops', 'themes/default/js/jquery.bxslider.min.js', 1493308835, 0), 
(96, 'module', 'shops', 'themes/default/js/responsiveCarousel.min.js', 1493308835, 0), 
(97, 'module', 'shops', 'themes/default/js/shops.js', 1493308835, 0), 
(98, 'module', 'shops', 'themes/default/modules/shops/.htaccess', 1493308835, 0), 
(99, 'module', 'shops', 'themes/default/modules/shops/block.bxproduct_center.tpl', 1493308835, 0), 
(100, 'module', 'shops', 'themes/default/modules/shops/block.cart.tpl', 1493308835, 0), 
(101, 'module', 'shops', 'themes/default/modules/shops/block.catalogsv.tpl', 1493308835, 0), 
(102, 'module', 'shops', 'themes/default/modules/shops/block.filter_product.tpl', 1493308835, 0), 
(103, 'module', 'shops', 'themes/default/modules/shops/block.filter_product_cat.tpl', 1493308835, 0), 
(104, 'module', 'shops', 'themes/default/modules/shops/block.others_product.tpl', 1493308835, 0), 
(105, 'module', 'shops', 'themes/default/modules/shops/block.price_view.tpl', 1493308835, 0), 
(106, 'module', 'shops', 'themes/default/modules/shops/block.product_center.tpl', 1493308835, 0), 
(107, 'module', 'shops', 'themes/default/modules/shops/block.search.tpl', 1493308835, 0), 
(108, 'module', 'shops', 'themes/default/modules/shops/blockcat.tpl', 1493308835, 0), 
(109, 'module', 'shops', 'themes/default/modules/shops/cart.tpl', 1493308835, 0), 
(110, 'module', 'shops', 'themes/default/modules/shops/compare.tpl', 1493308835, 0), 
(111, 'module', 'shops', 'themes/default/modules/shops/coupons_info.tpl', 1493308835, 0), 
(112, 'module', 'shops', 'themes/default/modules/shops/detail.tpl', 1493308835, 0), 
(113, 'module', 'shops', 'themes/default/modules/shops/download_content.tpl', 1493308835, 0), 
(114, 'module', 'shops', 'themes/default/modules/shops/email_new_order.tpl', 1493308835, 0), 
(115, 'module', 'shops', 'themes/default/modules/shops/history_order.tpl', 1493308835, 0), 
(116, 'module', 'shops', 'themes/default/modules/shops/index.html', 1493308835, 0), 
(117, 'module', 'shops', 'themes/default/modules/shops/main_procate.tpl', 1493308835, 0), 
(118, 'module', 'shops', 'themes/default/modules/shops/main_product.tpl', 1493308835, 0), 
(119, 'module', 'shops', 'themes/default/modules/shops/order.tpl', 1493308835, 0), 
(120, 'module', 'shops', 'themes/default/modules/shops/othersimg.tpl', 1493308835, 0), 
(121, 'module', 'shops', 'themes/default/modules/shops/payment.tpl', 1493308835, 0), 
(122, 'module', 'shops', 'themes/default/modules/shops/point.tpl', 1493308835, 0), 
(123, 'module', 'shops', 'themes/default/modules/shops/print.tpl', 1493308835, 0), 
(124, 'module', 'shops', 'themes/default/modules/shops/print_pro.tpl', 1493308835, 0), 
(125, 'module', 'shops', 'themes/default/modules/shops/review_content.tpl', 1493308835, 0), 
(126, 'module', 'shops', 'themes/default/modules/shops/review_list.tpl', 1493308835, 0), 
(127, 'module', 'shops', 'themes/default/modules/shops/search.tpl', 1493308835, 0), 
(128, 'module', 'shops', 'themes/default/modules/shops/search_all.tpl', 1493308835, 0), 
(129, 'module', 'shops', 'themes/default/modules/shops/view_gird.tpl', 1493308835, 0), 
(130, 'module', 'shops', 'themes/default/modules/shops/view_list.tpl', 1493308835, 0), 
(131, 'module', 'shops', 'themes/default/modules/shops/wishlist.tpl', 1493308835, 0), 
(132, 'module', 'shops', 'uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1493308835, 0), 
(133, 'module', 'shops', 'assets/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1493308835, 0), 
(134, 'module', 'shops', 'modules/shops/action_mysql.php', 1493308835, 0), 
(135, 'module', 'shops', 'modules/shops/admin/.htaccess', 1493308835, 0), 
(136, 'module', 'shops', 'modules/shops/admin/active_pay.php', 1493308835, 0), 
(137, 'module', 'shops', 'modules/shops/admin/actpay.php', 1493308835, 0), 
(138, 'module', 'shops', 'modules/shops/admin/alias.php', 1493308835, 0), 
(139, 'module', 'shops', 'modules/shops/admin/block.php', 1493308835, 0), 
(140, 'module', 'shops', 'modules/shops/admin/blockcat.php', 1493308835, 0), 
(141, 'module', 'shops', 'modules/shops/admin/carrier.php', 1493308835, 0), 
(142, 'module', 'shops', 'modules/shops/admin/carrier_config.php', 1493308835, 0), 
(143, 'module', 'shops', 'modules/shops/admin/carrier_config_items.php', 1493308835, 0), 
(144, 'module', 'shops', 'modules/shops/admin/cat.php', 1493308835, 0), 
(145, 'module', 'shops', 'modules/shops/admin/changepay.php', 1493308835, 0), 
(146, 'module', 'shops', 'modules/shops/admin/change_block.php', 1493308835, 0), 
(147, 'module', 'shops', 'modules/shops/admin/change_cat.php', 1493308835, 0), 
(148, 'module', 'shops', 'modules/shops/admin/change_group.php', 1493308835, 0), 
(149, 'module', 'shops', 'modules/shops/admin/change_location.php', 1493308835, 0), 
(150, 'module', 'shops', 'modules/shops/admin/change_source.php', 1493308835, 0), 
(151, 'module', 'shops', 'modules/shops/admin/chang_block_cat.php', 1493308835, 0), 
(152, 'module', 'shops', 'modules/shops/admin/content.php', 1493308835, 0), 
(153, 'module', 'shops', 'modules/shops/admin/coupons.php', 1493308835, 0), 
(154, 'module', 'shops', 'modules/shops/admin/coupons_view.php', 1493308835, 0), 
(155, 'module', 'shops', 'modules/shops/admin/custom_form.php', 1493308835, 0), 
(156, 'module', 'shops', 'modules/shops/admin/delmoney.php', 1493308835, 0), 
(157, 'module', 'shops', 'modules/shops/admin/delunit.php', 1493308835, 0), 
(158, 'module', 'shops', 'modules/shops/admin/delweight.php', 1493308835, 0), 
(159, 'module', 'shops', 'modules/shops/admin/del_block_cat.php', 1493308835, 0), 
(160, 'module', 'shops', 'modules/shops/admin/del_cat.php', 1493308835, 0), 
(161, 'module', 'shops', 'modules/shops/admin/del_content.php', 1493308835, 0), 
(162, 'module', 'shops', 'modules/shops/admin/del_group.php', 1493308835, 0), 
(163, 'module', 'shops', 'modules/shops/admin/del_location.php', 1493308835, 0), 
(164, 'module', 'shops', 'modules/shops/admin/del_source.php', 1493308835, 0), 
(165, 'module', 'shops', 'modules/shops/admin/detemplate.php', 1493308835, 0), 
(166, 'module', 'shops', 'modules/shops/admin/discounts.php', 1493308835, 0), 
(167, 'module', 'shops', 'modules/shops/admin/docpay.php', 1493308835, 0), 
(168, 'module', 'shops', 'modules/shops/admin/download.php', 1493308835, 0), 
(169, 'module', 'shops', 'modules/shops/admin/exptime.php', 1493308835, 0), 
(170, 'module', 'shops', 'modules/shops/admin/fields.php', 1493308835, 0), 
(171, 'module', 'shops', 'modules/shops/admin/field_tab.php', 1493308835, 0), 
(172, 'module', 'shops', 'modules/shops/admin/getcatalog.php', 1493308835, 0), 
(173, 'module', 'shops', 'modules/shops/admin/getgroup.php', 1493308835, 0), 
(174, 'module', 'shops', 'modules/shops/admin/getprice.php', 1493308835, 0), 
(175, 'module', 'shops', 'modules/shops/admin/group.php', 1493308835, 0), 
(176, 'module', 'shops', 'modules/shops/admin/index.html', 1493308835, 0), 
(177, 'module', 'shops', 'modules/shops/admin/items.php', 1493308835, 0), 
(178, 'module', 'shops', 'modules/shops/admin/keywords.php', 1493308835, 0), 
(179, 'module', 'shops', 'modules/shops/admin/list_block.php', 1493308835, 0), 
(180, 'module', 'shops', 'modules/shops/admin/list_block_cat.php', 1493308835, 0), 
(181, 'module', 'shops', 'modules/shops/admin/list_cat.php', 1493308835, 0), 
(182, 'module', 'shops', 'modules/shops/admin/list_group.php', 1493308835, 0), 
(183, 'module', 'shops', 'modules/shops/admin/list_location.php', 1493308835, 0), 
(184, 'module', 'shops', 'modules/shops/admin/location.php', 1493308835, 0), 
(185, 'module', 'shops', 'modules/shops/admin/main.php', 1493308835, 0), 
(186, 'module', 'shops', 'modules/shops/admin/money.php', 1493308835, 0), 
(187, 'module', 'shops', 'modules/shops/admin/order.php', 1493308835, 0), 
(188, 'module', 'shops', 'modules/shops/admin/order_seller.php', 1493308835, 0), 
(189, 'module', 'shops', 'modules/shops/admin/or_del.php', 1493308835, 0), 
(190, 'module', 'shops', 'modules/shops/admin/or_view.php', 1493308835, 0), 
(191, 'module', 'shops', 'modules/shops/admin/payport.php', 1493308835, 0), 
(192, 'module', 'shops', 'modules/shops/admin/point.php', 1493308835, 0), 
(193, 'module', 'shops', 'modules/shops/admin/print.php', 1493308835, 0), 
(194, 'module', 'shops', 'modules/shops/admin/prounit.php', 1493308835, 0), 
(195, 'module', 'shops', 'modules/shops/admin/publtime.php', 1493308835, 0), 
(196, 'module', 'shops', 'modules/shops/admin/review.php', 1493308835, 0), 
(197, 'module', 'shops', 'modules/shops/admin/seller.php', 1493308835, 0), 
(198, 'module', 'shops', 'modules/shops/admin/setting.php', 1493308835, 0), 
(199, 'module', 'shops', 'modules/shops/admin/shipping.php', 1493308835, 0), 
(200, 'module', 'shops', 'modules/shops/admin/shops.php', 1493308835, 0), 
(201, 'module', 'shops', 'modules/shops/admin/tabs.php', 1493308835, 0), 
(202, 'module', 'shops', 'modules/shops/admin/tags.php', 1493308835, 0), 
(203, 'module', 'shops', 'modules/shops/admin/tagsajax.php', 1493308835, 0), 
(204, 'module', 'shops', 'modules/shops/admin/template.php', 1493308835, 0), 
(205, 'module', 'shops', 'modules/shops/admin/updateprice.php', 1493308835, 0), 
(206, 'module', 'shops', 'modules/shops/admin/view.php', 1493308835, 0), 
(207, 'module', 'shops', 'modules/shops/admin/warehouse.php', 1493308835, 0), 
(208, 'module', 'shops', 'modules/shops/admin/warehouse_logs.php', 1493308835, 0), 
(209, 'module', 'shops', 'modules/shops/admin/weight.php', 1493308835, 0), 
(210, 'module', 'shops', 'modules/shops/admin.functions.php', 1493308835, 0), 
(211, 'module', 'shops', 'modules/shops/admin.menu.php', 1493308835, 0), 
(212, 'module', 'shops', 'modules/shops/blocks/.htaccess', 1493308835, 0), 
(213, 'module', 'shops', 'modules/shops/blocks/global.block_bxproduct_center.ini', 1493308835, 0), 
(214, 'module', 'shops', 'modules/shops/blocks/global.block_bxproduct_center.php', 1493308835, 0), 
(215, 'module', 'shops', 'modules/shops/blocks/global.block_cart.php', 1493308835, 0), 
(216, 'module', 'shops', 'modules/shops/blocks/global.block_catalogs.ini', 1493308835, 0), 
(217, 'module', 'shops', 'modules/shops/blocks/global.block_catalogs.php', 1493308835, 0), 
(218, 'module', 'shops', 'modules/shops/blocks/global.block_price_view.ini', 1493308835, 0), 
(219, 'module', 'shops', 'modules/shops/blocks/global.block_price_view.php', 1493308835, 0), 
(220, 'module', 'shops', 'modules/shops/blocks/global.block_product_center.ini', 1493308835, 0), 
(221, 'module', 'shops', 'modules/shops/blocks/global.block_product_center.php', 1493308835, 0), 
(222, 'module', 'shops', 'modules/shops/blocks/global.block_relates_product.ini', 1493308835, 0), 
(223, 'module', 'shops', 'modules/shops/blocks/global.block_relates_product.php', 1493308835, 0), 
(224, 'module', 'shops', 'modules/shops/blocks/global.block_search.php', 1493308835, 0), 
(225, 'module', 'shops', 'modules/shops/blocks/index.html', 1493308835, 0), 
(226, 'module', 'shops', 'modules/shops/blocks/module.block_filter_product.ini', 1493308835, 0), 
(227, 'module', 'shops', 'modules/shops/blocks/module.block_filter_product.php', 1493308835, 0), 
(228, 'module', 'shops', 'modules/shops/blocks/module.block_filter_product_cat.ini', 1493308835, 0), 
(229, 'module', 'shops', 'modules/shops/blocks/module.block_filter_product_cat.php', 1493308835, 0), 
(230, 'module', 'shops', 'modules/shops/blocks/module.block_others_product.php', 1493308835, 0), 
(231, 'module', 'shops', 'modules/shops/blocks/module.block_product_center.php', 1493308835, 0), 
(232, 'module', 'shops', 'modules/shops/comment.php', 1493308835, 0), 
(233, 'module', 'shops', 'modules/shops/fields.check.php', 1493308835, 0), 
(234, 'module', 'shops', 'modules/shops/funcs/.htaccess', 1493308835, 0), 
(235, 'module', 'shops', 'modules/shops/funcs/blockcat.php', 1493308835, 0), 
(236, 'module', 'shops', 'modules/shops/funcs/cart.php', 1493308835, 0), 
(237, 'module', 'shops', 'modules/shops/funcs/checkorder.php', 1493308835, 0), 
(238, 'module', 'shops', 'modules/shops/funcs/compare.php', 1493308835, 0), 
(239, 'module', 'shops', 'modules/shops/funcs/complete.php', 1493308835, 0), 
(240, 'module', 'shops', 'modules/shops/funcs/delhis.php', 1493308835, 0), 
(241, 'module', 'shops', 'modules/shops/funcs/detail.php', 1493308835, 0), 
(242, 'module', 'shops', 'modules/shops/funcs/download.php', 1493308835, 0), 
(243, 'module', 'shops', 'modules/shops/funcs/group.php', 1493308835, 0), 
(244, 'module', 'shops', 'modules/shops/funcs/history.php', 1493308835, 0), 
(245, 'module', 'shops', 'modules/shops/funcs/index.html', 1493308835, 0), 
(246, 'module', 'shops', 'modules/shops/funcs/loadcart.php', 1493308835, 0), 
(247, 'module', 'shops', 'modules/shops/funcs/main.php', 1493308835, 0), 
(248, 'module', 'shops', 'modules/shops/funcs/order.php', 1493308835, 0), 
(249, 'module', 'shops', 'modules/shops/funcs/payment.php', 1493308835, 0), 
(250, 'module', 'shops', 'modules/shops/funcs/point.php', 1493308835, 0), 
(251, 'module', 'shops', 'modules/shops/funcs/print.php', 1493308835, 0), 
(252, 'module', 'shops', 'modules/shops/funcs/print_pro.php', 1493308835, 0), 
(253, 'module', 'shops', 'modules/shops/funcs/remove.php', 1493308835, 0), 
(254, 'module', 'shops', 'modules/shops/funcs/review.php', 1493308835, 0), 
(255, 'module', 'shops', 'modules/shops/funcs/rss.php', 1493308835, 0), 
(256, 'module', 'shops', 'modules/shops/funcs/search.php', 1493308835, 0), 
(257, 'module', 'shops', 'modules/shops/funcs/search_result.php', 1493308835, 0), 
(258, 'module', 'shops', 'modules/shops/funcs/sendmail.php', 1493308835, 0), 
(259, 'module', 'shops', 'modules/shops/funcs/setcart.php', 1493308835, 0), 
(260, 'module', 'shops', 'modules/shops/funcs/shippingajax.php', 1493308835, 0), 
(261, 'module', 'shops', 'modules/shops/funcs/sitemap.php', 1493308835, 0), 
(262, 'module', 'shops', 'modules/shops/funcs/tag.php', 1493308835, 0), 
(263, 'module', 'shops', 'modules/shops/funcs/viewcat.php', 1493308835, 0), 
(264, 'module', 'shops', 'modules/shops/funcs/wishlist.php', 1493308835, 0), 
(265, 'module', 'shops', 'modules/shops/funcs/wishlist_update.php', 1493308835, 0), 
(266, 'module', 'shops', 'modules/shops/functions.php', 1493308835, 0), 
(267, 'module', 'shops', 'modules/shops/global.functions.php', 1493308835, 0), 
(268, 'module', 'shops', 'modules/shops/index.html', 1493308835, 0), 
(269, 'module', 'shops', 'modules/shops/language/.htaccess', 1493308835, 0), 
(270, 'module', 'shops', 'modules/shops/language/admin_en.php', 1493308835, 0), 
(271, 'module', 'shops', 'modules/shops/language/admin_vi.php', 1493308835, 0), 
(272, 'module', 'shops', 'modules/shops/language/data_vi.php', 1493308835, 0), 
(273, 'module', 'shops', 'modules/shops/language/en.php', 1493308835, 0), 
(274, 'module', 'shops', 'modules/shops/language/index.html', 1493308835, 0), 
(275, 'module', 'shops', 'modules/shops/language/vi.php', 1493308835, 0), 
(276, 'module', 'shops', 'modules/shops/menu.php', 1493308835, 0), 
(277, 'module', 'shops', 'modules/shops/notification.php', 1493308835, 0), 
(278, 'module', 'shops', 'modules/shops/payment/.htaccess', 1493308835, 0), 
(279, 'module', 'shops', 'modules/shops/payment/baokim.checkorders.php', 1493308835, 0), 
(280, 'module', 'shops', 'modules/shops/payment/baokim.checkout_url.php', 1493308835, 0), 
(281, 'module', 'shops', 'modules/shops/payment/baokim.class.php', 1493308835, 0), 
(282, 'module', 'shops', 'modules/shops/payment/baokim.complete.php', 1493308835, 0), 
(283, 'module', 'shops', 'modules/shops/payment/baokim.config.ini', 1493308835, 0), 
(284, 'module', 'shops', 'modules/shops/payment/index.html', 1493308835, 0), 
(285, 'module', 'shops', 'modules/shops/payment/onepaydomestic.checkorders.php', 1493308835, 0), 
(286, 'module', 'shops', 'modules/shops/payment/onepaydomestic.checkout_url.php', 1493308835, 0), 
(287, 'module', 'shops', 'modules/shops/payment/onepaydomestic.complete.php', 1493308835, 0), 
(288, 'module', 'shops', 'modules/shops/payment/onepaydomestic.config.ini', 1493308835, 0), 
(289, 'module', 'shops', 'modules/shops/payment/paypal_express_checkout.checkorders.php', 1493308835, 0), 
(290, 'module', 'shops', 'modules/shops/payment/paypal_express_checkout.checkout_url.php', 1493308835, 0), 
(291, 'module', 'shops', 'modules/shops/payment/paypal_express_checkout.complete.php', 1493308835, 0), 
(292, 'module', 'shops', 'modules/shops/payment/paypal_express_checkout.config.ini', 1493308835, 0), 
(293, 'module', 'shops', 'modules/shops/rssdata.php', 1493308835, 0), 
(294, 'module', 'shops', 'modules/shops/search.php', 1493308835, 0), 
(295, 'module', 'shops', 'modules/shops/site.functions.php', 1493308835, 0), 
(296, 'module', 'shops', 'modules/shops/siteinfo.php', 1493308835, 0), 
(297, 'module', 'shops', 'modules/shops/theme.php', 1493308835, 0), 
(298, 'module', 'shops', 'modules/shops/version.php', 1493308835, 0), 
(299, 'module', 'slider', 'modules/slider/action_mysql.php', 1493351400, 0), 
(300, 'module', 'slider', 'modules/slider/admin/alias.php', 1493351400, 0), 
(301, 'module', 'slider', 'modules/slider/admin/cat.php', 1493351400, 0), 
(302, 'module', 'slider', 'modules/slider/admin/change_cat.php', 1493351400, 0), 
(303, 'module', 'slider', 'modules/slider/admin/content.php', 1493351400, 0), 
(304, 'module', 'slider', 'modules/slider/admin/declined.php', 1493351400, 0), 
(305, 'module', 'slider', 'modules/slider/admin/del_cat.php', 1493351400, 0), 
(306, 'module', 'slider', 'modules/slider/admin/del_content.php', 1493351400, 0), 
(307, 'module', 'slider', 'modules/slider/admin/exptime.php', 1493351400, 0), 
(308, 'module', 'slider', 'modules/slider/admin/index.html', 1493351400, 0), 
(309, 'module', 'slider', 'modules/slider/admin/list_cat.php', 1493351400, 0), 
(310, 'module', 'slider', 'modules/slider/admin/main.php', 1493351400, 0), 
(311, 'module', 'slider', 'modules/slider/admin/publtime.php', 1493351400, 0), 
(312, 'module', 'slider', 'modules/slider/admin/re-published.php', 1493351400, 0), 
(313, 'module', 'slider', 'modules/slider/admin/rpc.php', 1493351400, 0), 
(314, 'module', 'slider', 'modules/slider/admin/setting.php', 1493351400, 0), 
(315, 'module', 'slider', 'modules/slider/admin/tools.php', 1493351400, 0), 
(316, 'module', 'slider', 'modules/slider/admin/view.php', 1493351400, 0), 
(317, 'module', 'slider', 'modules/slider/admin/waiting.php', 1493351400, 0), 
(318, 'module', 'slider', 'modules/slider/admin.functions.php', 1493351400, 0), 
(319, 'module', 'slider', 'modules/slider/admin.menu.php', 1493351400, 0), 
(320, 'module', 'slider', 'modules/slider/blocks/global.block_slider_cat.ini', 1493351400, 0), 
(321, 'module', 'slider', 'modules/slider/blocks/global.block_slider_cat.php', 1493351400, 0), 
(322, 'module', 'slider', 'modules/slider/blocks/index.html', 1493351400, 0), 
(323, 'module', 'slider', 'modules/slider/funcs/index.html', 1493351400, 0), 
(324, 'module', 'slider', 'modules/slider/funcs/main.php', 1493351400, 0), 
(325, 'module', 'slider', 'modules/slider/funcs/rss.php', 1493351400, 0), 
(326, 'module', 'slider', 'modules/slider/funcs/sitemap.php', 1493351400, 0), 
(327, 'module', 'slider', 'modules/slider/functions.php', 1493351400, 0), 
(328, 'module', 'slider', 'modules/slider/global.functions.php', 1493351400, 0), 
(329, 'module', 'slider', 'modules/slider/index.html', 1493351400, 0), 
(330, 'module', 'slider', 'modules/slider/language/admin_en.php', 1493351400, 0), 
(331, 'module', 'slider', 'modules/slider/language/admin_vi.php', 1493351400, 0), 
(332, 'module', 'slider', 'modules/slider/language/block.global.block_slider_cat_en.php', 1493351400, 0), 
(333, 'module', 'slider', 'modules/slider/language/block.global.block_slider_cat_vi.php', 1493351400, 0), 
(334, 'module', 'slider', 'modules/slider/language/en.php', 1493351400, 0), 
(335, 'module', 'slider', 'modules/slider/language/index.html', 1493351400, 0), 
(336, 'module', 'slider', 'modules/slider/language/vi.php', 1493351400, 0), 
(337, 'module', 'slider', 'modules/slider/mobile/index.html', 1493351400, 0), 
(338, 'module', 'slider', 'modules/slider/rssdata.php', 1493351400, 0), 
(339, 'module', 'slider', 'modules/slider/siteinfo.php', 1493351400, 0), 
(340, 'module', 'slider', 'modules/slider/version.php', 1493351400, 0), 
(341, 'module', 'slider', 'themes/default/modules/slider/block_cat.tpl', 1493351400, 0), 
(342, 'module', 'slider', 'themes/default/modules/slider/block_doitac.tpl', 1493351400, 0), 
(343, 'module', 'slider', 'themes/default/modules/slider/block_skitter.tpl', 1493351400, 0), 
(344, 'module', 'slider', 'themes/default/modules/slider/index.html', 1493351400, 0), 
(345, 'module', 'slider', 'themes/default/css/slider.css', 1493351400, 0), 
(346, 'module', 'slider', 'themes/default/images/slider/index.html', 1493351400, 0), 
(347, 'module', 'slider', 'themes/default/images/slider/new.gif', 1493351400, 0), 
(348, 'module', 'slider', 'themes/default/images/slider/ribbon.png', 1493351400, 0), 
(349, 'module', 'slider', 'themes/default/images/slider/Thumbs.db', 1493351400, 0), 
(350, 'module', 'slider', 'themes/admin_default/css/slider.css', 1493351400, 0), 
(351, 'module', 'slider', 'themes/admin_default/js/slider.js', 1493351400, 0), 
(352, 'module', 'slider', 'themes/admin_default/js/slider_content.js', 1493351400, 0), 
(353, 'module', 'slider', 'themes/admin_default/modules/slider/cat.tpl', 1493351400, 0), 
(354, 'module', 'slider', 'themes/admin_default/modules/slider/cat_list.tpl', 1493351400, 0), 
(355, 'module', 'slider', 'themes/admin_default/modules/slider/content.tpl', 1493351400, 0), 
(356, 'module', 'slider', 'themes/admin_default/modules/slider/del_cat.tpl', 1493351400, 0), 
(357, 'module', 'slider', 'themes/admin_default/modules/slider/index.html', 1493351400, 0), 
(358, 'module', 'slider', 'themes/admin_default/modules/slider/main.tpl', 1493351400, 0), 
(359, 'module', 'slider', 'themes/admin_default/modules/slider/redriect.tpl', 1493351400, 0), 
(360, 'module', 'slider', 'themes/admin_default/modules/slider/settings.tpl', 1493351400, 0), 
(361, 'module', 'slider', 'themes/admin_default/modules/slider/tools.tpl', 1493351400, 0), 
(370, 'module', 'download', 'assets/js/pdf.js/cmaps/78-RKSJ-V.bcmap', 1493387755, 0), 
(371, 'module', 'download', 'assets/js/pdf.js/cmaps/78-V.bcmap', 1493387755, 0), 
(369, 'module', 'download', 'assets/js/pdf.js/cmaps/78-RKSJ-H.bcmap', 1493387755, 0), 
(367, 'module', 'download', 'assets/js/pdf.js/cmaps/78-EUC-V.bcmap', 1493387755, 0), 
(368, 'module', 'download', 'assets/js/pdf.js/cmaps/78-H.bcmap', 1493387755, 0), 
(366, 'module', 'download', 'assets/js/pdf.js/cmaps/78-EUC-H.bcmap', 1493387755, 0), 
(372, 'module', 'download', 'assets/js/pdf.js/cmaps/78ms-RKSJ-H.bcmap', 1493387755, 0), 
(373, 'module', 'download', 'assets/js/pdf.js/cmaps/78ms-RKSJ-V.bcmap', 1493387755, 0), 
(374, 'module', 'download', 'assets/js/pdf.js/cmaps/83pv-RKSJ-H.bcmap', 1493387755, 0), 
(375, 'module', 'download', 'assets/js/pdf.js/cmaps/90ms-RKSJ-H.bcmap', 1493387755, 0), 
(376, 'module', 'download', 'assets/js/pdf.js/cmaps/90ms-RKSJ-V.bcmap', 1493387755, 0), 
(377, 'module', 'download', 'assets/js/pdf.js/cmaps/90msp-RKSJ-H.bcmap', 1493387755, 0), 
(378, 'module', 'download', 'assets/js/pdf.js/cmaps/90msp-RKSJ-V.bcmap', 1493387755, 0), 
(379, 'module', 'download', 'assets/js/pdf.js/cmaps/90pv-RKSJ-H.bcmap', 1493387755, 0), 
(380, 'module', 'download', 'assets/js/pdf.js/cmaps/90pv-RKSJ-V.bcmap', 1493387755, 0), 
(381, 'module', 'download', 'assets/js/pdf.js/cmaps/Add-H.bcmap', 1493387755, 0), 
(382, 'module', 'download', 'assets/js/pdf.js/cmaps/Add-RKSJ-H.bcmap', 1493387755, 0), 
(383, 'module', 'download', 'assets/js/pdf.js/cmaps/Add-RKSJ-V.bcmap', 1493387755, 0), 
(384, 'module', 'download', 'assets/js/pdf.js/cmaps/Add-V.bcmap', 1493387755, 0), 
(385, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-CNS1-0.bcmap', 1493387755, 0), 
(386, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-CNS1-1.bcmap', 1493387755, 0), 
(387, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-CNS1-2.bcmap', 1493387755, 0), 
(388, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-CNS1-3.bcmap', 1493387755, 0), 
(389, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-CNS1-4.bcmap', 1493387755, 0), 
(390, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-CNS1-5.bcmap', 1493387755, 0), 
(391, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-CNS1-6.bcmap', 1493387755, 0), 
(392, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-CNS1-UCS2.bcmap', 1493387755, 0), 
(393, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-GB1-0.bcmap', 1493387755, 0), 
(394, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-GB1-1.bcmap', 1493387755, 0), 
(395, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-GB1-2.bcmap', 1493387755, 0), 
(396, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-GB1-3.bcmap', 1493387755, 0), 
(397, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-GB1-4.bcmap', 1493387755, 0), 
(398, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-GB1-5.bcmap', 1493387755, 0), 
(399, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-GB1-UCS2.bcmap', 1493387755, 0), 
(400, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-Japan1-0.bcmap', 1493387755, 0), 
(401, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-Japan1-1.bcmap', 1493387755, 0), 
(402, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-Japan1-2.bcmap', 1493387755, 0), 
(403, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-Japan1-3.bcmap', 1493387755, 0), 
(404, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-Japan1-4.bcmap', 1493387755, 0), 
(405, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-Japan1-5.bcmap', 1493387755, 0), 
(406, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-Japan1-6.bcmap', 1493387755, 0), 
(407, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-Japan1-UCS2.bcmap', 1493387755, 0), 
(408, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-Korea1-0.bcmap', 1493387755, 0), 
(409, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-Korea1-1.bcmap', 1493387755, 0), 
(410, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-Korea1-2.bcmap', 1493387755, 0), 
(411, 'module', 'download', 'assets/js/pdf.js/cmaps/Adobe-Korea1-UCS2.bcmap', 1493387755, 0), 
(412, 'module', 'download', 'assets/js/pdf.js/cmaps/B5-H.bcmap', 1493387755, 0), 
(413, 'module', 'download', 'assets/js/pdf.js/cmaps/B5-V.bcmap', 1493387755, 0), 
(414, 'module', 'download', 'assets/js/pdf.js/cmaps/B5pc-H.bcmap', 1493387755, 0), 
(415, 'module', 'download', 'assets/js/pdf.js/cmaps/B5pc-V.bcmap', 1493387755, 0), 
(416, 'module', 'download', 'assets/js/pdf.js/cmaps/CNS-EUC-H.bcmap', 1493387755, 0), 
(417, 'module', 'download', 'assets/js/pdf.js/cmaps/CNS-EUC-V.bcmap', 1493387755, 0), 
(418, 'module', 'download', 'assets/js/pdf.js/cmaps/CNS1-H.bcmap', 1493387755, 0), 
(419, 'module', 'download', 'assets/js/pdf.js/cmaps/CNS1-V.bcmap', 1493387755, 0), 
(420, 'module', 'download', 'assets/js/pdf.js/cmaps/CNS2-H.bcmap', 1493387755, 0), 
(421, 'module', 'download', 'assets/js/pdf.js/cmaps/CNS2-V.bcmap', 1493387755, 0), 
(422, 'module', 'download', 'assets/js/pdf.js/cmaps/ETen-B5-H.bcmap', 1493387755, 0), 
(423, 'module', 'download', 'assets/js/pdf.js/cmaps/ETen-B5-V.bcmap', 1493387755, 0), 
(424, 'module', 'download', 'assets/js/pdf.js/cmaps/ETenms-B5-H.bcmap', 1493387755, 0), 
(425, 'module', 'download', 'assets/js/pdf.js/cmaps/ETenms-B5-V.bcmap', 1493387755, 0), 
(426, 'module', 'download', 'assets/js/pdf.js/cmaps/ETHK-B5-H.bcmap', 1493387755, 0), 
(427, 'module', 'download', 'assets/js/pdf.js/cmaps/ETHK-B5-V.bcmap', 1493387755, 0), 
(428, 'module', 'download', 'assets/js/pdf.js/cmaps/EUC-H.bcmap', 1493387755, 0), 
(429, 'module', 'download', 'assets/js/pdf.js/cmaps/EUC-V.bcmap', 1493387755, 0), 
(430, 'module', 'download', 'assets/js/pdf.js/cmaps/Ext-H.bcmap', 1493387755, 0), 
(431, 'module', 'download', 'assets/js/pdf.js/cmaps/Ext-RKSJ-H.bcmap', 1493387755, 0), 
(432, 'module', 'download', 'assets/js/pdf.js/cmaps/Ext-RKSJ-V.bcmap', 1493387755, 0), 
(433, 'module', 'download', 'assets/js/pdf.js/cmaps/Ext-V.bcmap', 1493387755, 0), 
(434, 'module', 'download', 'assets/js/pdf.js/cmaps/GB-EUC-H.bcmap', 1493387755, 0), 
(435, 'module', 'download', 'assets/js/pdf.js/cmaps/GB-EUC-V.bcmap', 1493387755, 0), 
(436, 'module', 'download', 'assets/js/pdf.js/cmaps/GB-H.bcmap', 1493387755, 0), 
(437, 'module', 'download', 'assets/js/pdf.js/cmaps/GB-V.bcmap', 1493387755, 0), 
(438, 'module', 'download', 'assets/js/pdf.js/cmaps/GBK-EUC-H.bcmap', 1493387755, 0), 
(439, 'module', 'download', 'assets/js/pdf.js/cmaps/GBK-EUC-V.bcmap', 1493387755, 0), 
(440, 'module', 'download', 'assets/js/pdf.js/cmaps/GBK2K-H.bcmap', 1493387755, 0), 
(441, 'module', 'download', 'assets/js/pdf.js/cmaps/GBK2K-V.bcmap', 1493387755, 0), 
(442, 'module', 'download', 'assets/js/pdf.js/cmaps/GBKp-EUC-H.bcmap', 1493387755, 0), 
(443, 'module', 'download', 'assets/js/pdf.js/cmaps/GBKp-EUC-V.bcmap', 1493387755, 0), 
(444, 'module', 'download', 'assets/js/pdf.js/cmaps/GBpc-EUC-H.bcmap', 1493387755, 0), 
(445, 'module', 'download', 'assets/js/pdf.js/cmaps/GBpc-EUC-V.bcmap', 1493387755, 0), 
(446, 'module', 'download', 'assets/js/pdf.js/cmaps/GBT-EUC-H.bcmap', 1493387755, 0), 
(447, 'module', 'download', 'assets/js/pdf.js/cmaps/GBT-EUC-V.bcmap', 1493387755, 0), 
(448, 'module', 'download', 'assets/js/pdf.js/cmaps/GBT-H.bcmap', 1493387755, 0), 
(449, 'module', 'download', 'assets/js/pdf.js/cmaps/GBT-V.bcmap', 1493387755, 0), 
(450, 'module', 'download', 'assets/js/pdf.js/cmaps/GBTpc-EUC-H.bcmap', 1493387755, 0), 
(451, 'module', 'download', 'assets/js/pdf.js/cmaps/GBTpc-EUC-V.bcmap', 1493387755, 0), 
(452, 'module', 'download', 'assets/js/pdf.js/cmaps/H.bcmap', 1493387755, 0), 
(453, 'module', 'download', 'assets/js/pdf.js/cmaps/Hankaku.bcmap', 1493387755, 0), 
(454, 'module', 'download', 'assets/js/pdf.js/cmaps/Hiragana.bcmap', 1493387755, 0), 
(455, 'module', 'download', 'assets/js/pdf.js/cmaps/HKdla-B5-H.bcmap', 1493387755, 0), 
(456, 'module', 'download', 'assets/js/pdf.js/cmaps/HKdla-B5-V.bcmap', 1493387755, 0), 
(457, 'module', 'download', 'assets/js/pdf.js/cmaps/HKdlb-B5-H.bcmap', 1493387755, 0), 
(458, 'module', 'download', 'assets/js/pdf.js/cmaps/HKdlb-B5-V.bcmap', 1493387755, 0), 
(459, 'module', 'download', 'assets/js/pdf.js/cmaps/HKgccs-B5-H.bcmap', 1493387755, 0), 
(460, 'module', 'download', 'assets/js/pdf.js/cmaps/HKgccs-B5-V.bcmap', 1493387755, 0), 
(461, 'module', 'download', 'assets/js/pdf.js/cmaps/HKm314-B5-H.bcmap', 1493387755, 0), 
(462, 'module', 'download', 'assets/js/pdf.js/cmaps/HKm314-B5-V.bcmap', 1493387755, 0), 
(463, 'module', 'download', 'assets/js/pdf.js/cmaps/HKm471-B5-H.bcmap', 1493387755, 0), 
(464, 'module', 'download', 'assets/js/pdf.js/cmaps/HKm471-B5-V.bcmap', 1493387755, 0), 
(465, 'module', 'download', 'assets/js/pdf.js/cmaps/HKscs-B5-H.bcmap', 1493387755, 0), 
(466, 'module', 'download', 'assets/js/pdf.js/cmaps/HKscs-B5-V.bcmap', 1493387755, 0), 
(467, 'module', 'download', 'assets/js/pdf.js/cmaps/Katakana.bcmap', 1493387755, 0), 
(468, 'module', 'download', 'assets/js/pdf.js/cmaps/KSC-EUC-H.bcmap', 1493387755, 0), 
(469, 'module', 'download', 'assets/js/pdf.js/cmaps/KSC-EUC-V.bcmap', 1493387755, 0), 
(470, 'module', 'download', 'assets/js/pdf.js/cmaps/KSC-H.bcmap', 1493387755, 0), 
(471, 'module', 'download', 'assets/js/pdf.js/cmaps/KSC-Johab-H.bcmap', 1493387755, 0), 
(472, 'module', 'download', 'assets/js/pdf.js/cmaps/KSC-Johab-V.bcmap', 1493387755, 0), 
(473, 'module', 'download', 'assets/js/pdf.js/cmaps/KSC-V.bcmap', 1493387755, 0), 
(474, 'module', 'download', 'assets/js/pdf.js/cmaps/KSCms-UHC-H.bcmap', 1493387755, 0), 
(475, 'module', 'download', 'assets/js/pdf.js/cmaps/KSCms-UHC-HW-H.bcmap', 1493387755, 0), 
(476, 'module', 'download', 'assets/js/pdf.js/cmaps/KSCms-UHC-HW-V.bcmap', 1493387755, 0), 
(477, 'module', 'download', 'assets/js/pdf.js/cmaps/KSCms-UHC-V.bcmap', 1493387755, 0), 
(478, 'module', 'download', 'assets/js/pdf.js/cmaps/KSCpc-EUC-H.bcmap', 1493387755, 0), 
(479, 'module', 'download', 'assets/js/pdf.js/cmaps/KSCpc-EUC-V.bcmap', 1493387755, 0), 
(480, 'module', 'download', 'assets/js/pdf.js/cmaps/LICENSE', 1493387755, 0), 
(481, 'module', 'download', 'assets/js/pdf.js/cmaps/NWP-H.bcmap', 1493387755, 0), 
(482, 'module', 'download', 'assets/js/pdf.js/cmaps/NWP-V.bcmap', 1493387755, 0), 
(483, 'module', 'download', 'assets/js/pdf.js/cmaps/RKSJ-H.bcmap', 1493387755, 0), 
(484, 'module', 'download', 'assets/js/pdf.js/cmaps/RKSJ-V.bcmap', 1493387755, 0), 
(485, 'module', 'download', 'assets/js/pdf.js/cmaps/Roman.bcmap', 1493387755, 0), 
(486, 'module', 'download', 'assets/js/pdf.js/cmaps/UniCNS-UCS2-H.bcmap', 1493387755, 0), 
(487, 'module', 'download', 'assets/js/pdf.js/cmaps/UniCNS-UCS2-V.bcmap', 1493387755, 0), 
(488, 'module', 'download', 'assets/js/pdf.js/cmaps/UniCNS-UTF16-H.bcmap', 1493387755, 0), 
(489, 'module', 'download', 'assets/js/pdf.js/cmaps/UniCNS-UTF16-V.bcmap', 1493387755, 0), 
(490, 'module', 'download', 'assets/js/pdf.js/cmaps/UniCNS-UTF32-H.bcmap', 1493387755, 0), 
(491, 'module', 'download', 'assets/js/pdf.js/cmaps/UniCNS-UTF32-V.bcmap', 1493387755, 0), 
(492, 'module', 'download', 'assets/js/pdf.js/cmaps/UniCNS-UTF8-H.bcmap', 1493387755, 0), 
(493, 'module', 'download', 'assets/js/pdf.js/cmaps/UniCNS-UTF8-V.bcmap', 1493387755, 0), 
(494, 'module', 'download', 'assets/js/pdf.js/cmaps/UniGB-UCS2-H.bcmap', 1493387755, 0), 
(495, 'module', 'download', 'assets/js/pdf.js/cmaps/UniGB-UCS2-V.bcmap', 1493387755, 0), 
(496, 'module', 'download', 'assets/js/pdf.js/cmaps/UniGB-UTF16-H.bcmap', 1493387755, 0), 
(497, 'module', 'download', 'assets/js/pdf.js/cmaps/UniGB-UTF16-V.bcmap', 1493387755, 0), 
(498, 'module', 'download', 'assets/js/pdf.js/cmaps/UniGB-UTF32-H.bcmap', 1493387755, 0), 
(499, 'module', 'download', 'assets/js/pdf.js/cmaps/UniGB-UTF32-V.bcmap', 1493387755, 0), 
(500, 'module', 'download', 'assets/js/pdf.js/cmaps/UniGB-UTF8-H.bcmap', 1493387755, 0), 
(501, 'module', 'download', 'assets/js/pdf.js/cmaps/UniGB-UTF8-V.bcmap', 1493387755, 0), 
(502, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS-UCS2-H.bcmap', 1493387755, 0), 
(503, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS-UCS2-HW-H.bcmap', 1493387755, 0), 
(504, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS-UCS2-HW-V.bcmap', 1493387755, 0), 
(505, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS-UCS2-V.bcmap', 1493387755, 0), 
(506, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS-UTF16-H.bcmap', 1493387755, 0), 
(507, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS-UTF16-V.bcmap', 1493387755, 0), 
(508, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS-UTF32-H.bcmap', 1493387755, 0), 
(509, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS-UTF32-V.bcmap', 1493387755, 0), 
(510, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS-UTF8-H.bcmap', 1493387755, 0), 
(511, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS-UTF8-V.bcmap', 1493387755, 0), 
(512, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS2004-UTF16-H.bcmap', 1493387755, 0), 
(513, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS2004-UTF16-V.bcmap', 1493387755, 0), 
(514, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS2004-UTF32-H.bcmap', 1493387755, 0), 
(515, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS2004-UTF32-V.bcmap', 1493387755, 0), 
(516, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS2004-UTF8-H.bcmap', 1493387755, 0), 
(517, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJIS2004-UTF8-V.bcmap', 1493387755, 0), 
(518, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJISPro-UCS2-HW-V.bcmap', 1493387755, 0), 
(519, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJISPro-UCS2-V.bcmap', 1493387755, 0), 
(520, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJISPro-UTF8-V.bcmap', 1493387755, 0), 
(521, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJISX0213-UTF32-H.bcmap', 1493387755, 0), 
(522, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJISX0213-UTF32-V.bcmap', 1493387755, 0), 
(523, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJISX02132004-UTF32-H.bcmap', 1493387755, 0), 
(524, 'module', 'download', 'assets/js/pdf.js/cmaps/UniJISX02132004-UTF32-V.bcmap', 1493387755, 0), 
(525, 'module', 'download', 'assets/js/pdf.js/cmaps/UniKS-UCS2-H.bcmap', 1493387755, 0), 
(526, 'module', 'download', 'assets/js/pdf.js/cmaps/UniKS-UCS2-V.bcmap', 1493387755, 0), 
(527, 'module', 'download', 'assets/js/pdf.js/cmaps/UniKS-UTF16-H.bcmap', 1493387755, 0), 
(528, 'module', 'download', 'assets/js/pdf.js/cmaps/UniKS-UTF16-V.bcmap', 1493387755, 0), 
(529, 'module', 'download', 'assets/js/pdf.js/cmaps/UniKS-UTF32-H.bcmap', 1493387755, 0), 
(530, 'module', 'download', 'assets/js/pdf.js/cmaps/UniKS-UTF32-V.bcmap', 1493387755, 0), 
(531, 'module', 'download', 'assets/js/pdf.js/cmaps/UniKS-UTF8-H.bcmap', 1493387755, 0), 
(532, 'module', 'download', 'assets/js/pdf.js/cmaps/UniKS-UTF8-V.bcmap', 1493387755, 0), 
(533, 'module', 'download', 'assets/js/pdf.js/cmaps/V.bcmap', 1493387755, 0), 
(534, 'module', 'download', 'assets/js/pdf.js/cmaps/WP-Symbol.bcmap', 1493387755, 0), 
(535, 'module', 'download', 'assets/js/pdf.js/compatibility.js', 1493387755, 0), 
(536, 'module', 'download', 'assets/js/pdf.js/debugger.js', 1493387755, 0), 
(537, 'module', 'download', 'assets/js/pdf.js/images/annotation-check.svg', 1493387755, 0), 
(538, 'module', 'download', 'assets/js/pdf.js/images/annotation-comment.svg', 1493387755, 0), 
(539, 'module', 'download', 'assets/js/pdf.js/images/annotation-help.svg', 1493387755, 0), 
(540, 'module', 'download', 'assets/js/pdf.js/images/annotation-insert.svg', 1493387755, 0), 
(541, 'module', 'download', 'assets/js/pdf.js/images/annotation-key.svg', 1493387755, 0), 
(542, 'module', 'download', 'assets/js/pdf.js/images/annotation-newparagraph.svg', 1493387755, 0), 
(543, 'module', 'download', 'assets/js/pdf.js/images/annotation-noicon.svg', 1493387755, 0), 
(544, 'module', 'download', 'assets/js/pdf.js/images/annotation-note.svg', 1493387755, 0), 
(545, 'module', 'download', 'assets/js/pdf.js/images/annotation-paragraph.svg', 1493387755, 0), 
(546, 'module', 'download', 'assets/js/pdf.js/images/findbarButton-next-rtl.png', 1493387755, 0), 
(547, 'module', 'download', 'assets/js/pdf.js/images/findbarButton-next-rtl@2x.png', 1493387755, 0), 
(548, 'module', 'download', 'assets/js/pdf.js/images/findbarButton-next.png', 1493387755, 0), 
(549, 'module', 'download', 'assets/js/pdf.js/images/findbarButton-next@2x.png', 1493387755, 0), 
(550, 'module', 'download', 'assets/js/pdf.js/images/findbarButton-previous-rtl.png', 1493387755, 0), 
(551, 'module', 'download', 'assets/js/pdf.js/images/findbarButton-previous-rtl@2x.png', 1493387755, 0), 
(552, 'module', 'download', 'assets/js/pdf.js/images/findbarButton-previous.png', 1493387755, 0), 
(553, 'module', 'download', 'assets/js/pdf.js/images/findbarButton-previous@2x.png', 1493387755, 0), 
(554, 'module', 'download', 'assets/js/pdf.js/images/grab.cur', 1493387755, 0), 
(555, 'module', 'download', 'assets/js/pdf.js/images/grabbing.cur', 1493387755, 0), 
(556, 'module', 'download', 'assets/js/pdf.js/images/loading-icon.gif', 1493387755, 0), 
(557, 'module', 'download', 'assets/js/pdf.js/images/loading-small.png', 1493387755, 0), 
(558, 'module', 'download', 'assets/js/pdf.js/images/loading-small@2x.png', 1493387755, 0), 
(559, 'module', 'download', 'assets/js/pdf.js/images/secondaryToolbarButton-documentProperties.png', 1493387755, 0), 
(560, 'module', 'download', 'assets/js/pdf.js/images/secondaryToolbarButton-documentProperties@2x.png', 1493387755, 0), 
(561, 'module', 'download', 'assets/js/pdf.js/images/secondaryToolbarButton-firstPage.png', 1493387755, 0), 
(562, 'module', 'download', 'assets/js/pdf.js/images/secondaryToolbarButton-firstPage@2x.png', 1493387755, 0), 
(563, 'module', 'download', 'assets/js/pdf.js/images/secondaryToolbarButton-handTool.png', 1493387755, 0), 
(564, 'module', 'download', 'assets/js/pdf.js/images/secondaryToolbarButton-handTool@2x.png', 1493387755, 0), 
(565, 'module', 'download', 'assets/js/pdf.js/images/secondaryToolbarButton-lastPage.png', 1493387755, 0), 
(566, 'module', 'download', 'assets/js/pdf.js/images/secondaryToolbarButton-lastPage@2x.png', 1493387755, 0), 
(567, 'module', 'download', 'assets/js/pdf.js/images/secondaryToolbarButton-rotateCcw.png', 1493387755, 0), 
(568, 'module', 'download', 'assets/js/pdf.js/images/secondaryToolbarButton-rotateCcw@2x.png', 1493387755, 0), 
(569, 'module', 'download', 'assets/js/pdf.js/images/secondaryToolbarButton-rotateCw.png', 1493387755, 0), 
(570, 'module', 'download', 'assets/js/pdf.js/images/secondaryToolbarButton-rotateCw@2x.png', 1493387755, 0), 
(571, 'module', 'download', 'assets/js/pdf.js/images/shadow.png', 1493387755, 0), 
(572, 'module', 'download', 'assets/js/pdf.js/images/texture.png', 1493387755, 0), 
(573, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-bookmark.png', 1493387755, 0), 
(574, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-bookmark@2x.png', 1493387755, 0), 
(575, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-download.png', 1493387755, 0), 
(576, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-download@2x.png', 1493387755, 0), 
(577, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-menuArrows.png', 1493387755, 0), 
(578, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-menuArrows@2x.png', 1493387755, 0), 
(579, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-openFile.png', 1493387755, 0), 
(580, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-openFile@2x.png', 1493387755, 0), 
(581, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-pageDown-rtl.png', 1493387755, 0), 
(582, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-pageDown-rtl@2x.png', 1493387755, 0), 
(583, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-pageDown.png', 1493387755, 0), 
(584, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-pageDown@2x.png', 1493387755, 0), 
(585, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-pageUp-rtl.png', 1493387755, 0), 
(586, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-pageUp-rtl@2x.png', 1493387755, 0), 
(587, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-pageUp.png', 1493387755, 0), 
(588, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-pageUp@2x.png', 1493387755, 0), 
(589, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-presentationMode.png', 1493387755, 0), 
(590, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-presentationMode@2x.png', 1493387755, 0), 
(591, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-print.png', 1493387755, 0), 
(592, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-print@2x.png', 1493387755, 0), 
(593, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-search.png', 1493387755, 0), 
(594, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-search@2x.png', 1493387755, 0), 
(595, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-secondaryToolbarToggle-rtl.png', 1493387755, 0), 
(596, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-secondaryToolbarToggle-rtl@2x.png', 1493387755, 0), 
(597, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-secondaryToolbarToggle.png', 1493387755, 0), 
(598, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-secondaryToolbarToggle@2x.png', 1493387755, 0), 
(599, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-sidebarToggle-rtl.png', 1493387755, 0), 
(600, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-sidebarToggle-rtl@2x.png', 1493387755, 0), 
(601, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-sidebarToggle.png', 1493387755, 0), 
(602, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-sidebarToggle@2x.png', 1493387755, 0), 
(603, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-viewAttachments.png', 1493387755, 0), 
(604, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-viewAttachments@2x.png', 1493387755, 0), 
(605, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-viewOutline-rtl.png', 1493387755, 0), 
(606, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-viewOutline-rtl@2x.png', 1493387755, 0), 
(607, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-viewOutline.png', 1493387755, 0), 
(608, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-viewOutline@2x.png', 1493387755, 0), 
(609, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-viewThumbnail.png', 1493387755, 0), 
(610, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-viewThumbnail@2x.png', 1493387755, 0), 
(611, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-zoomIn.png', 1493387755, 0), 
(612, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-zoomIn@2x.png', 1493387755, 0), 
(613, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-zoomOut.png', 1493387755, 0), 
(614, 'module', 'download', 'assets/js/pdf.js/images/toolbarButton-zoomOut@2x.png', 1493387755, 0), 
(615, 'module', 'download', 'assets/js/pdf.js/images/treeitem-collapsed-rtl.png', 1493387755, 0), 
(616, 'module', 'download', 'assets/js/pdf.js/images/treeitem-collapsed-rtl@2x.png', 1493387755, 0), 
(617, 'module', 'download', 'assets/js/pdf.js/images/treeitem-collapsed.png', 1493387755, 0), 
(618, 'module', 'download', 'assets/js/pdf.js/images/treeitem-collapsed@2x.png', 1493387755, 0), 
(619, 'module', 'download', 'assets/js/pdf.js/images/treeitem-expanded.png', 1493387755, 0), 
(620, 'module', 'download', 'assets/js/pdf.js/images/treeitem-expanded@2x.png', 1493387755, 0), 
(621, 'module', 'download', 'assets/js/pdf.js/l10n.js', 1493387755, 0), 
(622, 'module', 'download', 'assets/js/pdf.js/LICENSE', 1493387755, 0), 
(623, 'module', 'download', 'assets/js/pdf.js/locale/en-GB/viewer.properties', 1493387755, 0), 
(624, 'module', 'download', 'assets/js/pdf.js/locale/en-US/viewer.properties', 1493387755, 0), 
(625, 'module', 'download', 'assets/js/pdf.js/locale/fr/viewer.properties', 1493387755, 0), 
(626, 'module', 'download', 'assets/js/pdf.js/locale/locale.properties', 1493387755, 0), 
(627, 'module', 'download', 'assets/js/pdf.js/locale/vi/viewer.properties', 1493387755, 0), 
(628, 'module', 'download', 'assets/js/pdf.js/pdf.js', 1493387755, 0), 
(629, 'module', 'download', 'assets/js/pdf.js/pdf.worker.js', 1493387755, 0), 
(630, 'module', 'download', 'assets/js/pdf.js/viewer.css', 1493387755, 0), 
(631, 'module', 'download', 'assets/js/pdf.js/viewer.js', 1493387755, 0), 
(632, 'module', 'download', 'assets/js/pdf.js/viewer.tpl', 1493387755, 0), 
(633, 'module', 'download', 'modules/download/action_mysql.php', 1493387755, 0), 
(634, 'module', 'download', 'modules/download/admin/cat-content.php', 1493387755, 0), 
(635, 'module', 'download', 'modules/download/admin/cat.php', 1493387755, 0), 
(636, 'module', 'download', 'modules/download/admin/change_cat.php', 1493387755, 0), 
(637, 'module', 'download', 'modules/download/admin/config.php', 1493387755, 0), 
(638, 'module', 'download', 'modules/download/admin/content.php', 1493387755, 0), 
(639, 'module', 'download', 'modules/download/admin/filequeue.php', 1493387755, 0), 
(640, 'module', 'download', 'modules/download/admin/fileserver.php', 1493387755, 0), 
(641, 'module', 'download', 'modules/download/admin/index.html', 1493387755, 0), 
(642, 'module', 'download', 'modules/download/admin/main.php', 1493387755, 0), 
(643, 'module', 'download', 'modules/download/admin/report.php', 1493387755, 0), 
(644, 'module', 'download', 'modules/download/admin/tags.php', 1493387755, 0), 
(645, 'module', 'download', 'modules/download/admin/tagsajax.php', 1493387755, 0), 
(646, 'module', 'download', 'modules/download/admin/view.php', 1493387755, 0), 
(647, 'module', 'download', 'modules/download/admin.functions.php', 1493387755, 0), 
(648, 'module', 'download', 'modules/download/admin.menu.php', 1493387755, 0), 
(649, 'module', 'download', 'modules/download/blocks/global.new_files.ini', 1493387755, 0), 
(650, 'module', 'download', 'modules/download/blocks/global.new_files.php', 1493387755, 0), 
(651, 'module', 'download', 'modules/download/blocks/global.search.php', 1493387755, 0), 
(652, 'module', 'download', 'modules/download/blocks/global.upload.php', 1493387755, 0), 
(653, 'module', 'download', 'modules/download/blocks/index.html', 1493387755, 0), 
(654, 'module', 'download', 'modules/download/blocks/module.block_category.php', 1493387755, 0), 
(655, 'module', 'download', 'modules/download/blocks/module.block_lastestdownload.php', 1493387755, 0), 
(656, 'module', 'download', 'modules/download/blocks/module.block_topdownload.php', 1493387755, 0), 
(657, 'module', 'download', 'modules/download/comment.php', 1493387755, 0), 
(658, 'module', 'download', 'modules/download/funcs/down.php', 1493387755, 0), 
(659, 'module', 'download', 'modules/download/funcs/index.html', 1493387755, 0), 
(660, 'module', 'download', 'modules/download/funcs/main.php', 1493387755, 0), 
(661, 'module', 'download', 'modules/download/funcs/report.php', 1493387755, 0), 
(662, 'module', 'download', 'modules/download/funcs/rss.php', 1493387755, 0), 
(663, 'module', 'download', 'modules/download/funcs/search.php', 1493387755, 0), 
(664, 'module', 'download', 'modules/download/funcs/sitemap.php', 1493387755, 0), 
(665, 'module', 'download', 'modules/download/funcs/tag.php', 1493387755, 0), 
(666, 'module', 'download', 'modules/download/funcs/upload.php', 1493387755, 0), 
(667, 'module', 'download', 'modules/download/funcs/viewcat.php', 1493387755, 0), 
(668, 'module', 'download', 'modules/download/funcs/viewfile.php', 1493387755, 0), 
(669, 'module', 'download', 'modules/download/functions.php', 1493387755, 0), 
(670, 'module', 'download', 'modules/download/global.functions.php', 1493387755, 0), 
(671, 'module', 'download', 'modules/download/index.html', 1493387755, 0), 
(672, 'module', 'download', 'modules/download/language/admin_en.php', 1493387755, 0), 
(673, 'module', 'download', 'modules/download/language/admin_vi.php', 1493387755, 0), 
(674, 'module', 'download', 'modules/download/language/block.global.new_files_en.php', 1493387755, 0), 
(675, 'module', 'download', 'modules/download/language/block.global.new_files_vi.php', 1493387755, 0), 
(676, 'module', 'download', 'modules/download/language/en.php', 1493387755, 0), 
(677, 'module', 'download', 'modules/download/language/index.html', 1493387755, 0), 
(678, 'module', 'download', 'modules/download/language/vi.php', 1493387755, 0), 
(679, 'module', 'download', 'modules/download/menu.php', 1493387755, 0), 
(680, 'module', 'download', 'modules/download/notification.php', 1493387755, 0), 
(681, 'module', 'download', 'modules/download/rssdata.php', 1493387755, 0), 
(682, 'module', 'download', 'modules/download/search.php', 1493387755, 0), 
(683, 'module', 'download', 'modules/download/siteinfo.php', 1493387755, 0), 
(684, 'module', 'download', 'modules/download/theme.php', 1493387755, 0), 
(685, 'module', 'download', 'modules/download/version.php', 1493387755, 0), 
(686, 'module', 'download', 'themes/admin_default/css/download.css', 1493387755, 0), 
(687, 'module', 'download', 'themes/admin_default/js/download.js', 1493387755, 0), 
(688, 'module', 'download', 'themes/admin_default/modules/download/cat_add.tpl', 1493387755, 0), 
(689, 'module', 'download', 'themes/admin_default/modules/download/cat_list.tpl', 1493387755, 0), 
(690, 'module', 'download', 'themes/admin_default/modules/download/config.tpl', 1493387755, 0), 
(691, 'module', 'download', 'themes/admin_default/modules/download/content.tpl', 1493387755, 0), 
(692, 'module', 'download', 'themes/admin_default/modules/download/filequeue.tpl', 1493387755, 0), 
(693, 'module', 'download', 'themes/admin_default/modules/download/fileserver.tpl', 1493387755, 0), 
(694, 'module', 'download', 'themes/admin_default/modules/download/index.html', 1493387755, 0), 
(695, 'module', 'download', 'themes/admin_default/modules/download/main.tpl', 1493387755, 0), 
(696, 'module', 'download', 'themes/admin_default/modules/download/report.tpl', 1493387755, 0), 
(697, 'module', 'download', 'themes/admin_default/modules/download/tags.tpl', 1493387755, 0), 
(698, 'module', 'download', 'themes/admin_default/modules/download/tags_lists.tpl', 1493387755, 0), 
(699, 'module', 'download', 'themes/default/css/download.css', 1493387755, 0), 
(700, 'module', 'download', 'themes/default/images/download/report.gif', 1493387755, 0), 
(701, 'module', 'download', 'themes/default/js/download.js', 1493387755, 0), 
(702, 'module', 'download', 'themes/default/js/download_jquery.shorten.js', 1493387755, 0), 
(703, 'module', 'download', 'themes/default/modules/download/alert.tpl', 1493387755, 0), 
(704, 'module', 'download', 'themes/default/modules/download/block.tpl', 1493387755, 0), 
(705, 'module', 'download', 'themes/default/modules/download/block_category.tpl', 1493387755, 0), 
(706, 'module', 'download', 'themes/default/modules/download/block_lastestdownload.tpl', 1493387755, 0), 
(707, 'module', 'download', 'themes/default/modules/download/block_new_files.tpl', 1493387755, 0), 
(708, 'module', 'download', 'themes/default/modules/download/block_search.tpl', 1493387755, 0), 
(709, 'module', 'download', 'themes/default/modules/download/block_topdownload.tpl', 1493387755, 0), 
(710, 'module', 'download', 'themes/default/modules/download/block_upload.tpl', 1493387755, 0), 
(711, 'module', 'download', 'themes/default/modules/download/index.html', 1493387755, 0), 
(712, 'module', 'download', 'themes/default/modules/download/search.tpl', 1493387755, 0), 
(713, 'module', 'download', 'themes/default/modules/download/topic.tpl', 1493387755, 0), 
(714, 'module', 'download', 'themes/default/modules/download/upload.tpl', 1493387755, 0), 
(715, 'module', 'download', 'themes/default/modules/download/viewcat_list.tpl', 1493387755, 0), 
(716, 'module', 'download', 'themes/default/modules/download/viewcat_main_bottom.tpl', 1493387755, 0), 
(717, 'module', 'download', 'themes/default/modules/download/viewcat_table.tpl', 1493387755, 0), 
(718, 'module', 'download', 'themes/default/modules/download/viewfile.tpl', 1493387755, 0), 
(719, 'module', 'faq', 'modules/faq/action_mysql.php', 1493388171, 0), 
(720, 'module', 'faq', 'modules/faq/admin/.htaccess', 1493388171, 0), 
(721, 'module', 'faq', 'modules/faq/admin/cat.php', 1493388171, 0), 
(722, 'module', 'faq', 'modules/faq/admin/config.php', 1493388171, 0), 
(723, 'module', 'faq', 'modules/faq/admin/index.html', 1493388171, 0), 
(724, 'module', 'faq', 'modules/faq/admin/main.php', 1493388171, 0), 
(725, 'module', 'faq', 'modules/faq/admin.functions.php', 1493388171, 0), 
(726, 'module', 'faq', 'modules/faq/admin.menu.php', 1493388171, 0), 
(727, 'module', 'faq', 'modules/faq/blocks/.htaccess', 1493388171, 0), 
(728, 'module', 'faq', 'modules/faq/blocks/index.html', 1493388171, 0), 
(729, 'module', 'faq', 'modules/faq/funcs/.htaccess', 1493388171, 0), 
(730, 'module', 'faq', 'modules/faq/funcs/index.html', 1493388171, 0), 
(731, 'module', 'faq', 'modules/faq/funcs/main.php', 1493388171, 0), 
(732, 'module', 'faq', 'modules/faq/funcs/rss.php', 1493388171, 0), 
(733, 'module', 'faq', 'modules/faq/funcs/sitemap.php', 1493388171, 0), 
(734, 'module', 'faq', 'modules/faq/functions.php', 1493388171, 0), 
(735, 'module', 'faq', 'modules/faq/index.html', 1493388171, 0), 
(736, 'module', 'faq', 'modules/faq/language/.htaccess', 1493388171, 0), 
(737, 'module', 'faq', 'modules/faq/language/admin_cs.php', 1493388171, 0), 
(738, 'module', 'faq', 'modules/faq/language/admin_en.php', 1493388171, 0), 
(739, 'module', 'faq', 'modules/faq/language/admin_fr.php', 1493388171, 0), 
(740, 'module', 'faq', 'modules/faq/language/admin_ja.php', 1493388171, 0), 
(741, 'module', 'faq', 'modules/faq/language/admin_tr.php', 1493388171, 0), 
(742, 'module', 'faq', 'modules/faq/language/admin_vi.php', 1493388171, 0), 
(743, 'module', 'faq', 'modules/faq/language/cs.php', 1493388171, 0), 
(744, 'module', 'faq', 'modules/faq/language/en.php', 1493388171, 0), 
(745, 'module', 'faq', 'modules/faq/language/fr.php', 1493388171, 0), 
(746, 'module', 'faq', 'modules/faq/language/index.html', 1493388171, 0), 
(747, 'module', 'faq', 'modules/faq/language/ja.php', 1493388171, 0), 
(748, 'module', 'faq', 'modules/faq/language/tr.php', 1493388171, 0), 
(749, 'module', 'faq', 'modules/faq/language/vi.php', 1493388171, 0), 
(750, 'module', 'faq', 'modules/faq/rssdata.php', 1493388171, 0), 
(751, 'module', 'faq', 'modules/faq/search.php', 1493388171, 0), 
(752, 'module', 'faq', 'modules/faq/theme.php', 1493388171, 0), 
(753, 'module', 'faq', 'modules/faq/version.php', 1493388171, 0), 
(754, 'module', 'faq', 'themes/admin_default/js/faq.js', 1493388171, 0), 
(755, 'module', 'faq', 'themes/admin_default/modules/faq/.htaccess', 1493388171, 0), 
(756, 'module', 'faq', 'themes/admin_default/modules/faq/cat_add.tpl', 1493388171, 0), 
(757, 'module', 'faq', 'themes/admin_default/modules/faq/cat_list.tpl', 1493388171, 0), 
(758, 'module', 'faq', 'themes/admin_default/modules/faq/config.tpl', 1493388171, 0), 
(759, 'module', 'faq', 'themes/admin_default/modules/faq/content.tpl', 1493388171, 0), 
(760, 'module', 'faq', 'themes/admin_default/modules/faq/index.html', 1493388171, 0), 
(761, 'module', 'faq', 'themes/admin_default/modules/faq/main.tpl', 1493388171, 0), 
(762, 'module', 'faq', 'themes/default/css/faq.css', 1493388171, 0), 
(763, 'module', 'faq', 'themes/default/images/faq/faq.gif', 1493388171, 0), 
(764, 'module', 'faq', 'themes/default/images/faq/index.html', 1493388171, 0), 
(765, 'module', 'faq', 'themes/default/images/faq/top.gif', 1493388171, 0), 
(766, 'module', 'faq', 'themes/default/js/faq.js', 1493388171, 0), 
(767, 'module', 'faq', 'themes/default/modules/faq/.htaccess', 1493388171, 0), 
(768, 'module', 'faq', 'themes/default/modules/faq/index.html', 1493388171, 0), 
(769, 'module', 'faq', 'themes/default/modules/faq/main_page.tpl', 1493388171, 0), 
(770, 'module', 'weblinks', 'modules/weblinks/action_mysql.php', 1493388496, 0), 
(771, 'module', 'weblinks', 'modules/weblinks/admin/.htaccess', 1493388496, 0), 
(772, 'module', 'weblinks', 'modules/weblinks/admin/alias.php', 1493388496, 0), 
(773, 'module', 'weblinks', 'modules/weblinks/admin/brokenlink.php', 1493388496, 0), 
(774, 'module', 'weblinks', 'modules/weblinks/admin/cat.php', 1493388496, 0), 
(775, 'module', 'weblinks', 'modules/weblinks/admin/change_cat.php', 1493388496, 0), 
(776, 'module', 'weblinks', 'modules/weblinks/admin/checklink.php', 1493388496, 0), 
(777, 'module', 'weblinks', 'modules/weblinks/admin/config.php', 1493388496, 0), 
(778, 'module', 'weblinks', 'modules/weblinks/admin/content.php', 1493388496, 0), 
(779, 'module', 'weblinks', 'modules/weblinks/admin/delbroken.php', 1493388496, 0), 
(780, 'module', 'weblinks', 'modules/weblinks/admin/del_cat.php', 1493388496, 0), 
(781, 'module', 'weblinks', 'modules/weblinks/admin/del_link.php', 1493388496, 0), 
(782, 'module', 'weblinks', 'modules/weblinks/admin/index.html', 1493388496, 0), 
(783, 'module', 'weblinks', 'modules/weblinks/admin/main.php', 1493388496, 0), 
(784, 'module', 'weblinks', 'modules/weblinks/admin.functions.php', 1493388496, 0), 
(785, 'module', 'weblinks', 'modules/weblinks/admin.menu.php', 1493388496, 0), 
(786, 'module', 'weblinks', 'modules/weblinks/blocks/.htaccess', 1493388496, 0), 
(787, 'module', 'weblinks', 'modules/weblinks/blocks/index.html', 1493388496, 0), 
(788, 'module', 'weblinks', 'modules/weblinks/blocks/module.block_category.php', 1493388496, 0), 
(789, 'module', 'weblinks', 'modules/weblinks/checkurl.class.php', 1493388496, 0), 
(790, 'module', 'weblinks', 'modules/weblinks/funcs/.htaccess', 1493388496, 0), 
(791, 'module', 'weblinks', 'modules/weblinks/funcs/detail.php', 1493388496, 0), 
(792, 'module', 'weblinks', 'modules/weblinks/funcs/index.html', 1493388496, 0), 
(793, 'module', 'weblinks', 'modules/weblinks/funcs/main.php', 1493388496, 0), 
(794, 'module', 'weblinks', 'modules/weblinks/funcs/reportlink.php', 1493388496, 0), 
(795, 'module', 'weblinks', 'modules/weblinks/funcs/rss.php', 1493388496, 0), 
(796, 'module', 'weblinks', 'modules/weblinks/funcs/sitemap.php', 1493388496, 0), 
(797, 'module', 'weblinks', 'modules/weblinks/funcs/viewcat.php', 1493388496, 0), 
(798, 'module', 'weblinks', 'modules/weblinks/funcs/visitlink.php', 1493388496, 0), 
(799, 'module', 'weblinks', 'modules/weblinks/functions.php', 1493388496, 0), 
(800, 'module', 'weblinks', 'modules/weblinks/global.functions.php', 1493388496, 0), 
(801, 'module', 'weblinks', 'modules/weblinks/index.html', 1493388496, 0), 
(802, 'module', 'weblinks', 'modules/weblinks/language/.htaccess', 1493388496, 0), 
(803, 'module', 'weblinks', 'modules/weblinks/language/admin_en.php', 1493388496, 0), 
(804, 'module', 'weblinks', 'modules/weblinks/language/admin_vi.php', 1493388496, 0), 
(805, 'module', 'weblinks', 'modules/weblinks/language/en.php', 1493388496, 0), 
(806, 'module', 'weblinks', 'modules/weblinks/language/vi.php', 1493388496, 0), 
(807, 'module', 'weblinks', 'modules/weblinks/rssdata.php', 1493388496, 0), 
(808, 'module', 'weblinks', 'modules/weblinks/search.php', 1493388496, 0), 
(809, 'module', 'weblinks', 'modules/weblinks/siteinfo.php', 1493388496, 0), 
(810, 'module', 'weblinks', 'modules/weblinks/theme.php', 1493388496, 0), 
(811, 'module', 'weblinks', 'modules/weblinks/version.php', 1493388496, 0), 
(812, 'module', 'weblinks', 'themes/admin_default/js/weblinks.js', 1493388496, 0), 
(813, 'module', 'weblinks', 'themes/admin_default/modules/weblinks/cat.tpl', 1493388496, 0), 
(814, 'module', 'weblinks', 'themes/admin_default/modules/weblinks/checklink.tpl', 1493388496, 0), 
(815, 'module', 'weblinks', 'themes/admin_default/modules/weblinks/config.tpl', 1493388496, 0), 
(816, 'module', 'weblinks', 'themes/admin_default/modules/weblinks/content.tpl', 1493388496, 0), 
(817, 'module', 'weblinks', 'themes/admin_default/modules/weblinks/index.html', 1493388496, 0), 
(818, 'module', 'weblinks', 'themes/admin_default/modules/weblinks/link_broken.tpl', 1493388496, 0), 
(819, 'module', 'weblinks', 'themes/admin_default/modules/weblinks/main.tpl', 1493388496, 0), 
(820, 'module', 'weblinks', 'themes/default/css/weblinks.css', 1493388496, 0), 
(821, 'module', 'weblinks', 'themes/default/images/weblinks/bg_linked_mod.png', 1493388496, 0), 
(822, 'module', 'weblinks', 'themes/default/images/weblinks/bg_link_mod.png', 1493388496, 0), 
(823, 'module', 'weblinks', 'themes/default/images/weblinks/FolderWindows.png', 1493388496, 0), 
(824, 'module', 'weblinks', 'themes/default/images/weblinks/icon-cat.gif', 1493388496, 0), 
(825, 'module', 'weblinks', 'themes/default/images/weblinks/icons.gif', 1493388496, 0), 
(826, 'module', 'weblinks', 'themes/default/images/weblinks/index.html', 1493388496, 0), 
(827, 'module', 'weblinks', 'themes/default/images/weblinks/no_image.gif', 1493388496, 0), 
(828, 'module', 'weblinks', 'themes/default/images/weblinks/OpenWeb.png', 1493388496, 0), 
(829, 'module', 'weblinks', 'themes/default/images/weblinks/report-hover.png', 1493388496, 0), 
(830, 'module', 'weblinks', 'themes/default/images/weblinks/report.png', 1493388496, 0), 
(831, 'module', 'weblinks', 'themes/default/images/weblinks/weblinks.gif', 1493388496, 0), 
(832, 'module', 'weblinks', 'themes/default/modules/weblinks/block_category.tpl', 1493388496, 0), 
(833, 'module', 'weblinks', 'themes/default/modules/weblinks/detail.tpl', 1493388496, 0), 
(834, 'module', 'weblinks', 'themes/default/modules/weblinks/index.html', 1493388496, 0), 
(835, 'module', 'weblinks', 'themes/default/modules/weblinks/main.tpl', 1493388496, 0), 
(836, 'module', 'weblinks', 'themes/default/modules/weblinks/main_page.tpl', 1493388496, 0), 
(837, 'module', 'weblinks', 'themes/default/modules/weblinks/report.tpl', 1493388496, 0), 
(838, 'module', 'weblinks', 'themes/default/modules/weblinks/viewcat.tpl', 1493388496, 0), 
(839, 'module', 'video-clip', 'modules/video-clip/action_mysql.php', 1493389352, 0), 
(840, 'module', 'video-clip', 'modules/video-clip/admin/.htaccess', 1493389352, 0), 
(841, 'module', 'video-clip', 'modules/video-clip/admin/cbroken.php', 1493389352, 0), 
(842, 'module', 'video-clip', 'modules/video-clip/admin/config.php', 1493389352, 0), 
(843, 'module', 'video-clip', 'modules/video-clip/admin/index.html', 1493389352, 0), 
(844, 'module', 'video-clip', 'modules/video-clip/admin/main.php', 1493389352, 0), 
(845, 'module', 'video-clip', 'modules/video-clip/admin/topic.php', 1493389352, 0), 
(846, 'module', 'video-clip', 'modules/video-clip/admin/vbroken.php', 1493389352, 0), 
(847, 'module', 'video-clip', 'modules/video-clip/admin.functions.php', 1493389352, 0), 
(848, 'module', 'video-clip', 'modules/video-clip/admin.menu.php', 1493389352, 0), 
(849, 'module', 'video-clip', 'modules/video-clip/blocks/.htaccess', 1493389352, 0), 
(850, 'module', 'video-clip', 'modules/video-clip/blocks/global.box_video.ini', 1493389352, 0), 
(851, 'module', 'video-clip', 'modules/video-clip/blocks/global.box_video.php', 1493389352, 0), 
(852, 'module', 'video-clip', 'modules/video-clip/blocks/global.new_image_video.php', 1493389352, 0), 
(853, 'module', 'video-clip', 'modules/video-clip/blocks/global.new_videos.ini', 1493389352, 0), 
(854, 'module', 'video-clip', 'modules/video-clip/blocks/global.new_videos.php', 1493389352, 0), 
(855, 'module', 'video-clip', 'modules/video-clip/blocks/global.top_videos.ini', 1493389352, 0), 
(856, 'module', 'video-clip', 'modules/video-clip/blocks/global.top_videos.php', 1493389352, 0), 
(857, 'module', 'video-clip', 'modules/video-clip/blocks/index.html', 1493389352, 0), 
(858, 'module', 'video-clip', 'modules/video-clip/blocks/module.detail.php', 1493389352, 0), 
(859, 'module', 'video-clip', 'modules/video-clip/funcs/.htaccess', 1493389352, 0), 
(860, 'module', 'video-clip', 'modules/video-clip/funcs/index.html', 1493389352, 0), 
(861, 'module', 'video-clip', 'modules/video-clip/funcs/main.php', 1493389352, 0), 
(862, 'module', 'video-clip', 'modules/video-clip/funcs/rss.php', 1493389352, 0), 
(863, 'module', 'video-clip', 'modules/video-clip/funcs/sitemap.php', 1493389352, 0), 
(864, 'module', 'video-clip', 'modules/video-clip/functions.php', 1493389352, 0), 
(865, 'module', 'video-clip', 'modules/video-clip/index.html', 1493389352, 0), 
(866, 'module', 'video-clip', 'modules/video-clip/language/.htaccess', 1493389352, 0), 
(867, 'module', 'video-clip', 'modules/video-clip/language/admin_en.php', 1493389352, 0), 
(868, 'module', 'video-clip', 'modules/video-clip/language/admin_vi.php', 1493389352, 0), 
(869, 'module', 'video-clip', 'modules/video-clip/language/en.php', 1493389352, 0), 
(870, 'module', 'video-clip', 'modules/video-clip/language/index.html', 1493389352, 0), 
(871, 'module', 'video-clip', 'modules/video-clip/language/vi.php', 1493389352, 0), 
(872, 'module', 'video-clip', 'modules/video-clip/menu.php', 1493389352, 0), 
(873, 'module', 'video-clip', 'modules/video-clip/mobile/.htaccess', 1493389352, 0), 
(874, 'module', 'video-clip', 'modules/video-clip/mobile/index.html', 1493389352, 0), 
(875, 'module', 'video-clip', 'modules/video-clip/mobile/main.php', 1493389352, 0), 
(876, 'module', 'video-clip', 'modules/video-clip/rssdata.php', 1493389352, 0), 
(877, 'module', 'video-clip', 'modules/video-clip/search.php', 1493389352, 0), 
(878, 'module', 'video-clip', 'modules/video-clip/version.php', 1493389352, 0), 
(879, 'module', 'video-clip', 'themes/admin_default/css/video-clip.css', 1493389352, 0), 
(880, 'module', 'video-clip', 'themes/admin_default/images/video-clip/disabled.png', 1493389352, 0), 
(881, 'module', 'video-clip', 'themes/admin_default/images/video-clip/enabled.png', 1493389352, 0), 
(882, 'module', 'video-clip', 'themes/admin_default/images/video-clip/index.html', 1493389352, 0), 
(883, 'module', 'video-clip', 'themes/admin_default/js/video-clip.js', 1493389352, 0), 
(884, 'module', 'video-clip', 'themes/admin_default/modules/video-clip/.htaccess', 1493389352, 0), 
(885, 'module', 'video-clip', 'themes/admin_default/modules/video-clip/cbroken.tpl', 1493389352, 0), 
(886, 'module', 'video-clip', 'themes/admin_default/modules/video-clip/config.tpl', 1493389352, 0), 
(887, 'module', 'video-clip', 'themes/admin_default/modules/video-clip/index.html', 1493389352, 0), 
(888, 'module', 'video-clip', 'themes/admin_default/modules/video-clip/main.tpl', 1493389352, 0), 
(889, 'module', 'video-clip', 'themes/admin_default/modules/video-clip/topic_add.tpl', 1493389352, 0), 
(890, 'module', 'video-clip', 'themes/admin_default/modules/video-clip/topic_list.tpl', 1493389352, 0), 
(891, 'module', 'video-clip', 'themes/admin_default/modules/video-clip/vbroken.tpl', 1493389352, 0), 
(892, 'module', 'video-clip', 'themes/default/css/video-clip.css', 1493389352, 0), 
(893, 'module', 'video-clip', 'themes/default/images/video-clip/current.png', 1493389352, 0), 
(894, 'module', 'video-clip', 'themes/default/images/video-clip/icons.png', 1493389352, 0), 
(895, 'module', 'video-clip', 'themes/default/images/video-clip/index.html', 1493389352, 0), 
(896, 'module', 'video-clip', 'themes/default/images/video-clip/jquery/index.html', 1493389352, 0), 
(897, 'module', 'video-clip', 'themes/default/images/video-clip/jquery/jquery.autoresize.js', 1493389352, 0), 
(898, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/index.html', 1493389352, 0), 
(899, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/jw-icons.ttf', 1493389352, 0), 
(900, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/jw-icons.woff', 1493389352, 0), 
(901, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/jwplayer.flash.swf', 1493389352, 0), 
(902, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/jwplayer.js', 1493389352, 0), 
(903, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/jwplayer.loader.swf', 1493389352, 0), 
(904, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/polyfills.base64.js', 1493389352, 0), 
(905, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/polyfills.intersection-observer.js', 1493389352, 0), 
(906, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/polyfills.promise.js', 1493389352, 0), 
(907, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/polyfills.vttrenderer.js', 1493389352, 0), 
(908, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/provider.cast.js', 1493389352, 0), 
(909, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/provider.flash.js', 1493389352, 0), 
(910, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/provider.hlsjs.js', 1493389352, 0), 
(911, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/provider.html5.js', 1493389352, 0), 
(912, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/provider.shaka.js', 1493389352, 0), 
(913, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/provider.youtube.js', 1493389352, 0), 
(914, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/skins/beelden.css', 1493389352, 0), 
(915, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/skins/bekle.css', 1493389352, 0), 
(916, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/skins/five.css', 1493389352, 0), 
(917, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/skins/glow.css', 1493389352, 0), 
(918, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/skins/index.html', 1493389352, 0), 
(919, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/skins/roundster.css', 1493389352, 0), 
(920, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/skins/seven.css', 1493389352, 0), 
(921, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/skins/six.css', 1493389352, 0), 
(922, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/skins/stormtrooper.css', 1493389352, 0), 
(923, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/skins/vapor.css', 1493389352, 0), 
(924, 'module', 'video-clip', 'themes/default/images/video-clip/jwplayer/vttparser.js', 1493389352, 0), 
(925, 'module', 'video-clip', 'themes/default/images/video-clip/like.png', 1493389352, 0), 
(926, 'module', 'video-clip', 'themes/default/images/video-clip/play-small.png', 1493389352, 0), 
(927, 'module', 'video-clip', 'themes/default/images/video-clip/play.png', 1493389352, 0), 
(928, 'module', 'video-clip', 'themes/default/images/video-clip/video.png', 1493389352, 0), 
(929, 'module', 'video-clip', 'themes/default/images/video-clip/wait.gif', 1493389352, 0), 
(930, 'module', 'video-clip', 'themes/default/images/video-clip/Zicons.png', 1493389352, 0), 
(931, 'module', 'video-clip', 'themes/default/js/video-clip.js', 1493389352, 0), 
(932, 'module', 'video-clip', 'themes/default/modules/video-clip/.htaccess', 1493389352, 0), 
(933, 'module', 'video-clip', 'themes/default/modules/video-clip/block.box_video.tpl', 1493389352, 0), 
(934, 'module', 'video-clip', 'themes/default/modules/video-clip/block_new_image_video.tpl', 1493389352, 0), 
(935, 'module', 'video-clip', 'themes/default/modules/video-clip/block_new_video.tpl', 1493389352, 0), 
(936, 'module', 'video-clip', 'themes/default/modules/video-clip/block_top_video.tpl', 1493389352, 0), 
(937, 'module', 'video-clip', 'themes/default/modules/video-clip/detail.tpl', 1493389352, 0), 
(938, 'module', 'video-clip', 'themes/default/modules/video-clip/index.html', 1493389352, 0), 
(939, 'module', 'video-clip', 'themes/default/modules/video-clip/main.tpl', 1493389352, 0), 
(940, 'module', 'video-clip', 'themes/mobile_default/css/video-clip.css', 1493389352, 0), 
(941, 'module', 'video-clip', 'themes/mobile_default/images/video-clip/index.html', 1493389352, 0), 
(942, 'module', 'video-clip', 'themes/mobile_default/images/video-clip/play.png', 1493389352, 0), 
(943, 'module', 'video-clip', 'themes/mobile_default/images/video-clip/video.png', 1493389352, 0), 
(944, 'module', 'video-clip', 'themes/mobile_default/modules/video-clip/.htaccess', 1493389352, 0), 
(945, 'module', 'video-clip', 'themes/mobile_default/modules/video-clip/index.html', 1493389352, 0), 
(946, 'module', 'video-clip', 'themes/mobile_default/modules/video-clip/main.tpl', 1493389352, 0), 
(947, 'block', 'global.fb_chat.php', 'themes/default/blocks/global.fb_chat.ini', 1493390284, 0), 
(948, 'block', 'global.fb_chat.php', 'themes/default/blocks/global.fb_chat.php', 1493390284, 0), 
(949, 'block', 'global.fb_chat.php', 'themes/default/blocks/global.fb_chat.tpl', 1493390284, 0), 
(950, 'block', 'global.fb_chat.php', 'themes/default/language/block.global.fb_chat.php', 1493390284, 0), 
(951, 'block', 'global.facebook_page_plugin.php', 'themes/default/blocks/global.facebook_page_plugin.ini', 1493391371, 0), 
(952, 'block', 'global.facebook_page_plugin.php', 'themes/default/blocks/global.facebook_page_plugin.php', 1493391371, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_googleplus`
--

DROP TABLE IF EXISTS `ytt_googleplus`;
CREATE TABLE `ytt_googleplus` (
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idprofile` varchar(25)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  UNIQUE KEY `idprofile` (`idprofile`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_language`
--

DROP TABLE IF EXISTS `ytt_language`;
CREATE TABLE `ytt_language` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `idfile` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_key` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filelang` (`idfile`,`lang_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_language_file`
--

DROP TABLE IF EXISTS `ytt_language_file`;
CREATE TABLE `ytt_language_file` (
  `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idfile`),
  UNIQUE KEY `module` (`module`,`admin_file`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_logs`
--

DROP TABLE IF EXISTS `ytt_logs`;
CREATE TABLE `ytt_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(10)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL,
  `log_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  AUTO_INCREMENT=371  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_logs`
--

INSERT INTO `ytt_logs` VALUES
(1, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1493308560), 
(2, 'vi', 'extensions', 'Cài đặt ứng dụng', 'module-shops-4-official.zip', '', 1, 1493308827), 
(3, 'vi', 'modules', 'Thiết lập module mới shops', '', '', 1, 1493308887), 
(4, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1493308907), 
(5, 'vi', 'themes', 'Thêm block', 'Name : global block relates product', '', 1, 1493309938), 
(6, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1493310335), 
(7, 'vi', 'about', 'Edit', 'ID: 2', '', 1, 1493310359), 
(8, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1493310656), 
(9, 'vi', 'menu', 'delete menu id: 1', 'Top Menu', '', 1, 1493310829), 
(10, 'vi', 'menu', 'delete menu id: 2', 'Top Menu', '', 1, 1493311415), 
(11, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1493311559), 
(12, 'vi', 'menu', 'Delete menu item', 'Item ID 255', '', 1, 1493311598), 
(13, 'vi', 'menu', 'Delete menu item', 'Item ID 256', '', 1, 1493311598), 
(14, 'vi', 'menu', 'Delete menu item', 'Item ID 257', '', 1, 1493311598), 
(15, 'vi', 'menu', 'Delete menu item', 'Item ID 258', '', 1, 1493311598), 
(16, 'vi', 'menu', 'Delete menu item', 'Item ID 259', '', 1, 1493311598), 
(17, 'vi', 'menu', 'Delete menu item', 'Item ID 272', '', 1, 1493311598), 
(18, 'vi', 'menu', 'Delete menu item', 'Item ID 273', '', 1, 1493311598), 
(19, 'vi', 'menu', 'Delete menu item', 'Item ID 274', '', 1, 1493311598), 
(20, 'vi', 'menu', 'Delete menu item', 'Item ID 275', '', 1, 1493311598), 
(21, 'vi', 'menu', 'Delete menu item', 'Item ID 271', '', 1, 1493311598), 
(22, 'vi', 'menu', 'Delete menu item', 'Item ID 277', '', 1, 1493311598), 
(23, 'vi', 'menu', 'Delete menu item', 'Item ID 278', '', 1, 1493311598), 
(24, 'vi', 'menu', 'Delete menu item', 'Item ID 279', '', 1, 1493311598), 
(25, 'vi', 'menu', 'Delete menu item', 'Item ID 280', '', 1, 1493311598), 
(26, 'vi', 'menu', 'Delete menu item', 'Item ID 276', '', 1, 1493311598), 
(27, 'vi', 'menu', 'Delete menu item', 'Item ID 282', '', 1, 1493311598), 
(28, 'vi', 'menu', 'Delete menu item', 'Item ID 283', '', 1, 1493311598), 
(29, 'vi', 'menu', 'Delete menu item', 'Item ID 284', '', 1, 1493311598), 
(30, 'vi', 'menu', 'Delete menu item', 'Item ID 281', '', 1, 1493311598), 
(31, 'vi', 'menu', 'Delete menu item', 'Item ID 286', '', 1, 1493311598), 
(32, 'vi', 'menu', 'Delete menu item', 'Item ID 287', '', 1, 1493311598), 
(33, 'vi', 'menu', 'Delete menu item', 'Item ID 288', '', 1, 1493311598), 
(34, 'vi', 'menu', 'Delete menu item', 'Item ID 289', '', 1, 1493311598), 
(35, 'vi', 'menu', 'Delete menu item', 'Item ID 290', '', 1, 1493311598), 
(36, 'vi', 'menu', 'Delete menu item', 'Item ID 285', '', 1, 1493311598), 
(37, 'vi', 'menu', 'Delete menu item', 'Item ID 266', '', 1, 1493311687), 
(38, 'vi', 'menu', 'Delete menu item', 'Item ID 267', '', 1, 1493311687), 
(39, 'vi', 'menu', 'Delete menu item', 'Item ID 245', '', 1, 1493311734), 
(40, 'vi', 'menu', 'Delete menu item', 'Item ID 246', '', 1, 1493311734), 
(41, 'vi', 'menu', 'Delete menu item', 'Item ID 247', '', 1, 1493311734), 
(42, 'vi', 'menu', 'Delete menu item', 'Item ID 248', '', 1, 1493311734), 
(43, 'vi', 'menu', 'Delete menu item', 'Item ID 249', '', 1, 1493311734), 
(44, 'vi', 'menu', 'Delete menu item', 'Item ID 250', '', 1, 1493311734), 
(45, 'vi', 'menu', 'Delete menu item', 'Item ID 235', '', 1, 1493311789), 
(46, 'vi', 'menu', 'Delete menu item', 'Item ID 236', '', 1, 1493311789), 
(47, 'vi', 'menu', 'Delete menu item', 'Item ID 237', '', 1, 1493311789), 
(48, 'vi', 'about', 'Delete', 'ID: 3', '', 1, 1493311855), 
(49, 'vi', 'about', 'Delete', 'ID: 5', '', 1, 1493311857), 
(50, 'vi', 'about', 'Delete', 'ID: 4', '', 1, 1493311859), 
(51, 'vi', 'about', 'Delete', 'ID: 7', '', 1, 1493311861), 
(52, 'vi', 'about', 'Delete', 'ID: 8', '', 1, 1493311862), 
(53, 'vi', 'about', 'Delete', 'ID: 6', '', 1, 1493311865), 
(54, 'vi', 'users', 'Kích hoạt tài khoản', 'userid: 2 - username: ngogiangthanh', '', 1, 1493312102), 
(55, 'vi', 'users', '[ngogiangthanh] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1493312126), 
(56, 'vi', 'themes', 'Thêm block', 'Name : global block news cat', '', 1, 1493312701), 
(57, 'vi', 'themes', 'Sửa block', 'Name : global block news cat', '', 1, 1493312728), 
(58, 'vi', 'news', 'Sửa bài viết', 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', '', 1, 1493313927), 
(59, 'vi', 'news', 'Sửa bài viết', 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', '', 1, 1493313940), 
(60, 'vi', 'news', 'Sửa bài viết', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', '', 1, 1493313982), 
(61, 'vi', 'news', 'Xóa Chuyên mục và các bài viết', 'Thông cáo báo chí', '', 1, 1493313999), 
(62, 'vi', 'news', 'Xóa Chuyên mục và các bài viết', 'Bản tin nội bộ', '', 1, 1493314001), 
(63, 'vi', 'news', 'Xóa Chuyên mục và các bài viết', 'Tin công nghệ', '', 1, 1493314004), 
(64, 'vi', 'news', 'Sửa bài viết', 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', '', 1, 1493314039), 
(65, 'vi', 'news', 'Sửa bài viết', 'Chương trình thực tập sinh tại công ty VINADES', '', 1, 1493314050), 
(66, 'vi', 'news', 'Sửa bài viết', 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', '', 1, 1493314066), 
(67, 'vi', 'news', 'Sửa bài viết', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', '', 1, 1493314076), 
(68, 'vi', 'news', 'Xóa Chuyên mục và các bài viết', 'Tin tức', '', 1, 1493314099), 
(69, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1493314234), 
(70, 'vi', 'menu', 'Delete menu item', 'Item ID 292', '', 1, 1493314323), 
(71, 'vi', 'news', 'log_del_topic', 'topicid 1', '', 1, 1493314535), 
(72, 'vi', 'users', '[ngogiangthanh] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 0, 1493315248), 
(73, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1493315457), 
(74, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1493315470), 
(75, 'vi', 'shops', 'log_edit_catalog', 'id 2', '', 1, 1493315583), 
(76, 'vi', 'shops', 'log_edit_catalog', 'id 3', '', 1, 1493315623), 
(77, 'vi', 'shops', 'log_edit_catalog', 'id 4', '', 1, 1493315654), 
(78, 'vi', 'shops', 'log_del_catalog', 'id 22', '', 1, 1493315687), 
(79, 'vi', 'shops', 'log_del_catalog', 'id 21', '', 1, 1493315689), 
(80, 'vi', 'shops', 'log_del_catalog', 'id 20', '', 1, 1493315691), 
(81, 'vi', 'shops', 'log_del_catalog', 'id 19', '', 1, 1493315692), 
(82, 'vi', 'shops', 'log_del_catalog', 'id 18', '', 1, 1493315694), 
(83, 'vi', 'shops', 'log_del_catalog', 'id 5', '', 1, 1493315702), 
(84, 'vi', 'shops', 'Edit A Product', 'ID: 2', '', 1, 1493315740), 
(85, 'vi', 'shops', 'Edit A Product', 'ID: 1', '', 1, 1493315784), 
(86, 'vi', 'shops', 'log_del_catalog', 'id 6', '', 1, 1493315797), 
(87, 'vi', 'shops', 'log_del_catalog', 'id 8', '', 1, 1493315816), 
(88, 'vi', 'shops', 'log_del_catalog', 'id 9', '', 1, 1493315820), 
(89, 'vi', 'shops', 'log_del_catalog', 'id 14', '', 1, 1493315837), 
(90, 'vi', 'shops', 'log_del_catalog', 'id 16', '', 1, 1493315847), 
(91, 'vi', 'shops', 'log_del_catalog', 'id 12', '', 1, 1493315869), 
(92, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1493316105), 
(93, 'vi', 'themes', 'Thêm block', 'Name : Ý tưởng nổi bật', '', 1, 1493316212), 
(94, 'vi', 'themes', 'Sửa block', 'Name : Ý tưởng nổi bật', '', 1, 1493316232), 
(95, 'vi', 'themes', 'Sửa block', 'Name : Ý tưởng nổi bật', '', 1, 1493316251), 
(96, 'vi', 'themes', 'Sửa block', 'Name : Cần tìm giải pháp cấp thiết', '', 1, 1493316357), 
(97, 'vi', 'themes', 'Sửa block', 'Name : Ý tưởng nổi bật', '', 1, 1493316376), 
(98, 'vi', 'themes', 'Sửa block', 'Name : Cần tìm giải pháp cấp thiết', '', 1, 1493316446), 
(99, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', '', 1, 1493316676), 
(100, 'vi', 'themes', 'Sửa block', 'Name : Ý tưởng mới', '', 1, 1493316952), 
(101, 'vi', 'themes', 'Sửa block', 'Name : Ý tưởng mới', '', 1, 1493317012), 
(102, 'vi', 'themes', 'Sửa block', 'Name : Ý tưởng mới', '', 1, 1493317124), 
(103, 'vi', 'themes', 'Thêm block', 'Name : global voting', '', 1, 1493317274), 
(104, 'vi', 'themes', 'Thêm block', 'Name : Khảo sát', '', 1, 1493317323), 
(105, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột trái', '', 1, 1493317376), 
(106, 'vi', 'themes', 'Sửa block', 'Name : Khảo sát', '', 1, 1493317404), 
(107, 'vi', 'themes', 'Sửa block', 'Name : Khảo sát', '', 1, 1493317424), 
(108, 'vi', 'themes', 'Sửa block', 'Name : global block category', '', 1, 1493317448), 
(109, 'vi', 'themes', 'Sửa block', 'Name : global voting random', '', 1, 1493317508), 
(110, 'vi', 'themes', 'Sửa block', 'Name : Khảo sát', '', 1, 1493317538), 
(111, 'vi', 'themes', 'Thêm block', 'Name : global block category', '', 1, 1493317722), 
(112, 'vi', 'users', '[ngogiangthanh] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1493317783), 
(113, 'vi', 'themes', 'Sửa block', 'Name : Copyright', '', 1, 1493318174), 
(114, 'vi', 'themes', 'Sửa block', 'Name : global company info', '', 1, 1493318374), 
(115, 'vi', 'themes', 'Sửa block', 'Name : global company info', '', 1, 1493318407), 
(116, 'vi', 'freecontent', 'Edit Content', 'ID: 1', '', 1, 1493318588), 
(117, 'vi', 'freecontent', 'Del Content', 'ID:5', '', 1, 1493318599), 
(118, 'vi', 'freecontent', 'Del Content', 'ID:4', '', 1, 1493318603), 
(119, 'vi', 'freecontent', 'Edit Content', 'ID: 2', '', 1, 1493318676), 
(120, 'vi', 'freecontent', 'Del Content', 'ID:3', '', 1, 1493318684), 
(121, 'vi', 'themes', 'Sửa block', 'Name : Copyright', '', 1, 1493318714), 
(122, 'vi', 'about', 'Edit', 'ID: 2', '', 1, 1493318883), 
(123, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1493318897), 
(124, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1493319174), 
(125, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1493319242), 
(126, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1493319276), 
(127, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1493319696), 
(128, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1493320503), 
(129, 'vi', 'themes', 'Thêm block', 'Name : global block category', '', 1, 1493321161), 
(130, 'vi', 'themes', 'Sửa block', 'Name : global block category', '', 1, 1493321170), 
(131, 'vi', 'themes', 'Sửa block', 'Name : global block category', '', 1, 1493321182), 
(132, 'vi', 'themes', 'Thêm block', 'Name : global banners', '', 1, 1493321208), 
(133, 'vi', 'themes', 'Sửa block', 'Name : global banners', '', 1, 1493321226), 
(134, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1493342681), 
(135, 'vi', 'themes', 'Sửa block', 'Name : global company info', '', 1, 1493343676), 
(136, 'vi', 'themes', 'Sửa block', 'Name : Thông tin cơ quan chủ quản', '', 1, 1493343734), 
(137, 'vi', 'themes', 'Sửa block', 'Name : Online button', '', 1, 1493343758), 
(138, 'vi', 'themes', 'Sửa block', 'Name : Online button', '', 1, 1493343779), 
(139, 'vi', 'upload', 'Upload file', 'uploads/favicon.ico', '', 1, 1493344190), 
(140, 'vi', 'upload', 'Upload file', 'uploads/ytuongtre.png', '', 1, 1493344315), 
(141, 'vi', 'language', 'Cài đặt mới Ngôn ngữ data', ' langkey : en', '', 1, 1493344733), 
(142, 'en', 'language', 'Hiển thị ngoài site', ' langkey : en [ Có ]', '', 1, 1493344778), 
(143, 'en', 'language', 'Hiển thị ngoài site', ' langkey : en [ Không ]', '', 1, 1493344835), 
(144, 'en', 'language', 'Xóa ngôn ngữ giao diện', 'fr --> Français', '', 1, 1493344845), 
(145, 'vi', 'contact', 'log_edit_row', 'id: 1 Phòng Hỗ Trợ Đầu Tư Và Khởi Nghiệp', '', 1, 1493345189), 
(146, 'vi', 'contact', 'log_edit_row', 'id: 2 Phòng Thông Tin', '', 1, 1493345242), 
(147, 'vi', 'contact', 'log_edit_row', 'id: 1 Phòng Hỗ Trợ Đầu Tư Và Khởi Nghiệp', '', 1, 1493345275), 
(148, 'vi', 'contact', 'log_edit_row', 'id: 1 Phòng Hỗ Trợ Đầu Tư Và Khởi Nghiệp', '', 1, 1493345309), 
(149, 'vi', 'contact', 'log_edit_row', 'id: 1 Phòng Hỗ Trợ Đầu Tư Khởi Nghiệp', '', 1, 1493345368), 
(150, 'vi', 'themes', 'Thêm block', 'Name : global social', '', 1, 1493345508), 
(151, 'vi', 'themes', 'Sửa block', 'Name : global social', '', 1, 1493345529), 
(152, 'vi', 'siteterms', 'Add', ' ', '', 1, 1493347648), 
(153, 'vi', 'themes', 'Sửa block', 'Name : Các chuyên mục chính', '', 1, 1493347940), 
(154, 'vi', 'upload', 'Upload file', 'uploads/menu/idea.png', '', 1, 1493348350), 
(155, 'vi', 'upload', 'Upload file', 'uploads/menu/idea-1.png', '', 1, 1493348443), 
(156, 'vi', 'themes', 'Sửa block', 'Name : global QR code', '', 1, 1493348661), 
(157, 'vi', 'themes', 'Sửa block', 'Name : Công ty chủ quản', '', 1, 1493349075), 
(158, 'vi', 'themes', 'Sửa block', 'Name : Công ty chủ quản', '', 1, 1493349134), 
(159, 'vi', 'themes', 'Sửa block', 'Name : Copyright', '', 1, 1493349199), 
(160, 'vi', 'themes', 'Sửa block', 'Name : Các chuyên mục chính', '', 1, 1493349271), 
(161, 'vi', 'themes', 'Sửa block', 'Name : Các chuyên mục chính', '', 1, 1493349307), 
(162, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1493349472), 
(163, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1493349735), 
(164, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1493349755), 
(165, 'vi', 'modules', 'Sửa module &ldquo;news&rdquo;', '', '', 1, 1493350069), 
(166, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'VICTORIA SECRECT', '', 1, 1493350451), 
(167, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'THÁI TUẤN', '', 1, 1493350453), 
(168, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'KELVIN', '', 1, 1493350455), 
(169, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'MATTANA', '', 1, 1493350457), 
(170, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'Việt Tiến', '', 1, 1493350468), 
(171, 'vi', 'shops', 'Sửa nhóm Ý tưởng', 'Công nghệ thông minh', '', 1, 1493350489), 
(172, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'AUSTRALIA', '', 1, 1493350510), 
(173, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'ANH', '', 1, 1493350513), 
(174, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'PHÁP', '', 1, 1493350515), 
(175, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'TRUNG QUỐC', '', 1, 1493350516), 
(176, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'THÁI LAN', '', 1, 1493350525), 
(177, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'ĐỨC', '', 1, 1493350534), 
(178, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'HÀN QUỐC', '', 1, 1493350535), 
(179, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'VIỆT NAM', '', 1, 1493350538), 
(180, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'ĐỎ', '', 1, 1493350560), 
(181, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'VÀNG', '', 1, 1493350562), 
(182, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'XANH NGỌC', '', 1, 1493350564), 
(183, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'XANH RÊU', '', 1, 1493350587), 
(184, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'TÍM', '', 1, 1493350590), 
(185, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'XÁM', '', 1, 1493350593), 
(186, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'XANH NƯỚC BIỂN', '', 1, 1493350596), 
(187, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'CAM', '', 1, 1493350599), 
(188, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'BẠC', '', 1, 1493350601), 
(189, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'MÀU DA', '', 1, 1493350603), 
(190, 'vi', 'shops', 'Sửa nhóm Ý tưởng', 'Công nghệ di động', '', 1, 1493350616), 
(191, 'vi', 'shops', 'Sửa nhóm Ý tưởng', 'Sản xuất rau sạch', '', 1, 1493350635), 
(192, 'vi', 'shops', 'Sửa nhóm Ý tưởng', 'Kinh doanh hiệu quả', '', 1, 1493350661), 
(193, 'vi', 'shops', 'Sửa nhóm Ý tưởng', 'Khác', '', 1, 1493350679), 
(194, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'F', '', 1, 1493350688), 
(195, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'L', '', 1, 1493350691), 
(196, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'M', '', 1, 1493350693), 
(197, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'S', '', 1, 1493350693), 
(198, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'XL', '', 1, 1493350694), 
(199, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'XXL', '', 1, 1493350695), 
(200, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'XXXL', '', 1, 1493350696), 
(201, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', '42', '', 1, 1493350709), 
(202, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', '41', '', 1, 1493350710), 
(203, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', '40', '', 1, 1493350711), 
(204, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', '39', '', 1, 1493350712), 
(205, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'COTTON', '', 1, 1493350736), 
(206, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'DẠ', '', 1, 1493350737), 
(207, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'JEANS', '', 1, 1493350737), 
(208, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'LANH', '', 1, 1493350739), 
(209, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'BÒ', '', 1, 1493350740), 
(210, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'THUN', '', 1, 1493350741), 
(211, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'TƠ TẰM', '', 1, 1493350742), 
(212, 'vi', 'shops', 'Xóa nhóm và các Ý tưởng', 'LỤA', '', 1, 1493350743), 
(213, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1493350891), 
(214, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1493350957), 
(215, 'vi', 'extensions', 'Cài đặt ứng dụng', 'global-slide-carousel-1-0.zip', '', 1, 1493351219), 
(216, 'vi', 'extensions', 'Cài đặt ứng dụng', 'nv4_module_slider.zip', '', 1, 1493351378), 
(217, 'vi', 'modules', 'Thiết lập module mới slider', '', '', 1, 1493351432), 
(218, 'vi', 'modules', 'Sửa module &ldquo;slider&rdquo;', '', '', 1, 1493351441), 
(219, 'vi', 'themes', 'Thêm block', 'Name : global block slider cat', '', 1, 1493351540), 
(220, 'vi', 'themes', 'Sửa block', 'Name : global block slider cat', '', 1, 1493351551), 
(221, 'vi', 'slider', 'Thêm chuyên mục', 'Công nghệ Thông tin', '', 1, 1493351621), 
(222, 'vi', 'upload', 'Upload file', 'uploads/slider/2017_04/it.jpg', '', 1, 1493351696), 
(223, 'vi', 'slider', 'Sửa bài viết', 'Công nghệ Thông tin', '', 1, 1493351711), 
(224, 'vi', 'themes', 'Sửa block', 'Name : global block slider cat', '', 1, 1493351735), 
(225, 'vi', 'slider', 'Sửa bài viết', 'Công nghệ Thông tin', '', 1, 1493351911), 
(226, 'vi', 'themes', 'Sửa block', 'Name : global block slider cat', '', 1, 1493352014), 
(227, 'vi', 'upload', 'Upload file', 'uploads/slider/2017_04/iframe1.png', '', 1, 1493352080), 
(228, 'vi', 'themes', 'Sửa block', 'Name : global block slider cat', '', 1, 1493352130), 
(229, 'vi', 'themes', 'Sửa block', 'Name : global block slider cat', '', 1, 1493352147), 
(230, 'vi', 'themes', 'Sửa block', 'Name : global block slider cat', '', 1, 1493352201), 
(231, 'vi', 'themes', 'Sửa block', 'Name : global block slider cat', '', 1, 1493352257), 
(232, 'vi', 'themes', 'Sửa block', 'Name : global block slider cat', '', 1, 1493352365), 
(233, 'vi', 'themes', 'Sửa block', 'Name : global block slider cat', '', 1, 1493352423), 
(234, 'vi', 'themes', 'Sửa block', 'Name : global block slider cat', '', 1, 1493352440), 
(235, 'vi', 'themes', 'Sửa block', 'Name : global block slider cat', '', 1, 1493352456), 
(236, 'vi', 'themes', 'Sửa block', 'Name : global block slider cat', '', 1, 1493352482), 
(237, 'vi', 'themes', 'Sửa block', 'Name : global block slider cat', '', 1, 1493352724), 
(238, 'vi', 'upload', 'Upload file', 'uploads/ytuong-banner.png', '', 1, 1493352830), 
(239, 'vi', 'upload', 'Công cụ ảnh', 'uploads/ytuong-banner_200_56.png', '', 1, 1493352889), 
(240, 'vi', 'themes', 'Thêm block', 'Name : global contact default', '', 1, 1493353532), 
(241, 'vi', 'themes', 'Sửa block', 'Name : Thông tin cơ quan chủ quản', '', 1, 1493354359), 
(242, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm', '', 1, 1493354384), 
(243, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm', '', 1, 1493354400), 
(244, 'vi', 'upload', 'Upload file', 'uploads/ytuong-banner-white.png', '', 1, 1493355174), 
(245, 'vi', 'upload', 'Công cụ ảnh', 'uploads/ytuong-banner-white_200_56.png', '', 1, 1493355181), 
(246, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1493366994), 
(247, 'vi', 'themes', 'Thêm block', 'Name : global block bxproduct center', '', 1, 1493367036), 
(248, 'vi', 'themes', 'Thêm block', 'Name : global block cart', '', 1, 1493367306), 
(249, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs', '', 1, 1493367476), 
(250, 'vi', 'themes', 'Sửa block', 'Name : global block bxproduct center', '', 1, 1493370372), 
(251, 'vi', 'themes', 'Sửa block', 'Name : Ý tưởng mới', '', 1, 1493370404), 
(252, 'vi', 'themes', 'Sửa block', 'Name : global block category', '', 1, 1493370483), 
(253, 'vi', 'themes', 'Sửa block', 'Name : global block category', '', 1, 1493370504), 
(254, 'vi', 'themes', 'Sửa block', 'Name : global block category', '', 1, 1493370554), 
(255, 'vi', 'themes', 'Sửa block', 'Name : global block category', '', 1, 1493370606), 
(256, 'vi', 'themes', 'Sửa block', 'Name : Danh sách quan tâm', '', 1, 1493370643), 
(257, 'vi', 'themes', 'Sửa block', 'Name : Danh sách quan tâm', '', 1, 1493371058), 
(258, 'vi', 'themes', 'Sửa block', 'Name : Danh sách quan tâm', '', 1, 1493371122), 
(259, 'vi', 'themes', 'Sửa block', 'Name : Danh sách quan tâm', '', 1, 1493371151), 
(260, 'vi', 'themes', 'Sửa block', 'Name : Danh sách quan tâm', '', 1, 1493371190), 
(261, 'vi', 'themes', 'Sửa block', 'Name : Danh sách quan tâm', '', 1, 1493371243), 
(262, 'vi', 'themes', 'Sửa block', 'Name : Danh sách ý tưởng quan tâm', '', 1, 1493371427), 
(263, 'vi', 'banners', 'log_edit_banner', 'bannerid 2', '', 1, 1493371533), 
(264, 'vi', 'banners', 'log_edit_plan', 'planid 1', '', 1, 1493371578), 
(265, 'vi', 'banners', 'log_edit_plan', 'planid 2', '', 1, 1493371592), 
(266, 'vi', 'banners', 'log_edit_plan', 'planid 3', '', 1, 1493371602), 
(267, 'vi', 'banners', 'log_edit_banner', 'bannerid 3', '', 1, 1493372646), 
(268, 'vi', 'banners', 'log_edit_banner', 'bannerid 2', '', 1, 1493372666), 
(269, 'vi', 'banners', 'log_add_banner', 'bannerid 4', '', 1, 1493372689), 
(270, 'vi', 'banners', 'log_edit_banner', 'bannerid 4', '', 1, 1493373181), 
(271, 'vi', 'banners', 'log_edit_banner', 'bannerid 3', '', 1, 1493373193), 
(272, 'vi', 'banners', 'log_edit_banner', 'bannerid 2', '', 1, 1493373202), 
(273, 'vi', 'banners', 'log_edit_banner', 'bannerid 4', '', 1, 1493373518), 
(274, 'vi', 'banners', 'log_edit_banner', 'bannerid 3', '', 1, 1493373533), 
(275, 'vi', 'banners', 'log_edit_banner', 'bannerid 2', '', 1, 1493373553), 
(276, 'vi', 'news', 'log_del_source', 'mic.gov.vn', '', 1, 1493374150), 
(277, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1493374312), 
(278, 'vi', 'themes', 'Sửa block', 'Name : Thông tin cơ quan chủ quản', '', 1, 1493375808), 
(279, 'vi', 'contact', 'log_edit_row', 'id: 1 Phòng Hỗ Trợ Đầu Tư Khởi Nghiệp', '', 1, 1493376124), 
(280, 'vi', 'contact', 'log_edit_row', 'id: 2 Phòng Thông Tin', '', 1, 1493376157), 
(281, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột phải', '', 1, 1493377018), 
(282, 'vi', 'themes', 'Sửa block', 'Name : Cần tìm giải pháp cấp thiết', '', 1, 1493377030), 
(283, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1493377107), 
(284, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1493377116), 
(285, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1493377166), 
(286, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1493385366), 
(287, 'vi', 'themes', 'Thêm block', 'Name : global block bxproduct center', '', 1, 1493385398), 
(288, 'vi', 'themes', 'Sửa block', 'Name : global block bxproduct center', '', 1, 1493385463), 
(289, 'vi', 'themes', 'Sửa block', 'Name : global block bxproduct center', '', 1, 1493385492), 
(290, 'vi', 'themes', 'Sửa block', 'Name : global block bxproduct center', '', 1, 1493385513), 
(291, 'vi', 'extensions', 'Cài đặt ứng dụng', 'shops-global-block-product-center-perpage-php-fix.zip', '', 1, 1493386909), 
(292, 'vi', 'themes', 'Thêm block', 'Name : phân trang', '', 1, 1493386978), 
(293, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1493387100), 
(294, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1493387126), 
(295, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1493387169), 
(296, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1493387196), 
(297, 'vi', 'modules', 'Thiết lập module mới download', '', '', 1, 1493387760), 
(298, 'vi', 'modules', 'Sửa module &ldquo;download&rdquo;', '', '', 1, 1493387772), 
(299, 'vi', 'themes', 'Thêm block', 'Name : global upload', '', 1, 1493387914), 
(300, 'vi', 'download', 'Thêm chủ đề', 'testing', '', 1, 1493387955), 
(301, 'vi', 'upload', 'Upload file', 'uploads/download/2017_04/files/pci-in-an-pham.pptx', '', 1, 1493388013), 
(302, 'vi', 'download', 'Thêm file mới', 'word test', '', 1, 1493388028), 
(303, 'vi', 'modules', 'Thiết lập module mới faq', '', '', 1, 1493388175), 
(304, 'vi', 'modules', 'Sửa module &ldquo;faq&rdquo;', '', '', 1, 1493388186), 
(305, 'vi', 'faq', 'log_add_cat', 'cat 1', '', 1, 1493388228), 
(306, 'vi', 'menu', 'Delete menu item', 'Item ID 306', '', 1, 1493388390), 
(307, 'vi', 'modules', 'Thiết lập module mới weblinks', '', '', 1, 1493388500), 
(308, 'vi', 'modules', 'Sửa module &ldquo;weblinks&rdquo;', '', '', 1, 1493388515), 
(309, 'vi', 'modules', 'Sửa module &ldquo;faq&rdquo;', '', '', 1, 1493388533), 
(310, 'vi', 'modules', 'Sửa module &ldquo;download&rdquo;', '', '', 1, 1493388554), 
(311, 'vi', 'modules', 'Sửa module &ldquo;slider&rdquo;', '', '', 1, 1493388567), 
(312, 'vi', 'modules', 'Sửa module &ldquo;faq&rdquo;', '', '', 1, 1493388577), 
(313, 'vi', 'modules', 'Sửa module &ldquo;download&rdquo;', '', '', 1, 1493388589), 
(314, 'vi', 'weblinks', 'Thêm chủ đề', 'chu de 1', '', 1, 1493388632), 
(315, 'vi', 'weblinks', 'Thêm liên kết mới', 'testing', '', 1, 1493388650), 
(316, 'vi', 'weblinks', 'Thêm liên kết mới', 'testing 2', '', 1, 1493388666), 
(317, 'vi', 'themes', 'Thêm block', 'Name : module block category', '', 1, 1493388692), 
(318, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs', '', 1, 1493388833), 
(319, 'vi', 'themes', 'Sửa block', 'Name : global block catalogs', '', 1, 1493388853), 
(320, 'vi', 'themes', 'Sửa block', 'Name : Danh sách ý tưởng quan tâm', '', 1, 1493388887), 
(321, 'vi', 'themes', 'Thêm block', 'Name : Danh sách ý tưởng quan tâm', '', 1, 1493389015), 
(322, 'vi', 'extensions', 'Cài đặt ứng dụng', 'module-video-clips-4-1-01.zip', '', 1, 1493389332), 
(323, 'vi', 'modules', 'Thiết lập module mới video-clip', '', '', 1, 1493389357), 
(324, 'vi', 'modules', 'Sửa module &ldquo;video-clip&rdquo;', '', '', 1, 1493389369), 
(325, 'vi', 'video-clip', 'Thêm thể loại mới', 'ID 1', '', 1, 1493389398), 
(326, 'vi', 'settings', 'log_cronjob_atc', 'id 6', '', 1, 1493389733), 
(327, 'vi', 'video-clip', 'Thêm video-clip', 'Id: 1', '', 1, 1493389853), 
(328, 'vi', 'video-clip', 'Thay đổi trạng thái hiển thị của video-clip', 'Id: 1', '', 1, 1493389869), 
(329, 'vi', 'video-clip', 'Thay đổi trạng thái hiển thị của video-clip', 'Id: 1', '', 1, 1493389871), 
(330, 'vi', 'themes', 'Thêm block', 'Name : global new videos', '', 1, 1493389914), 
(331, 'vi', 'themes', 'Thêm block', 'Name : module detail', '', 1, 1493389981), 
(332, 'vi', 'extensions', 'Cài đặt ứng dụng', 'block-fb-chat-master.zip', '', 1, 1493390279), 
(333, 'vi', 'themes', 'Thêm block', 'Name : global fb chat', '', 1, 1493390332), 
(334, 'vi', 'themes', 'Thêm block', 'Name : global fb chat', '', 1, 1493390469), 
(335, 'vi', 'themes', 'Sửa block', 'Name : global fb chat', '', 1, 1493390719), 
(336, 'vi', 'extensions', 'Cài đặt ứng dụng', 'global-facebook-page-plugin-responsive.zip', '', 1, 1493391369), 
(337, 'vi', 'themes', 'Thêm block', 'Name : global facebook page plugin', '', 1, 1493391428), 
(338, 'vi', 'themes', 'Sửa block', 'Name : global facebook page plugin', '', 1, 1493391440), 
(339, 'vi', 'themes', 'Sửa block', 'Name : global fb chat', '', 1, 1493391479), 
(340, 'vi', 'themes', 'Sửa block', 'Name : global facebook page plugin', '', 1, 1493391638), 
(341, 'vi', 'themes', 'Thêm block', 'Name : module block category', '', 1, 1493391781), 
(342, 'vi', 'modules', 'Kích hoạt module \"weblinks\"', 'Không', '', 1, 1493391887), 
(343, 'vi', 'modules', 'Sửa module &ldquo;freecontent&rdquo;', '', '', 1, 1493391956), 
(344, 'vi', 'freecontent', 'Edit Block', 'ID: 1', '', 1, 1493391984), 
(345, 'vi', 'modules', 'Sửa module &ldquo;freecontent&rdquo;', '', '', 1, 1493392024), 
(346, 'vi', 'themes', 'Sửa block', 'Name : Video', '', 1, 1493392107), 
(347, 'vi', 'banners', 'log_edit_banner', 'bannerid 2', '', 1, 1493392217), 
(348, 'vi', 'banners', 'log_edit_plan', 'planid 2', '', 1, 1493392267), 
(349, 'vi', 'banners', 'log_edit_plan', 'planid 3', '', 1, 1493392278), 
(350, 'vi', 'banners', 'log_edit_banner', 'bannerid 4', '', 1, 1493392290), 
(351, 'vi', 'themes', 'Sửa block', 'Name : module detail', '', 1, 1493392477), 
(352, 'vi', 'themes', 'Sửa block', 'Name : Xem video', '', 1, 1493392517), 
(353, 'vi', 'themes', 'Thêm block', 'Name : global block facebook comment box', '', 1, 1493392550), 
(354, 'vi', 'themes', 'Sửa block', 'Name : global block facebook comment box', '', 1, 1493392827), 
(355, 'vi', 'upload', 'Upload file', 'uploads/shops/files/ghi_chu.xlsx', '', 1, 1493394065), 
(356, 'vi', 'shops', 'Edit A Product', 'ID: 11', '', 1, 1493394089), 
(357, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1493394212), 
(358, 'vi', 'users', 'log_edit_user', 'userid 2', '', 1, 1493394296), 
(359, 'vi', 'users', '[ngogiangthanh] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1493394304), 
(360, 'vi', 'shops', 'Edit A Product', 'ID: 11', '', 1, 1493394492), 
(361, 'vi', 'shops', 'Edit A Product', 'ID: 10', '', 1, 1493394859), 
(362, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1493394972), 
(363, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1493394994), 
(364, 'vi', 'shops', 'Edit A Product', 'ID: 11', '', 1, 1493395163), 
(365, 'vi', 'shops', 'Edit A Product', 'ID: 10', '', 1, 1493395221), 
(366, 'vi', 'shops', 'Edit A Product', 'ID: 10', '', 1, 1493395221), 
(367, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1493395391), 
(368, 'vi', 'users', '[ngogiangthanh] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 0, 1493395418), 
(369, 'vi', 'users', 'log_edit_user', 'userid 2', '', 1, 1493395459), 
(370, 'vi', 'users', '[ngogiangthanh] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1493395462);


-- ---------------------------------------


--
-- Table structure for table `ytt_notification`
--

DROP TABLE IF EXISTS `ytt_notification`;
CREATE TABLE `ytt_notification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `send_to` mediumint(8) unsigned NOT NULL,
  `send_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `area` tinyint(1) unsigned NOT NULL,
  `language` char(3)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL,
  `view` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_plugin`
--

DROP TABLE IF EXISTS `ytt_plugin`;
CREATE TABLE `ytt_plugin` (
  `pid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `plugin_file` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `plugin_file` (`plugin_file`)
) ENGINE=MyISAM  AUTO_INCREMENT=3  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_plugin`
--

INSERT INTO `ytt_plugin` VALUES
(1, 'qrcode.php', 1, 1), 
(2, 'cdn_js_css_image.php', 3, 1);


-- ---------------------------------------


--
-- Table structure for table `ytt_sessions`
--

DROP TABLE IF EXISTS `ytt_sessions`;
CREATE TABLE `ytt_sessions` (
  `session_id` varchar(50)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `session_id` (`session_id`),
  KEY `onl_time` (`onl_time`)
) ENGINE=MEMORY  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_sessions`
--

INSERT INTO `ytt_sessions` VALUES
('a2qlegjijjjsev0pc1bflu7db4', 1, 'admin', 1493395857);


-- ---------------------------------------


--
-- Table structure for table `ytt_setup_extensions`
--

DROP TABLE IF EXISTS `ytt_setup_extensions`;
CREATE TABLE `ytt_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `basename` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `author` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  UNIQUE KEY `title` (`type`,`title`),
  KEY `id` (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_setup_extensions`
--

INSERT INTO `ytt_setup_extensions` VALUES
(0, 'module', 'about', 0, 0, 'page', 'about', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(1, 'module', 'news', 0, 1, 'news', 'news', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(31, 'module', 'shops', 0, 1, 'shops', 'shops', '4.0.29 1493308835', 1493308835, 'VINADES.,JSC (nukeviet.store@vinades.vn)', 'Module shops của hệ thống NukeViet'), 
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(24, 'module', 'users', 1, 1, 'users', 'users', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(282, 'module', 'page', 1, 1, 'page', 'page', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(312, 'module', 'freecontent', 0, 1, 'freecontent', 'freecontent', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(327, 'module', 'two-step-verification', 1, 0, 'two-step-verification', 'two_step_verification', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(311, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.1.02 1492966799', 1493308468, 'VINADES (contact@vinades.vn)', ''), 
(0, 'module', 'slider', 0, 1, 'slider', 'slider', '4.1.00 1493351400', 1493351400, 'Pa Software Solutions (contact@vinanat.vn)', ''), 
(25, 'module', 'download', 0, 1, 'download', 'download', '4.1.02 1493387755', 1493387755, 'VINADES.,JSC (nukeviet.store@vinades.vn)', 'Module download của hệ thống NukeViet'), 
(28, 'module', 'faq', 0, 1, 'faq', 'faq', '4.1.02 1493388171', 1493388171, 'VINADES.,JSC (nukeviet.store@vinades.vn)', 'Module faq của hệ thống NukeViet'), 
(26, 'module', 'weblinks', 0, 1, 'weblinks', 'weblinks', '4.1.02 1493388496', 1493388496, 'VINADES.,JSC (nukeviet.store@vinades.vn)', 'Module weblinks của hệ thống NukeViet'), 
(79, 'module', 'video-clip', 0, 1, 'video-clip', 'video_clip', '4.1.01 1493389352', 1493389352, 'hoaquynhtim99 (phantandung92@gmail.com)', 'Module nhỏ gọn nhưng tính năng đầy đủ và hấp dẫn, quản lý video và phát video, hiển thị video dưới dạng ajax mềm mại. Hỗ trợ tốt cho SEO.'), 
(326, 'block', 'global.fb_chat.php', 0, 0, 'global.fb_chat.php', 'global_fb_chat_php', '4.0.29 1493390284', 1493390284, 'webvang (webvang.vn@nguyenvan.vn)', 'Block tạo khung chat Fanpage của Facebook. Đây là block của giao diện'), 
(301, 'block', 'global.facebook_page_plugin.php', 0, 0, 'global.facebook_page_plugin.php', 'global_facebook_page_plugin_php', '1.1.00 1493391371', 1493391371, 'thaotrinh (bendoivn@gmail.com)', 'The Page Plugin lets you easily embed and promote any Facebook Page on your website. Just like on Facebook, your visitors can like and share the Page without having to leave your site.');


-- ---------------------------------------


--
-- Table structure for table `ytt_setup_language`
--

DROP TABLE IF EXISTS `ytt_setup_language`;
CREATE TABLE `ytt_setup_language` (
  `lang` char(2)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_setup_language`
--

INSERT INTO `ytt_setup_language` VALUES
('vi', 1, 1), 
('en', 1, 2);


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_block`
--

DROP TABLE IF EXISTS `ytt_shops_block`;
CREATE TABLE `ytt_shops_block` (
  `bid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL,
  UNIQUE KEY `bid` (`bid`,`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_block`
--

INSERT INTO `ytt_shops_block` VALUES
(1, 11, 0), 
(1, 10, 0), 
(1, 9, 6), 
(1, 8, 5), 
(1, 4, 4), 
(1, 3, 3), 
(1, 2, 2), 
(1, 1, 1);


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_block_cat`
--

DROP TABLE IF EXISTS `ytt_shops_block_cat`;
CREATE TABLE `ytt_shops_block_cat` (
  `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `image` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `vi_title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_keywords` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bid`),
  UNIQUE KEY `vi_alias` (`vi_alias`)
) ENGINE=MyISAM  AUTO_INCREMENT=3  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_block_cat`
--

INSERT INTO `ytt_shops_block_cat` VALUES
(1, 1, '', 1, 1433298294, 1493316819, 'Ý tưởng mới', 'y-tuong-moi', '', ''), 
(2, 0, '', 2, 1433298325, 1493316834, 'Ý tưởng nổi bật', 'y-tuong-noi-bat', '', '');


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_carrier`
--

DROP TABLE IF EXISTS `ytt_shops_carrier`;
CREATE TABLE `ytt_shops_carrier` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_carrier_config`
--

DROP TABLE IF EXISTS `ytt_shops_carrier_config`;
CREATE TABLE `ytt_shops_carrier_config` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_carrier_config_items`
--

DROP TABLE IF EXISTS `ytt_shops_carrier_config_items`;
CREATE TABLE `ytt_shops_carrier_config_items` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `cid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) unsigned NOT NULL,
  `add_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_carrier_config_location`
--

DROP TABLE IF EXISTS `ytt_shops_carrier_config_location`;
CREATE TABLE `ytt_shops_carrier_config_location` (
  `cid` tinyint(3) unsigned NOT NULL,
  `iid` smallint(4) unsigned NOT NULL,
  `lid` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `cid` (`cid`,`lid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_carrier_config_weight`
--

DROP TABLE IF EXISTS `ytt_shops_carrier_config_weight`;
CREATE TABLE `ytt_shops_carrier_config_weight` (
  `iid` smallint(4) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  `weight_unit` varchar(20)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` float NOT NULL,
  `carrier_price_unit` char(3)  COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_catalogs`
--

DROP TABLE IF EXISTS `ytt_shops_catalogs`;
CREATE TABLE `ytt_shops_catalogs` (
  `catid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `image` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `sort` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `viewcat` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` int(11) NOT NULL DEFAULT '0',
  `subcatid` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `newday` tinyint(4) NOT NULL DEFAULT '3',
  `typeprice` tinyint(4) NOT NULL DEFAULT '2',
  `form` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_price` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewdescriptionhtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admins` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cat_allow_point` tinyint(1) NOT NULL DEFAULT '0',
  `cat_number_point` tinyint(4) NOT NULL DEFAULT '0',
  `cat_number_product` tinyint(4) NOT NULL DEFAULT '0',
  `vi_title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_title_custom` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_descriptionhtml` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_keywords` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`catid`),
  UNIQUE KEY `vi_alias` (`vi_alias`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM  AUTO_INCREMENT=23  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_catalogs`
--

INSERT INTO `ytt_shops_catalogs` VALUES
(2, 0, '', 1, 1, 0, 'viewcat_page_list', 0, '', 1, 4, 7, 2, '', '', 0, '', 1432362728, 1493315583, '6', 0, 0, 0, 'Giải pháp kinh doanh', 'Giải pháp kinh doanh', 'giai-phap-kinh-doanh', '', '', 'giai phap kinh doanh'), 
(3, 0, '', 2, 2, 0, 'viewcat_page_list', 0, '', 1, 4, 7, 2, '', '', 0, '', 1432362789, 1493315623, '6', 0, 0, 0, 'Công nghệ thực phẩm', 'Công nghệ thực phẩm', 'cong-nghe-thuc-pham', '', '', 'công, nghệ, thực, phẩm'), 
(4, 0, '', 3, 3, 0, 'viewcat_page_list', 0, '', 1, 4, 7, 2, '', '', 0, '', 1432362835, 1493315654, '6', 0, 0, 0, 'Công nghệ Thông tin', 'Công nghệ thực phẩm', 'cong-nghe-thong-tin', '', '', 'công, nghệ, thực, phẩm');


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_coupons`
--

DROP TABLE IF EXISTS `ytt_shops_coupons`;
CREATE TABLE `ytt_shops_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(1)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'p',
  `discount` float NOT NULL DEFAULT '0',
  `total_amount` float NOT NULL DEFAULT '0',
  `date_start` int(11) unsigned NOT NULL DEFAULT '0',
  `date_end` int(11) unsigned NOT NULL DEFAULT '0',
  `uses_per_coupon` int(11) unsigned NOT NULL DEFAULT '0',
  `uses_per_coupon_count` int(11) NOT NULL DEFAULT '0',
  `date_added` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_coupons_history`
--

DROP TABLE IF EXISTS `ytt_shops_coupons_history`;
CREATE TABLE `ytt_shops_coupons_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `date_added` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_coupons_product`
--

DROP TABLE IF EXISTS `ytt_shops_coupons_product`;
CREATE TABLE `ytt_shops_coupons_product` (
  `cid` int(11) unsigned NOT NULL,
  `pid` int(11) unsigned NOT NULL,
  UNIQUE KEY `cid` (`cid`,`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_discounts`
--

DROP TABLE IF EXISTS `ytt_shops_discounts`;
CREATE TABLE `ytt_shops_discounts` (
  `did` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(6) NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `begin_time` int(11) unsigned NOT NULL DEFAULT '0',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0',
  `config` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`),
  KEY `begin_time` (`begin_time`,`end_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_field`
--

DROP TABLE IF EXISTS `ytt_shops_field`;
CREATE TABLE `ytt_shops_field` (
  `fid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `field` varchar(25)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `listtemplate` varchar(25)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `tab` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) unsigned NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect')  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback')  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) unsigned NOT NULL DEFAULT '0',
  `class` varchar(25)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  UNIQUE KEY `field` (`field`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_field_value_vi`
--

DROP TABLE IF EXISTS `ytt_shops_field_value_vi`;
CREATE TABLE `ytt_shops_field_value_vi` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rows_id` int(11) unsigned NOT NULL,
  `field_id` mediumint(8) NOT NULL,
  `field_value` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rows_id` (`rows_id`,`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_files`
--

DROP TABLE IF EXISTS `ytt_shops_files`;
CREATE TABLE `ytt_shops_files` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` int(11) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(10)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `download_groups` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `status` tinyint(1) unsigned DEFAULT '1',
  `vi_title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_files`
--

INSERT INTO `ytt_shops_files` VALUES
(1, 'ghi_chu.xlsx', 9569, 'xlsx', 1493394076, '-1', 1, 'testing', 'fsdfdsf');


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_files_rows`
--

DROP TABLE IF EXISTS `ytt_shops_files_rows`;
CREATE TABLE `ytt_shops_files_rows` (
  `id_rows` int(11) unsigned NOT NULL,
  `id_files` mediumint(8) unsigned NOT NULL,
  `download_hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `id_files` (`id_files`,`id_rows`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_files_rows`
--

INSERT INTO `ytt_shops_files_rows` VALUES
(10, 1, 0), 
(11, 1, 1);


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_group`
--

DROP TABLE IF EXISTS `ytt_shops_group`;
CREATE TABLE `ytt_shops_group` (
  `groupid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `image` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `sort` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `viewgroup` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubgroup` int(11) NOT NULL DEFAULT '0',
  `subgroupid` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `indetail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `numpro` int(11) unsigned NOT NULL DEFAULT '0',
  `in_order` tinyint(2) NOT NULL DEFAULT '0',
  `is_require` tinyint(1) NOT NULL DEFAULT '0',
  `vi_title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_keywords` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`groupid`),
  UNIQUE KEY `vi_alias` (`vi_alias`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM  AUTO_INCREMENT=58  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_group`
--

INSERT INTO `ytt_shops_group` VALUES
(1, 0, '', 1, 1, 0, 'viewcat_page_list', 0, '', 1, 0, 1432623061, 1493350489, 1, 1, 0, 'Công nghệ thông minh', 'Thuong-hieu', '', ''), 
(2, 0, '', 2, 2, 0, 'viewcat_page_list', 0, '', 1, 0, 1432623083, 1493350616, 1, 1, 0, 'Công nghệ di động', 'Mau-sac', '', ''), 
(3, 0, '', 3, 3, 0, 'viewcat_page_list', 0, '', 1, 0, 1432623101, 1493350635, 1, 1, 0, 'Sản xuất rau sạch', 'san-xuat-rau-sach', '', ''), 
(4, 0, '', 4, 4, 0, 'viewcat_page_list', 0, '', 1, 0, 1432623118, 1493350661, 1, 1, 0, 'Kinh doanh hiệu quả', 'kinh-doanh-hieu-qua', '', ''), 
(5, 0, '', 5, 5, 0, 'viewcat_page_list', 0, '', 1, 0, 1432623133, 1493350679, 0, 1, 0, 'Khác', 'khac', '', '');


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_group_cateid`
--

DROP TABLE IF EXISTS `ytt_shops_group_cateid`;
CREATE TABLE `ytt_shops_group_cateid` (
  `groupid` mediumint(8) unsigned NOT NULL,
  `cateid` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `groupid` (`groupid`,`cateid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_group_cateid`
--

INSERT INTO `ytt_shops_group_cateid` VALUES
(1, 2), 
(1, 3), 
(1, 4), 
(2, 2), 
(2, 3), 
(2, 4), 
(3, 2), 
(3, 3), 
(3, 4), 
(4, 2), 
(4, 3), 
(4, 4), 
(5, 2), 
(5, 3), 
(5, 4);


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_group_items`
--

DROP TABLE IF EXISTS `ytt_shops_group_items`;
CREATE TABLE `ytt_shops_group_items` (
  `pro_id` int(11) unsigned NOT NULL DEFAULT '0',
  `group_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pro_id`,`group_id`),
  KEY `pro_id` (`pro_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_group_items`
--

INSERT INTO `ytt_shops_group_items` VALUES
(9, 1), 
(9, 2), 
(9, 3), 
(9, 4);


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_group_quantity`
--

DROP TABLE IF EXISTS `ytt_shops_group_quantity`;
CREATE TABLE `ytt_shops_group_quantity` (
  `pro_id` int(11) unsigned NOT NULL DEFAULT '0',
  `listgroup` varchar(247)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  UNIQUE KEY `pro_id` (`pro_id`,`listgroup`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_location`
--

DROP TABLE IF EXISTS `ytt_shops_location`;
CREATE TABLE `ytt_shops_location` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `sort` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `numsub` int(11) NOT NULL DEFAULT '0',
  `subid` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_money_vi`
--

DROP TABLE IF EXISTS `ytt_shops_money_vi`;
CREATE TABLE `ytt_shops_money_vi` (
  `id` mediumint(11) NOT NULL,
  `code` char(3)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange` float NOT NULL DEFAULT '0',
  `round` varchar(10)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_format` varchar(5)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',||.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_money_vi`
--

INSERT INTO `ytt_shops_money_vi` VALUES
(840, 'USD', 'US Dollar', '21000', '0.01', ',||.'), 
(704, 'VND', 'Vietnam Dong', '1', '100', ',||.');


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_orders`
--

DROP TABLE IF EXISTS `ytt_shops_orders`;
CREATE TABLE `ytt_shops_orders` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_code` varchar(30)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `order_name` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_email` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_phone` varchar(20)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_address` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_note` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_id` int(11) unsigned NOT NULL DEFAULT '0',
  `shop_id` int(11) unsigned NOT NULL DEFAULT '0',
  `who_is` int(2) unsigned NOT NULL DEFAULT '0',
  `unit_total` char(3)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` double unsigned NOT NULL DEFAULT '0',
  `order_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `postip` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_view` tinyint(2) NOT NULL DEFAULT '0',
  `transaction_status` tinyint(4) NOT NULL,
  `transaction_id` int(11) NOT NULL DEFAULT '0',
  `transaction_count` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_code` (`order_code`),
  KEY `user_id` (`user_id`),
  KEY `order_time` (`order_time`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_orders_id`
--

DROP TABLE IF EXISTS `ytt_shops_orders_id`;
CREATE TABLE `ytt_shops_orders_id` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `proid` mediumint(9) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `price` int(11) NOT NULL,
  `discount_id` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`order_id`,`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_orders_id_group`
--

DROP TABLE IF EXISTS `ytt_shops_orders_id_group`;
CREATE TABLE `ytt_shops_orders_id_group` (
  `order_i` int(11) NOT NULL,
  `group_id` mediumint(8) NOT NULL,
  UNIQUE KEY `orderid` (`order_i`,`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_orders_shipping`
--

DROP TABLE IF EXISTS `ytt_shops_orders_shipping`;
CREATE TABLE `ytt_shops_orders_shipping` (
  `id` tinyint(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` tinyint(11) unsigned NOT NULL,
  `ship_name` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(25)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_location_id` mediumint(8) unsigned NOT NULL,
  `ship_address_extend` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_shops_id` tinyint(3) unsigned NOT NULL,
  `ship_carrier_id` tinyint(3) unsigned NOT NULL,
  `weight` float NOT NULL DEFAULT '0',
  `weight_unit` char(20)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ship_price` float NOT NULL DEFAULT '0',
  `ship_price_unit` char(3)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_payment`
--

DROP TABLE IF EXISTS `ytt_shops_payment`;
CREATE TABLE `ytt_shops_payment` (
  `payment` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentname` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `images_button` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`payment`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_point`
--

DROP TABLE IF EXISTS `ytt_shops_point`;
CREATE TABLE `ytt_shops_point` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `point_total` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_point_history`
--

DROP TABLE IF EXISTS `ytt_shops_point_history`;
CREATE TABLE `ytt_shops_point_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL,
  `point` int(11) NOT NULL DEFAULT '0',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_point_queue`
--

DROP TABLE IF EXISTS `ytt_shops_point_queue`;
CREATE TABLE `ytt_shops_point_queue` (
  `order_id` int(11) NOT NULL,
  `point` mediumint(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_review`
--

DROP TABLE IF EXISTS `ytt_shops_review`;
CREATE TABLE `ytt_shops_review` (
  `review_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `sender` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(1) NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`review_id`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_review`
--

INSERT INTO `ytt_shops_review` VALUES
(1, 11, 1, 'admindgfdgfd', 'dgfgf', 4, 1493320867, 1493320867, 1);


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_rows`
--

DROP TABLE IF EXISTS `ytt_shops_rows`;
CREATE TABLE `ytt_shops_rows` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `listcatid` int(11) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `product_code` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `product_number` int(11) NOT NULL DEFAULT '0',
  `product_price` float NOT NULL DEFAULT '0',
  `price_config` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `money_unit` char(3)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_unit` smallint(4) NOT NULL,
  `product_weight` float NOT NULL DEFAULT '0',
  `weight_unit` char(20)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount_id` smallint(6) NOT NULL DEFAULT '0',
  `homeimgfile` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `homeimgalt` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `otherimage` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_from` int(11) unsigned NOT NULL DEFAULT '0',
  `gift_to` int(11) unsigned NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ratingdetail` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `allowed_send` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitslm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num_sell` mediumint(8) NOT NULL DEFAULT '0',
  `showprice` tinyint(2) NOT NULL DEFAULT '0',
  `vi_title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_bodytext` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_gift_content` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_address` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vi_alias` (`vi_alias`),
  KEY `listcatid` (`listcatid`),
  KEY `user_id` (`user_id`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`)
) ENGINE=MyISAM  AUTO_INCREMENT=12  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_rows`
--

INSERT INTO `ytt_shops_rows` VALUES
(1, 2, 1, 1432363521, 1493315784, 1, 1432363521, 0, 2, 'V01', 19, '100', 'a:1:{i:1;a:3:{s:9:\"number_to\";i:1;s:5:\"price\";d:100;s:2:\"id\";i:1;}}', 'VND', 1, '20', 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'Váy Maxi sang trọng', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 11, 0, 0, 1, 1, 'Đầm Maxi sang trọng', 'Dam-Maxi-sang-trong', 'Đầm maxi thời trang', 'Sản phẩm thời trang<br  />&nbsp;<div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"800\" src=\"/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg\" width=\"800\" /></div>&nbsp;', '', ''), 
(2, 2, 1, 1432365534, 1493315740, 1, 1432365534, 0, 2, 'V02', 50, '100', 'a:1:{i:1;a:3:{s:9:\"number_to\";i:1;s:5:\"price\";d:100;s:2:\"id\";i:1;}}', 'VND', 1, '250', 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 2, 0, 0, 0, 1, 'Đầm maxi họa tiết', 'Dam-maxi-hoa-tiet', 'đầm maxi sang trọng', 'Sản phẩm thời trang<br  />&nbsp;<div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"800\" src=\"/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg\" width=\"800\" /></div>&nbsp;', '', ''), 
(3, 2, 1, 1432366714, 1432366740, 1, 1432366714, 0, 2, 'V03', 14, '50000', '', 'VND', 1, '250', 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'Chân Váy Công Sở', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 5, 0, 0, 1, 1, 'Chân Váy Công Sở', 'Chan-Vay-Cong-So', 'chân váy công sở', 'Sản phẩm thời trang<br  /> <div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"800\" src=\"/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg\" width=\"800\" /></div> ', '', ''), 
(4, 2, 1, 1432367089, 1432367089, 1, 1432367089, 0, 2, 'S000004', 17, '50000', '', 'VND', 1, '300', 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'chân váy caro', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 6, 0, 0, 3, 1, 'Chân váy caro', 'Chan-vay-caro', 'chân váy caro', 'Sản phẩm thời trang<br  /> <div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"800\" src=\"/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg\" width=\"800\" /></div> ', '', ''), 
(5, 4, 1, 1432367366, 1432367366, 1, 1432367366, 0, 2, 'S000005', 30, '0', '', 'VND', 1, '220', 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'áo somi lụa đẹp', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'Áo sơmi lụa', 'Ao-somi-lua', 'áo somi lụa đẹp', 'Sản phẩm thời trang<br  /> <div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"800\" src=\"/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg\" width=\"800\" /></div> ', '', ''), 
(6, 4, 1, 1432367846, 1432370007, 1, 1432367846, 0, 2, 'S000006', 15, '0', '', 'VND', 1, '300', 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 8, 0, 0, 0, 1, 'Áo sơ mi voan phối tay ren', 'Ao-so-mi-voan-phoi-tay-ren', '<h1><span style=\"font-size:14px;\">Áo sơ mi voan</span></h1>', 'Sản phẩm thời trang<br  /> <div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"800\" src=\"/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg\" width=\"800\" /></div> ', '', ''), 
(8, 4, 1, 1432605984, 1432605984, 1, 1432605984, 0, 2, 'S000008', 15, '120000', '', 'VND', 1, '200', 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'áo thun nữ', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'áo thun nữ họa tiết độc đáo', 'ao-thun-nu-hoa-tiet-doc-dao', 'áo thun nữ họa tiết độc đáo', 'Sản phẩm thời trang<br  /> <div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"800\" src=\"/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg\" width=\"800\" /></div> ', '', ''), 
(9, 3, 1, 1432606317, 1432629809, 1, 1432606317, 0, 2, 'S000009', 10, '100000', '', 'VND', 1, '500', 'g', 1, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'Giày da nữ gót vuông', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'Giày da nữ gót vuông', 'Giay-da-nu-got-vuong', 'Giày da nữ gót vuông', 'Sản phẩm thời trang<br  /> <div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"800\" src=\"/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg\" width=\"800\" /></div> ', '', ''), 
(10, 3, 1, 1432606522, 1493395221, 1, 1432606522, 0, 2, 'S000010', 10, '100000', 'a:1:{i:1;a:3:{s:9:\"number_to\";i:1;s:5:\"price\";d:100000;s:2:\"id\";i:1;}}', 'VND', 3, '350', 'kg', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'Giày cao gót mũi nhọn màu hồng', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 2, 0, 0, 0, 1, 'Giày cao gót mũi nhọn màu hồng be quý phái', 'Giay-cao-got-mui-nhon-mau-hong-be-quy-phai', 'Giày cao gót mũi nhọn màu hồng be quý phái', 'Sản phẩm thời trang<br  />&nbsp;<div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"800\" src=\"/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg\" width=\"800\" /></div>&nbsp;', '', ''), 
(7, 4, 1, 1432369124, 1432369433, 1, 1432369124, 0, 2, 'S000007', 50, '120000', '', 'VND', 1, '150', 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 3, 0, 0, 0, 1, 'áo thun nữ', 'ao-thun-nu', 'áo thun nữ', 'Sản phẩm thời trang<br  /> <div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"800\" src=\"/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg\" width=\"800\" /></div> ', '', ''), 
(11, 3, 1, 1432607113, 1493395163, 1, 1432607113, 0, 2, 'S000011', 20, '100000', 'a:1:{i:1;a:3:{s:9:\"number_to\";i:1;s:5:\"price\";d:100000;s:2:\"id\";i:1;}}', 'VND', 3, '250', 'kg', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'GIÀY BÚP BÊ NGÔI SAO NHẬP KHẨU', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 7, 1, 0, 0, 1, 'GIÀY BÚP BÊ NGÔI SAO NHẬP KHẨU', 'GIAY-BUP-BE-NGOI-SAO-NHAP-KHAU', 'GIÀY BÚP BÊ NGÔI SAO NHẬP KHẨU', 'Sản phẩm thời trang<br  />&nbsp;<div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"800\" src=\"/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg\" width=\"800\" /></div>&nbsp;', '', '');


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_shops`
--

DROP TABLE IF EXISTS `ytt_shops_shops`;
CREATE TABLE `ytt_shops_shops` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `address` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_shops_carrier`
--

DROP TABLE IF EXISTS `ytt_shops_shops_carrier`;
CREATE TABLE `ytt_shops_shops_carrier` (
  `shops_id` tinyint(3) unsigned NOT NULL,
  `carrier_id` tinyint(3) unsigned NOT NULL,
  `config_id` tinyint(3) unsigned NOT NULL,
  UNIQUE KEY `shops_id` (`shops_id`,`carrier_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_tabs`
--

DROP TABLE IF EXISTS `ytt_shops_tabs`;
CREATE TABLE `ytt_shops_tabs` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) unsigned NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `vi_title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  AUTO_INCREMENT=5  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_tabs`
--

INSERT INTO `ytt_shops_tabs` VALUES
(1, '', 'content_detail', 1, 1, 'Tóm tắt'), 
(2, '', 'content_comments', 2, 1, 'Bình luận'), 
(3, '', 'content_rate', 3, 1, 'Đánh giá'), 
(4, '', 'content_download', 4, 1, 'Tài liệu');


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_tags_id_vi`
--

DROP TABLE IF EXISTS `ytt_shops_tags_id_vi`;
CREATE TABLE `ytt_shops_tags_id_vi` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65)  COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `sid` (`id`,`tid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_tags_id_vi`
--

INSERT INTO `ytt_shops_tags_id_vi` VALUES
(1, 1, 'thời trang'), 
(1, 2, 'sang trọng'), 
(1, 3, 'phù hợp'), 
(1, 4, 'đi chơi'), 
(6, 5, 'áo sơ mi'), 
(10, 6, 'mũi nhọn'), 
(11, 7, 'búp bê');


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_tags_vi`
--

DROP TABLE IF EXISTS `ytt_shops_tags_vi`;
CREATE TABLE `ytt_shops_tags_vi` (
  `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `numpro` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text  COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  AUTO_INCREMENT=8  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_tags_vi`
--

INSERT INTO `ytt_shops_tags_vi` VALUES
(1, 1, 'thời-trang', '', '', 'thời trang'), 
(2, 1, 'sang-trọng', '', '', 'sang trọng'), 
(3, 1, 'phù-hợp', '', '', 'phù hợp'), 
(4, 1, 'đi-chơi', '', '', 'đi chơi'), 
(5, 1, 'áo-sơ-mi', '', '', 'áo sơ mi'), 
(6, 1, 'mũi-nhọn', '', '', 'mũi nhọn'), 
(7, 1, 'búp-bê', '', '', 'búp bê');


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_template`
--

DROP TABLE IF EXISTS `ytt_shops_template`;
CREATE TABLE `ytt_shops_template` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_transaction`
--

DROP TABLE IF EXISTS `ytt_shops_transaction`;
CREATE TABLE `ytt_shops_transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_time` int(11) NOT NULL DEFAULT '0',
  `transaction_status` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `payment` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_id` varchar(22)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_time` int(11) NOT NULL DEFAULT '0',
  `payment_amount` float NOT NULL DEFAULT '0',
  `payment_data` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `order_id` (`order_id`),
  KEY `payment_id` (`payment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_units`
--

DROP TABLE IF EXISTS `ytt_shops_units`;
CREATE TABLE `ytt_shops_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vi_title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_note` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  AUTO_INCREMENT=4  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_units`
--

INSERT INTO `ytt_shops_units` VALUES
(3, 'dvt', '');


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_warehouse`
--

DROP TABLE IF EXISTS `ytt_shops_warehouse`;
CREATE TABLE `ytt_shops_warehouse` (
  `wid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM  AUTO_INCREMENT=12  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_warehouse`
--

INSERT INTO `ytt_shops_warehouse` VALUES
(1, 'Nhập kho ngày 23/05/2015', '', 1, 1432364016), 
(2, 'Nhập kho ngày 23/05/2015', '', 1, 1432365552), 
(3, 'Nhập kho ngày 23/05/2015', '', 1, 1432366753), 
(4, 'Nhập kho ngày 23/05/2015', '', 1, 1432367106), 
(5, 'Nhập kho ngày 23/05/2015', '', 1, 1432367387), 
(6, 'Nhập kho ngày 23/05/2015', '', 1, 1432367857), 
(7, 'Nhập kho ngày 23/05/2015', '', 1, 1432369139), 
(8, 'Nhập kho ngày 26/05/2015', '', 1, 1432608794), 
(9, 'Nhập kho ngày 26/05/2015', '', 1, 1432608805), 
(10, 'Nhập kho ngày 26/05/2015', '', 1, 1432608819), 
(11, 'Nhập kho ngày 26/05/2015', '', 1, 1432608835);


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_warehouse_logs`
--

DROP TABLE IF EXISTS `ytt_shops_warehouse_logs`;
CREATE TABLE `ytt_shops_warehouse_logs` (
  `logid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wid` int(11) unsigned NOT NULL DEFAULT '0',
  `pro_id` int(11) unsigned NOT NULL DEFAULT '0',
  `quantity` int(11) unsigned NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `money_unit` char(3)  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`logid`),
  KEY `wid` (`wid`)
) ENGINE=MyISAM  AUTO_INCREMENT=12  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_warehouse_logs`
--

INSERT INTO `ytt_shops_warehouse_logs` VALUES
(1, 1, 1, 20, '150000', 'VND'), 
(2, 2, 2, 50, '250000', 'VND'), 
(3, 3, 3, 15, '70000', 'VND'), 
(4, 4, 4, 20, '120000', 'VND'), 
(5, 5, 5, 30, '120000', 'VND'), 
(6, 6, 6, 15, '180000', 'VND'), 
(7, 7, 7, 50, '50000', 'VND'), 
(8, 8, 11, 20, '80', 'VND'), 
(9, 9, 10, 10, '180', 'VND'), 
(10, 10, 9, 10, '150', 'VND'), 
(11, 11, 8, 15, '50000', 'VND');


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_warehouse_logs_group`
--

DROP TABLE IF EXISTS `ytt_shops_warehouse_logs_group`;
CREATE TABLE `ytt_shops_warehouse_logs_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `logid` int(11) unsigned NOT NULL DEFAULT '0',
  `listgroup` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) unsigned NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `money_unit` char(3)  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `logid` (`logid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_weight_vi`
--

DROP TABLE IF EXISTS `ytt_shops_weight_vi`;
CREATE TABLE `ytt_shops_weight_vi` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(20)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange` float NOT NULL DEFAULT '0',
  `round` varchar(10)  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM  AUTO_INCREMENT=4  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_weight_vi`
--

INSERT INTO `ytt_shops_weight_vi` VALUES
(3, 'kg', 'kg', '0', '0.01');


-- ---------------------------------------


--
-- Table structure for table `ytt_shops_wishlist`
--

DROP TABLE IF EXISTS `ytt_shops_wishlist`;
CREATE TABLE `ytt_shops_wishlist` (
  `wid` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `listid` text  COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_shops_wishlist`
--

INSERT INTO `ytt_shops_wishlist` VALUES
(1, 1, '4,3');


-- ---------------------------------------


--
-- Table structure for table `ytt_upload_dir`
--

DROP TABLE IF EXISTS `ytt_upload_dir`;
CREATE TABLE `ytt_upload_dir` (
  `did` mediumint(8) NOT NULL AUTO_INCREMENT,
  `dirname` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `thumb_type` tinyint(4) NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) NOT NULL DEFAULT '0',
  `thumb_quality` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`),
  UNIQUE KEY `name` (`dirname`)
) ENGINE=MyISAM  AUTO_INCREMENT=34  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_upload_dir`
--

INSERT INTO `ytt_upload_dir` VALUES
(0, '', 0, 3, 100, 150, 90), 
(1, 'uploads', 1493319289, 0, 0, 0, 0), 
(2, 'uploads/about', 1493342794, 0, 0, 0, 0), 
(3, 'uploads/banners', 1493342792, 0, 0, 0, 0), 
(4, 'uploads/contact', 1493319443, 0, 0, 0, 0), 
(5, 'uploads/freecontent', 0, 0, 0, 0, 0), 
(6, 'uploads/menu', 1493348104, 0, 0, 0, 0), 
(7, 'uploads/news', 1493319447, 0, 0, 0, 0), 
(8, 'uploads/news/source', 0, 0, 0, 0, 0), 
(9, 'uploads/news/temp_pic', 0, 0, 0, 0, 0), 
(10, 'uploads/news/topics', 0, 0, 0, 0, 0), 
(11, 'uploads/page', 0, 0, 0, 0, 0), 
(12, 'uploads/siteterms', 0, 0, 0, 0, 0), 
(13, 'uploads/users', 1493344271, 0, 0, 0, 0), 
(14, 'uploads/users/groups', 0, 0, 0, 0, 0), 
(15, 'uploads/shops/temp_pic', 0, 0, 0, 0, 0), 
(16, 'uploads/shops/2017_04', 0, 0, 0, 0, 0), 
(17, 'uploads/shops/files', 1493394057, 0, 0, 0, 0), 
(18, 'uploads/news/2017_04', 1493319446, 0, 0, 0, 0), 
(19, 'uploads/slider', 0, 0, 0, 0, 0), 
(20, 'uploads/slider/2017_04', 1493351665, 0, 0, 0, 0), 
(21, 'uploads/download', 0, 0, 0, 0, 0), 
(22, 'uploads/download/temp', 0, 0, 0, 0, 0), 
(23, 'uploads/download/2017_04', 0, 0, 0, 0, 0), 
(24, 'uploads/download/2017_04/images', 0, 0, 0, 0, 0), 
(25, 'uploads/download/2017_04/files', 1493387999, 0, 0, 0, 0), 
(26, 'uploads/weblinks', 0, 0, 0, 0, 0), 
(27, 'uploads/weblinks/cat', 0, 0, 0, 0, 0), 
(28, 'uploads/video-clip', 0, 0, 0, 0, 0), 
(29, 'uploads/video-clip/icons', 0, 0, 0, 0, 0), 
(30, 'uploads/video-clip/images', 0, 0, 0, 0, 0), 
(31, 'uploads/video-clip/video', 1493389832, 0, 0, 0, 0), 
(32, 'uploads/shops', 0, 0, 0, 0, 0), 
(33, 'uploads/shops/2015_05', 0, 0, 0, 0, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_upload_file`
--

DROP TABLE IF EXISTS `ytt_upload_file`;
CREATE TABLE `ytt_upload_file` (
  `name` varchar(245)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `src` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT '0',
  `srcheight` int(11) NOT NULL DEFAULT '0',
  `sizes` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `title` varchar(245)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `did` (`did`,`title`),
  KEY `userid` (`userid`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_upload_file`
--

INSERT INTO `ytt_upload_file` VALUES
('chuc-mung-...jpg', 'jpg', 'image', 130708, 'assets/news/chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 80, 62, '461|360', 1, 1492894106, 7, 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'chuc mung nukeviet thong tu 20 bo tttt'), 
('hoc-viec-t...jpg', 'jpg', 'image', 167193, 'assets/news/hoc-viec-tai-cong-ty-vinades.jpg', 80, 63, '460|360', 1, 1492894106, 7, 'hoc-viec-tai-cong-ty-vinades.jpg', 'hoc viec tai cong ty vinades'), 
('hoptac 6.jpg', 'jpg', 'image', 12871, 'uploads/news/hoptac 6.jpg', 80, 66, '382|314', 1, 1492894106, 7, 'hoptac 6.jpg', 'hoptac 6'), 
('hoptac.jpg', 'jpg', 'image', 12871, 'assets/news/hoptac.jpg', 80, 66, '382|314', 1, 1492894106, 7, 'hoptac.jpg', 'hoptac'), 
('nangly.jpg', 'jpg', 'image', 34802, 'assets/news/nangly.jpg', 80, 53, '500|332', 1, 1492894106, 7, 'nangly.jpg', 'nangly'), 
('nukeviet-cms.jpg', 'jpg', 'image', 83489, 'assets/news/nukeviet-cms.jpg', 80, 55, '500|345', 1, 1492894106, 7, 'nukeviet-cms.jpg', 'nukeviet cms'), 
('nukeviet-n...jpg', 'jpg', 'image', 18611, 'assets/news/nukeviet-nhantaidatviet2011.jpg', 80, 54, '400|268', 1, 1492894106, 7, 'nukeviet-nhantaidatviet2011.jpg', 'nukeviet nhantaidatviet2011'), 
('tap-huan-p...jpg', 'jpg', 'image', 132379, 'assets/news/tap-huan-pgd-ha-dong-2015.jpg', 80, 52, '460|295', 1, 1492894106, 7, 'tap-huan-pgd-ha-dong-2015.jpg', 'tap huan pgd ha dong 2015'), 
('thuc-tap-sinh.jpg', 'jpg', 'image', 71135, 'assets/news/thuc-tap-sinh.jpg', 80, 63, '460|360', 1, 1492894106, 7, 'thuc-tap-sinh.jpg', 'thuc tap sinh'), 
('tuyen-dung...png', 'png', 'image', 118910, 'assets/news/tuyen-dung-nvkd.png', 80, 56, '400|279', 1, 1492894106, 7, 'tuyen-dung-nvkd.png', 'tuyen dung nvkd'), 
('tuyendung-...jpg', 'jpg', 'image', 83783, 'assets/news/tuyendung-kythuat.jpg', 80, 80, '300|300', 1, 1492894106, 7, 'tuyendung-kythuat.jpg', 'tuyendung kythuat'), 
('vinades.jpg', 'jpg', 'image', 104940, 'assets/banners/vinades.jpg', 43, 80, '212|400', 1, 1492894106, 3, 'vinades.jpg', 'vinades'), 
('webnhanh.jpg', 'jpg', 'image', 74347, 'assets/banners/webnhanh.jpg', 80, 10, '572|72', 1, 1492894106, 3, 'webnhanh.jpg', 'webnhanh'), 
('logo-nukev...png', 'png', 'image', 13223, 'assets/about/logo-nukeviet3-flag-180x75.png', 80, 34, '180|75', 1, 1492894106, 2, 'logo-nukeviet3-flag-180x75.png', 'logo nukeviet3 flag 180x75'), 
('nukevietcm...png', 'png', 'image', 11974, 'assets/about/nukevietcms-180x84.png', 80, 38, '180|84', 1, 1492894106, 2, 'nukevietcms-180x84.png', 'nukevietcms 180x84'), 
('nukevietcms.png', 'png', 'image', 85684, 'assets/about/nukevietcms.png', 80, 38, '1500|700', 1, 1492894106, 2, 'nukevietcms.png', 'nukevietcms'), 
('nukevietcm...png', 'png', 'image', 13125, 'assets/about/nukevietcms_laco_180x57.png', 80, 26, '180|57', 1, 1492894106, 2, 'nukevietcms_laco_180x57.png', 'nukevietcms laco 180x57'), 
('nukevietcm...png', 'png', 'image', 13319, 'assets/about/nukevietcms_mu_noel_180x84.png', 80, 38, '180|84', 1, 1492894106, 2, 'nukevietcms_mu_noel_180x84.png', 'nukevietcms mu noel 180x84'), 
('nukevietvn.png', 'png', 'image', 81035, 'assets/about/nukevietvn.png', 80, 38, '1500|700', 1, 1492894106, 2, 'nukevietvn.png', 'nukevietvn'), 
('nukevietvn...png', 'png', 'image', 11586, 'assets/about/nukevietvn_180x84.png', 80, 38, '180|84', 1, 1492894106, 2, 'nukevietvn_180x84.png', 'nukevietvn 180x84'), 
('w.png', 'png', 'image', 12156, 'assets/about/w.png', 80, 40, '288|143', 1, 1492894106, 2, 'w.png', 'w'), 
('favicon.ico', 'ico', 'image', 15086, 'assets/favicon.ico', 48, 48, '48|48', 1, 1493344190, 1, 'favicon.ico', 'favicon'), 
('morte-stud...png', 'png', 'image', 9370, 'assets/users/morte-studio-logo_y4htc6xj_1.png', 80, 80, '80|80', 1, 1493321040, 13, 'morte-studio-logo_y4htc6xj_1.png', 'morte studio logo y4htc6xj 1'), 
('ytuongtre.png', 'png', 'image', 11867, 'assets/ytuongtre.png', 80, 30, '150|55', 1, 1493344315, 1, 'ytuongtre.png', 'YTUONGTRE'), 
('idea.png', 'png', 'image', 2103, 'assets/menu/idea.png', 64, 64, '64|64', 1, 1493348350, 6, 'idea.png', 'idea'), 
('idea-1.png', 'png', 'image', 681, 'assets/menu/idea-1.png', 16, 16, '16|16', 1, 1493348443, 6, 'idea-1.png', 'idea &#40;1&#41;'), 
('it.jpg', 'jpg', 'image', 114545, 'assets/slider/2017_04/it.jpg', 80, 73, '300|273', 1, 1493351696, 20, 'it.jpg', 'IT'), 
('iframe1.png', 'png', 'image', 6915, 'assets/slider/2017_04/iframe1.png', 80, 38, '121|57', 1, 1493352080, 20, 'iframe1.png', 'iframe1'), 
('ytuong-banner.png', 'png', 'image', 60138, 'assets/ytuong-banner.png', 80, 22, '900|250', 1, 1493352830, 1, 'ytuong-banner.png', 'ytuong banner'), 
('ytuong-ban...png', 'png', 'image', 8998, 'assets/ytuong-banner_200_56.png', 80, 22, '200|56', 1, 1493352889, 1, 'ytuong-banner_200_56.png', ''), 
('ytuong-ban...png', 'png', 'image', 54990, 'assets/ytuong-banner-white.png', 80, 22, '900|250', 1, 1493355174, 1, 'ytuong-banner-white.png', 'ytuong banner white'), 
('ytuong-ban...png', 'png', 'image', 7629, 'assets/ytuong-banner-white_200_56.png', 80, 22, '200|56', 1, 1493355181, 1, 'ytuong-banner-white_200_56.png', ''), 
('pci-in-an...pptx', 'pptx', 'file', 255515, 'assets/images/file.gif', 32, 32, '|', 1, 1493388013, 25, 'pci-in-an-pham.pptx', 'PCI in an pham'), 
('nem_dep.mp4', 'mp4', 'file', 32015387, 'assets/images/file.gif', 32, 32, '|', 1, 1493285482, 31, 'nem_dep.mp4', 'nem dep'), 
('ghi_chu.xlsx', 'xlsx', 'file', 9569, 'assets/images/excel.png', 32, 32, '|', 1, 1493394065, 17, 'ghi_chu.xlsx', 'ghi chu');


-- ---------------------------------------


--
-- Table structure for table `ytt_users`
--

DROP TABLE IF EXISTS `ytt_users`;
CREATE TABLE `ytt_users` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text  COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remember` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `in_groups` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active2step` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `secretkey` varchar(20)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checknum` varchar(40)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `idsite` int(11) NOT NULL DEFAULT '0',
  `safemode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `safekey` varchar(40)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `md5username` (`md5username`),
  UNIQUE KEY `email` (`email`),
  KEY `idsite` (`idsite`)
) ENGINE=MyISAM  AUTO_INCREMENT=3  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_users`
--

INSERT INTO `ytt_users` VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '{SSHA512}T31aQsgpi/i8lN85jiImWjgD1MYXD2g0BY46wzVLQwi20Mov1pJgoJTHZfXVv3QRB2bdHF/kwaxCOi0Z9VYujjUyZjg=', 'ytuongtrevccict@gmail.com', 'admin', '', '', 'uploads/users/morte-studio-logo_y4htc6xj_1.png', 0, '', 1493308543, 'Who are you?', 'I am me', '', 0, 1, '1', 1, 0, '62LWOQMU3HRE4GGR', '06b849107fa2044496b0f6a29e92fb95', 1493377116, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '', 0, 0, ''), 
(2, 0, 'ngogiangthanh', '6e258f42bddcb843d9650ecfe48550b1', '{SSHA512}jcv/KnJYRRI5PR5461nfPxX/2u+iaKkgr4UGHj5VdIUVyusihMV6Q9JL3UtjRQ8JQ6507UApGYXNztqsQpgGCTJiNzI=', 'thanhthanh1516@gmail.com', '123', 'ngo giang thanh', '', '', 0, '', 1493312057, 'Ngày lễ mà bạn luôn mong đợi', '123', '', 0, 1, '', 1, 0, 'CXKXG5O27VX5PIKV', '7fac1176b07b34f281729030a7386bce', 1493395462, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36 Edge/15.15063', '', 0, 0, '');


-- ---------------------------------------


--
-- Table structure for table `ytt_users_backupcodes`
--

DROP TABLE IF EXISTS `ytt_users_backupcodes`;
CREATE TABLE `ytt_users_backupcodes` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_used` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `time_used` int(11) unsigned NOT NULL DEFAULT '0',
  `time_creat` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`,`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_users_config`
--

DROP TABLE IF EXISTS `ytt_users_config`;
CREATE TABLE `ytt_users_config` (
  `config` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text  COLLATE utf8mb4_unicode_ci,
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_users_config`
--

INSERT INTO `ytt_users_config` VALUES
('access_admin', 'a:6:{s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1352873462), 
('password_simple', '000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass', 1493308468), 
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1493308468), 
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1493308468), 
('avatar_width', '80', 1493308468), 
('avatar_height', '80', 1493308468), 
('active_group_newusers', '0', 1493308468), 
('active_user_logs', '1', 1493308468), 
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129), 
('siteterms_en', '<p style=\"text-align:center;\"> <strong>Website usage terms and conditions – sample template</strong></p><p> Welcome to our website. If you continue to browse and use this website you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern [business name]’s relationship with you in relation to this website.<br /> The term ‘[business name]’ or ‘us’ or ‘we’ refers to the owner of the website whose registered office is [address]. Our company registration number is [company registration number and place of registration]. The term ‘you’ refers to the user or viewer of our website.<br /> The use of this website is subject to the following terms of use:<br /> • The content of the pages of this website is for your general information and use only. It is subject to change without notice.<br /> • Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.<br /> • Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services or information available through this website meet your specific requirements.<br /> • This website contains material which is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.<br /> • All trademarks reproduced in this website, which are not the property of, or licensed to the operator, are acknowledged on the website.<br /> • Unauthorised use of this website may give rise to a claim for damages and/or be a criminal offence.<br /> • fr0m time to time this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s).<br /> • You may not crea-te a link to this website fr0m another website or document without [business name]’s prior written consent.<br /> • Your use of this website and any dispute arising out of such use of the website is subject to the laws of England, Scotland and Wales.</p>', 1274757617);


-- ---------------------------------------


--
-- Table structure for table `ytt_users_field`
--

DROP TABLE IF EXISTS `ytt_users_field`;
CREATE TABLE `ytt_users_field` (
  `fid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `field` varchar(25)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) unsigned NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect')  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback')  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_register` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_editable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_profile` tinyint(4) NOT NULL DEFAULT '1',
  `class` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  UNIQUE KEY `field` (`field`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_users_groups`
--

DROP TABLE IF EXISTS `ytt_users_groups`;
CREATE TABLE `ytt_users_groups` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(240)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text  COLLATE utf8mb4_unicode_ci,
  `content` text  COLLATE utf8mb4_unicode_ci,
  `group_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL,
  `idsite` int(11) unsigned NOT NULL DEFAULT '0',
  `numbers` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `siteus` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `config` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `ktitle` (`title`,`idsite`),
  KEY `exp_time` (`exp_time`)
) ENGINE=MyISAM  AUTO_INCREMENT=13  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_users_groups`
--

INSERT INTO `ytt_users_groups` VALUES
(1, 'Super admin', '', 'Super Admin', '', 0, '', '', 0, 1493308468, 0, 1, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'), 
(2, 'General admin', '', 'General Admin', '', 0, '', '', 0, 1493308468, 0, 2, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'), 
(3, 'Module admin', '', 'Module Admin', '', 0, '', '', 0, 1493308468, 0, 3, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'), 
(4, 'Users', '', 'Users', '', 0, '', '', 0, 1493308468, 0, 4, 1, 0, 2, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'), 
(7, 'New Users', '', 'New Users', '', 0, '', '', 0, 1493308468, 0, 5, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'), 
(5, 'Guest', '', 'Guest', '', 0, '', '', 0, 1493308468, 0, 6, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'), 
(6, 'All', '', 'All', '', 0, '', '', 0, 1493308468, 0, 7, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'), 
(10, 'NukeViet-Fans', '', 'Nhóm những người hâm mộ hệ thống NukeViet', '', 2, '', '', 1, 1493308468, 0, 8, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'), 
(11, 'NukeViet-Admins', '', 'Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet', '', 2, '', '', 0, 1493308468, 0, 9, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'), 
(12, 'NukeViet-Programmers', '', 'Nhóm Lập trình viên hệ thống NukeViet', '', 1, '', '', 0, 1493308468, 0, 10, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}');


-- ---------------------------------------


--
-- Table structure for table `ytt_users_groups_users`
--

DROP TABLE IF EXISTS `ytt_users_groups_users`;
CREATE TABLE `ytt_users_groups_users` (
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `approved` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `data` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`,`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_users_groups_users`
--

INSERT INTO `ytt_users_groups_users` VALUES
(1, 1, 1, 1, '0');


-- ---------------------------------------


--
-- Table structure for table `ytt_users_info`
--

DROP TABLE IF EXISTS `ytt_users_info`;
CREATE TABLE `ytt_users_info` (
  `userid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_users_info`
--

INSERT INTO `ytt_users_info` VALUES
(1), 
(2);


-- ---------------------------------------


--
-- Table structure for table `ytt_users_openid`
--

DROP TABLE IF EXISTS `ytt_users_openid`;
CREATE TABLE `ytt_users_openid` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`opid`),
  KEY `userid` (`userid`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_users_question`
--

DROP TABLE IF EXISTS `ytt_users_question`;
CREATE TABLE `ytt_users_question` (
  `qid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(240)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`qid`),
  UNIQUE KEY `title` (`title`,`lang`)
) ENGINE=MyISAM  AUTO_INCREMENT=17  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_users_question`
--

INSERT INTO `ytt_users_question` VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238), 
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250), 
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257), 
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264), 
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270), 
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278), 
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285), 
(8, 'What is the first name of your favorite uncle?', 'en', 1, 1274841115, 1274841115), 
(9, 'whe-re did you meet your spouse', 'en', 2, 1274841123, 1274841123), 
(10, 'What is your oldest cousin&#039;s name?', 'en', 3, 1274841131, 1274841131), 
(11, 'What is your youngest child&#039;s username?', 'en', 4, 1274841142, 1274841142), 
(12, 'What is your oldest child&#039;s username?', 'en', 5, 1274841150, 1274841150), 
(13, 'What is the first name of your oldest niece?', 'en', 6, 1274841158, 1274841158), 
(14, 'What is the first name of your oldest nephew?', 'en', 7, 1274841167, 1274841167), 
(15, 'What is the first name of your favorite aunt?', 'en', 8, 1274841175, 1274841175), 
(16, 'whe-re did you spend your honeymoon?', 'en', 9, 1274841183, 1274841183);


-- ---------------------------------------


--
-- Table structure for table `ytt_users_reg`
--

DROP TABLE IF EXISTS `ytt_users_reg`;
CREATE TABLE `ytt_users_reg` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `question` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text  COLLATE utf8mb4_unicode_ci,
  `openid_info` text  COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `login` (`username`),
  UNIQUE KEY `md5username` (`md5username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_about`
--

DROP TABLE IF EXISTS `ytt_vi_about`;
CREATE TABLE `ytt_vi_about` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text  COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text  COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  AUTO_INCREMENT=9  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_about`
--

INSERT INTO `ytt_vi_about` VALUES
(1, 'Về sàn giao dịch ý tưởng', 'San-Giao-Dich-Y-Tuong', '', '', 0, '', '<h2><span style=\"font-size:20px;\"><strong>Giới thiệu khái quát</strong></span></h2>  <p>NukeViet là một ứng dụng trên nền web có thể sử dụng vào nhiều mục đích khác nhau. Phiên bản đang được phát hành theo giấy phép phần mềm tự do nguồn mở có tên gọi đầy đủ là <a href=\"/about/Gioi-thieu-ve-NukeViet-CMS.html\"><b>NukeViet CMS</b></a> gồm 2 phần chính là phần nhân (core) của hệ thống NukeViet và nhóm chức năng quản trị nội dung của CMS thường được sử dụng để xây dựng các website tin tức do đó người dùng thường nghĩ rằng NukeViet mạnh về hệ thống tin tức. Tuy nhiên, đội ngũ phát triển NukeViet đã phát triển nhiều hệ thống khác nhau cho NukeViet, nổi bật nhất là:</p>  <ul> 	<li>NukeViet Portal: Cổng thông tin hai chiều dùng cho doanh nghiệp.</li> 	<li><a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>: Cổng thông tin tích hợp nhiều website, sử dụng cho phòng giáo dục, sở giáo dục.</li> 	<li><a href=\"http://toasoandientu.vn\" target=\"_blank\">NukeViet Tòa Soạn Điện Tử</a>: Sử dụng cho các tòa soạn báo điện tử, trang tin điện tử.</li> </ul> Theo định hướng phát triển của NukeViet, ngoài NukeViet CMS đã được phát hành theo giấy phép tự do nguồn mở trong nhiều năm qua, NukeViet sẽ có thêm 2 nhóm ứng dụng nữa là:  <ul> 	<li>NukeViet Blog: Dành cho các website và người dùng tạo các trang nhật ký cá nhân.</li> 	<li>NukeViet Shop: dành cho các website thương mại điện tử với hoạt động chính là bán hàng trực tuyến, hiện đã có thể sử dụng bằng cách cài bổ sung <a href=\"https://github.com/nukeviet/module-shops\" target=\"_blank\">module Shop</a> lên NukeViet CMS.</li> </ul> &nbsp;  <h2><span style=\"font-size:20px;\"><strong>Video giới thiệu</strong></span></h2> <span style=\"font-size:14px;\">Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot; trong bản tin Tiêu điểm của chương trình Xã hội thông tin<br  /> (Đài truyền hình kỹ thuật số VTC) phát sóng lúc 20h chủ nhật, ngày 05-09-2010 trên VTC1</span>  <div style=\"text-align: center;\"> <div style=\"text-align: center;\"> <div class=\"youtube-embed-wrapper\" style=\"position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"480\" src=\"//www.youtube.com/embed/Cxp1kCyVhqY?rel=0&amp;autoplay=1\" style=\"position: absolute;top: 0;left: 0;width: 100%;height: 100%;\" width=\"640\"></iframe></div> <br  /> <span style=\"font-size:12px;\"><em>Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot;</em></span></div> </div>  <h2><br  /> <span style=\"font-size:20px;\"><strong><span class=\"mw-headline\" id=\".E1.BB.A8ng_d.E1.BB.A5ng\">Lịch sử phát triển</span></strong></span></h2> NukeViet ra đời từ năm 2004, bắt đầu từ việc sử dụng sản phẩm PHP-Nuke để làm cho website cá nhân, anh Nguyễn Anh Tú - một lưu học sinh người Việt tại Nga - đã cùng cộng đồng Việt hóa, cải tiến theo nhu cầu sử dụng của người Việt. Được sự đón nhận của đông đảo người sử dụng, NukeViet đã liên tục được phát triển và trở thành một ứng dụng thuần Việt. Cho đến phiên bản 3.0, NukeViet đã được phát triển thành một ứng dụng khác biệt hoàn toàn, và không chỉ là một CMS, NukeViet được định hướng để trở thành phần mềm đa chức năng trên nền web.<br  /> <br  /> Kể từ năm 2010, NukeViet đã phát triển theo mô hình chuyên nghiệp, đội ngũ quản trị đã thành lập doanh nghiệp chuyên quản và đạt được những tiến bộ vượt bậc. NukeViet đã trở thành hệ quản trị nội dung nguồn mở duy nhất của Việt Nam được Bộ GD&amp;ĐT khuyến khích sử dụng trong giáo dục (thông tư 08/2010/TT-BGDĐT). Tiếp đó, NukeViet CMS đã được trao giải Nhân Tài Đất Việt 2011 và trở thành phần mềm nguồn mở đầu tiên đạt giải thưởng cao quý này. <h2><br  /> <span style=\"font-size:20px;\"><strong><span class=\"mw-headline\" id=\"Di.E1.BB.85n_.C4.91.C3.A0n_NukeViet.vn\">Diễn đàn NukeViet.vn</span></strong></span></h2>  <p>Diễn đàn NukeViet hoạt động trên website: <a href=\"http://nukeviet.vn\">http://nukeviet.vn</a>, đây là kênh chính thức và hữu hiệu cho các bạn đam mê về NukeViet có thể chia sẻ các kiến thức về NukeViet với nhau. Tính đến tháng 12 năm 2015 diễn đàn đã có trên 34.500 thành viên tham gia, bao gồm học sinh, sinh viên &amp; nhiều thành phần khác thuộc giới trí thức ở trong và ngoài nước.</p>  <p>Là một diễn đàn của các nhà quản lý website, rất nhiều thành viên trong diễn đàn NukeViet là cán bộ, lãnh đạo từ đủ mọi lĩnh vực: công nghệ thông tin, xây dựng, văn hóa - xã hội, thể thao, dịch vụ - du lịch... từ cử nhân, bác sĩ, kỹ sư cho đến bộ đội, công an..</p>  <h2><br  /> <span style=\"font-size:20px;\"><span class=\"mw-headline\" id=\"Th.C3.A0nh_t.C3.ADch_.26_gi.E1.BA.A3i_th.C6.B0.E1.BB.9Fng\"><strong>Thành tích &amp; giải thưởng</strong></span></span></h2>  <h3><span style=\"font-size:14px;\"><em><strong><span class=\"mw-headline\" id=\"Khen_th.C6.B0.E1.BB.9Fng_.26_Th.C3.A0nh_t.C3.ADch\">Khen thưởng &amp; Thành tích</span></strong></em></span></h3>  <ul> 	<li>Giải Ba Nhân tài Đất Việt 2011 ở Lĩnh vực Công nghệ thông tin/Sản phẩm đã ứng dụng rộng rãi (không có giải nhất, nhì).</li> 	<li>Bằng khen của Hội Tin học Việt Nam vì những đóng góp xuất sắc cho sự phát triển của cộng đồng nguồn mở tại Việt Nam.</li> </ul> <span style=\"font-size:14px;\"><em><strong><span class=\"mw-headline\" id=\".C4.90.C6.B0.E1.BB.A3c_B.E1.BB.99_gi.C3.A1o_d.E1.BB.A5c_.26_.C4.90.C3.A0o_t.E1.BA.A1o_.E1.BB.A7ng_h.E1.BB.99\">Được Bộ giáo dục &amp; Đào tạo ủng hộ</span></strong></em></span>  <p>NukeViet CMS là hệ quản trị nội dung nguồn mở duy nhất của Việt Nam nằm trong danh mục các sản phẩm phần mềm nguồn mở được khuyến khích sử dụng trong thông tư số 08/2010/TT-BGDĐT do Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục). Trong bài thuyết trình &quot;Hiện trạng triển khai nội dung thông tư 08/2010/TT-BGDĐT về sử dụng PMNM trong các cơ sở giáo dục và định hướng cho thời gian tới&quot;<sup> </sup>tại Hội thảo phần mềm nguồn mở trong các cơ quan, tổ chức nhà nước năm 2012, Cục trưởng cục CNTT Quách Tuấn Ngọc cho biết: &quot;NukeViet có thể thay thế SharePoint server&quot;, &quot;NukeViet được nhiều cơ sở giáo dục thích dùng&quot;<sup> </sup>NukeViet được Bộ GD&amp;ĐT đưa vào văn bản hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016. Trong văn bản số 4983/BGDĐT-CNTT của Bộ Giáo dục và Đào tạo (Bộ GDĐT) hướng dẫn việc triển khai nhiệm vụ công nghệ thông tin (CNTT) cho năm học 2015 - 2016 có những nội dung như sau liên quan đến NukeViet:</p>  <ul> 	<li>Nhiệm vụ số &quot;5. Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục&quot;, mục &quot;5.1 Một số nội dung cần bồi dưỡng&quot; có ghi &quot;Tập huấn sử dụng phần mềm nguồn mở NukeViet.&quot;</li> 	<li>Nhiệm vụ số &quot; 10. Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở&quot; có ghi: &quot;Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</li> 	<li>Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</li> </ul>  <h3><span style=\"font-size:14px;\"><em><strong><span class=\"mw-headline\" id=\".C4.90.C6.B0.E1.BB.A3c_.C6.B0u_ti.C3.AAn_mua_s.E1.BA.AFm_s.E1.BB.AD_d.E1.BB.A5ng_trong_ch.C3.ADnh_ph.E1.BB.A7\">Được ưu tiên mua sắm sử dụng trong chính phủ</span></strong></em></span></h3>  <p>NukeViet CMS là hệ quản trị nội dung nguồn mở được quy định ưu tiên mua sắm, sử dụng trong các cơ quan, tổ chức nhà nước Việt Nam theo thông tư 20/2014/TT-BTTTT ký ngày 05/12/2014 và có hiệu lực từ ngày 20/1/2015 quy định về các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước</p>  <h2><br  /> <span style=\"font-size:20px;\"><span class=\"mw-headline\" id=\"T.C3.ADnh_n.C4.83ng\"><strong>Tính năng</strong></span></span></h2>  <h3><span style=\"font-size:14px;\"><strong>NukeViet CMS 3.0 bản gốc có các module cơ bản là:</strong></span></h3>  <ul> 	<li>Quản lý Tin tức (<i>News</i>: Tạo bản tin chủ đề đa cấp, phân quyền theo chủ đề, hẹn giờ đăng tin, tạo bản in, bản tải về, thảo luận bản tin),</li> 	<li>Giới thiệu (<i>About</i>),</li> 	<li>Quản lý quảng cáo thương mại (banners),</li> 	<li>Quản lý người dùng (<i>users</i>),</li> 	<li>Liên hệ qua site (<i>Contact</i>),</li> 	<li>Cấp tin RSS (<i>RSS feeds</i>) và thu thập tin RSS (&quot;RSS reader&quot;),</li> 	<li>Bình chọn (thăm dò ý kiến - <i>Voting</i>),</li> 	<li>Thư viện file (<i>Download</i>),</li> 	<li>Thư viện Web (<i>Weblinks</i>),</li> 	<li>Hỏi nhanh đáp gọn(<i>Faq</i>),</li> 	<li>Thống kê truy cập (<i>statistics</i>),</li> 	<li>Tìm kiếm trong site (<i>Search</i>),</li> 	<li>Bán hàng trực tuyến (<i>Shop</i>) (có từ NukeViet 3.1)...</li> </ul>  <h3><span style=\"font-size:14px;\"><strong>Tính năng hệ thống:</strong></span></h3>  <ul> 	<li>Cài đặt, nâng cấp và đóng gói tự động.</li> 	<li>Hỗ trợ đa ngôn ngữ giao diện và đa ngôn ngữ Cơ sở dữ liệu 100%, cho phép người sử dụng tự xây dựng ngôn ngữ mới.</li> 	<li>Thay đổi &amp; tùy biến giao diện nhiều cấp độ, cho phép người sử dụng có thể cài thêm giao diện mới hoặc tùy biến giao diện trên site theo ý thích. Người sử dụng có thể tùy biến bố cục giao diện theo layout, theo block ở các khu vực khác nhau của website.</li> 	<li>Quản lý module với khả năng xử lý đa nhân module (ảo hóa module).</li> 	<li>Cho phép phân nhóm thành viên và phân quyền người quản trị theo nhiều cấp độ khác nhau.</li> 	<li>Hỗ trợ tối ưu hóa cho các công cụ tìm kiếm (SEO): Rewrite, tạo Sitemap, Ping sitemap, chẩn đoán site, phân tích từ khóa, tạo keyword, quản lý máy chủ tìm kiếm (Bot)...</li> 	<li>Quản lý và sao lưu cơ sở dữ liệu.</li> 	<li>Cấu hình tùy biến, tường lửa đa cấp, xử lý tiến trình tự động...</li> 	<li>Hỗ trợ thiết bị di động (mobile), cho phép thay đổi giao diện tương thích (từ phiên bản 3.3)</li> 	<li>...</li> </ul>  <h2><span style=\"font-size:20px;\"><strong><span class=\"mw-headline\" id=\".E1.BB.A8ng_d.E1.BB.A5ng\">Ứng dụng</span></strong></span></h2>  <p>NukeViet được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp, nó cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block... Trước đây, NukeViet chủ yếu được sử dụng làm trang tin tức nhờ module News tích hợp sẵn trong NukeViet được viết rất công phu, nó lại đặc biệt phù hợp với yêu cầu và đặc điểm sử dụng cho hệ thống tin tức. Kể từ phiên bản NukeViet 3, đội ngũ phát triển NukeViet đã định nghĩa lại NukeViet, theo đó, NukeViet được coi như phần mềm trực tuyến mà chức năng CMS chỉ là một module của NukeViet. NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng do đó thường được những đối tượng người dùng không chuyên ưa thích.<br  /> <br  /> NukeViet có mã nguồn mở do đó việc sử dụng NukeViet là hoàn toàn miễn phí cho tất cả mọi người trên thế giới. Từ bản 2.0 trở về trước, đối tượng người dùng chủ yếu của NukeViet là người Việt vì những đặc điểm của bản thân mã nguồn (có nguồn gốc từ PHP-Nuke) và vì chính sách của nhóm phát triển là: &quot;hệ thống Portal dành cho người Việt&quot;. Kể từ phiên bản 3.0, đội ngũ phát triển NukeViet định hướng đưa NukeViet ra cộng đồng quốc tế.</p>  <ul> 	<li>Các cổng thông tin điện tử</li> 	<li>Các tập đoàn kinh tế</li> 	<li>Giải trí trực tuyến, văn hóa, nghệ thuật.</li> 	<li>Báo điện tử, tạp chí điện tử</li> 	<li>Website của các doanh nghiệp vừa và nhỏ</li> 	<li>Website của các cơ quan, tổ chức chính phủ</li> 	<li>Website giáo dục, trường học</li> 	<li>Website của gia đình, cá nhân, nhóm sở thích...</li> </ul>  <p><br  /> Ngoài các ứng dụng website ở trên, thực tế NukeViet đã được ứng dụng làm rất nhiều phần mềm khác như: Phần mềm quản lý kho hàng, phần mềm bán hàng, phần mềm quản lý quán BI-A trợ giúp bật tắt điện đèn bàn bóng, phần mềm tòa soạn điện tử, phần mềm quản lý hồ sơ, quản lý nhân sự trực tuyến, phần mềm tra cứu điểm thi hỗ trợ SMS...</p>', 'giao dịch', 0, '4', '', 0, 1, 1, 1493308468, 1493318897, 1, 5, 0), 
(2, 'Về chúng tôi&#x002F;VCCI Cần Thơ', 'VCCI-Can-Tho', '', '', 0, '', '<p style=\"text-align: justify;\">CMS là gì?<br  /> CMS là từ viết tắt từ Content Management System. Theo wikipedia</p>  <blockquote> <p><strong>Định nghĩa.</strong><br  /> Hệ quản trị nội dung, cũng được gọi là hệ thống quản lý nội dung hay CMS (từ Content Management System của tiếng Anh) là phần mềm để tổ chức và tạo môi trường cộng tác thuận lợi nhằm mục đích xây dựng một hệ thống tài liệu và các loại nội dung khác một cách thống nhất. Mới đây thuật ngữ này liên kết với chương trình quản lý nội dung của website. Quản lý nội dung web (web content management) cũng đồng nghĩa như vậy.<br  /> <br  /> <span class=\"mw-headline\" id=\"Ch.E1.BB.A9c_n.C4.83ng\"><strong>Chức năng</strong>.</span><br  /> Quản trị những nội dung tài liệu điện tử (bao gồm những tài liệu, văn bản số và đã được số hoá) của tổ chức. Những chức năng bao gồm:</p>  <ul> 	<li>Tạo lập nội dung;</li> 	<li>Lưu trữ nội dung;</li> 	<li>Chỉnh sửa nội dung;</li> 	<li>Chuyển tải nội dung;</li> 	<li>Chia sẻ nội dung;</li> 	<li>Tìm kiếm nội dung;</li> 	<li>Phân quyền người dùng và nội dung...</li> </ul>  <p><strong>Đặc điểm.</strong><br  /> Các đặc điểm cơ bản của CMS bao gồm:</p>  <ul> 	<li>Phê chuẩn việc tạo hoặc thay đổi nội dung trực tuyến</li> 	<li>Chế độ Soạn thảo &quot;Nhìn là biết&quot; WYSIWYG</li> 	<li>Quản lý người dùng</li> 	<li>Tìm kiếm và lập chỉ mục</li> 	<li>Lưu trữ</li> 	<li>Tùy biến giao diện</li> 	<li>Quản lý ảnh và các liên kết (URL)</li> </ul> </blockquote>  <p style=\"text-align: justify;\"><br  /> NukeViet CMS là một <strong>hệ quản trị nội dung</strong> (<em>Content Management System - CMS</em>) cho phép bạn quản lý các cổng thông tin điện tử trên Internet. Nói đơn giản, NukeViet giống như một phần mềm giúp bạn<strong> xây dựng</strong> và <strong>vận hành</strong> các trang web của mình một cách dễ dàng nhất.</p>  <p style=\"text-align: justify;\">NukeViet CMS là một phần mềm <strong>mã nguồn mở</strong>, do đó việc sử dụng <strong>hoàn toàn miễn phí</strong>, bạn có thể tải NukeViet CMS về bất cứ lúc nào tại website chính thức của NukeViet là <strong><a href=\"http://nukeviet.vn\">nukeviet.vn</a></strong>. Bạn có thể cài NukeViet lên hosting để sử dụng hoặc cũng có thể thử nghiệm bằng cách cài ngay lên máy tính cá nhân.</p>  <p style=\"text-align: justify;\">NukeViet cho phép xây dựng một website động, đa chức năng, hiện đại một cách nhanh chóng mà người vận hành nó thậm chí <strong>không cần phải biết một tí gì về lập trình</strong> bởi tất cả các tác vụ quản lý phức tạp đều được tự động hóa ở mức cao. NukeViet đặc biệt dễ dàng sử dụng vì hoàn toàn bằng tiếng Việt và được thiết kế phù hợp nhất với thói quen sử dụng mạng của <strong>người Việt Nam</strong>.</p>  <p style=\"text-align: justify;\">Bằng việc sử dụng các công nghệ web mới nhất hiện nay, thiết kế hệ thống uyển chuyển và sở hữu những tính năng độc đáo, NukeViet sẽ giúp bạn triển khai các ứng dụng web từ nhỏ đến lớn một cách nhanh chóng và tiết kiệm: từ các website cá nhân cho tới các cổng thông tin điện tử; từ các gian hàng trực tuyến cho tới các mạng xã hội...</p> NukeViet là CMS <strong>mã nguồn mở đầu tiên của Việt Nam</strong> có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là <a href=\"http://vinades.vn\" target=\"_blank\">VINADES.,JSC</a> - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.', '', 0, '4', '', 0, 2, 1, 1493308468, 1493318883, 1, 1, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_about_config`
--

DROP TABLE IF EXISTS `ytt_vi_about_config`;
CREATE TABLE `ytt_vi_about_config` (
  `config_name` varchar(30)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_about_config`
--

INSERT INTO `ytt_vi_about_config` VALUES
('viewtype', '0'), 
('facebookapi', ''), 
('per_page', '20'), 
('news_first', '0'), 
('related_articles', '5'), 
('copy_page', '0');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_blocks_groups`
--

DROP TABLE IF EXISTS `ytt_vi_blocks_groups`;
CREATE TABLE `ytt_vi_blocks_groups` (
  `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(55)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10)  COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `groups_view` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text  COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`bid`),
  KEY `theme` (`theme`),
  KEY `module` (`module`),
  KEY `position` (`position`),
  KEY `exp_time` (`exp_time`)
) ENGINE=MyISAM  AUTO_INCREMENT=60  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_blocks_groups`
--

INSERT INTO `ytt_vi_blocks_groups` VALUES
(1, 'default', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'), 
(2, 'default', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 3, 'a:1:{s:12:\"idplanbanner\";i:1;}'), 
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, ''), 
(6, 'default', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''), 
(8, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:3;}'), 
(10, 'default', 'news', 'global.block_tophits.php', 'Cần tìm giải pháp cấp thiết', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:5;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:0:{}}'), 
(11, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"Souris Morte\";s:10:\"design_url\";s:0:\"\";s:13:\"siteterms_url\";s:44:\"/nukeviet/index.php?language=vi&nv=siteterms\";}'), 
(12, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''), 
(13, 'default', 'theme', 'global.QR_code.php', 'global QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"L\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'), 
(14, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''), 
(15, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 0, 1, ''), 
(16, 'default', 'theme', 'global.company_info.php', 'Thông tin cơ quan chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:\"company_name\";s:73:\"Phòng Thương Mại và Công nghiệp Việt Nam chi nhánh Cần Thơ\";s:16:\"company_sortname\";s:15:\"VCCI Cần Thơ\";s:15:\"company_regcode\";s:14:\"0100148391-009\";s:16:\"company_regplace\";s:22:\"Cần Thơ, 28/02/1992\";s:21:\"company_licensenumber\";s:62:\"132/GP-BC do Cục báo chí, Bộ VH-TT cấp ngày 22/8/2005\";s:22:\"company_responsibility\";s:16:\"Vũ Tiến Lộc\";s:15:\"company_address\";s:141:\"Phòng Thương mại và công nghiệp Việt Nam chi nhánh tại Cần Thơ ( VCCI Cần Thơ ), Hoà Bình, Can Tho, Cần Thơ, Vietnam\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:10.0216668951068985649044407182373106479644775390625;s:20:\"company_mapcenterlng\";d:105.8061592427797137361267232336103916168212890625;s:14:\"company_maplat\";d:10.03432480000000026620909920893609523773193359375;s:14:\"company_maplng\";d:105.78506470000002082088030874729156494140625;s:15:\"company_mapzoom\";i:13;s:13:\"company_phone\";s:15:\"84.7103.824.918\";s:11:\"company_fax\";s:15:\"84.7103.824.169\";s:13:\"company_email\";s:30:\"vpvccicantho@vccimekong.com.vn\";s:15:\"company_website\";s:24:\"http://vccimekong.com.vn\";}'), 
(17, 'default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:3;s:12:\"title_length\";i:0;}'), 
(20, 'default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:9:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:7:\"banners\";i:5;s:4:\"seek\";i:6;s:5:\"feeds\";i:7;s:9:\"siteterms\";i:8;s:5:\"shops\";}}'), 
(21, 'default', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'), 
(22, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'), 
(23, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''), 
(24, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''), 
(25, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''), 
(26, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'), 
(27, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, 'a:3:{s:5:\"level\";s:1:\"L\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'), 
(28, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"Souris Morte\";s:10:\"design_url\";s:28:\"https://fb.com/thangengineer\";s:13:\"siteterms_url\";s:44:\"/nukeviet/index.php?language=vi&nv=siteterms\";}'), 
(29, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:7:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:5:\"feeds\";i:5;s:9:\"siteterms\";i:6;s:5:\"shops\";}}'), 
(30, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:\"company_name\";s:73:\"Phòng Thương Mại và Công nghiệp Việt Nam chi nhánh Cần Thơ\";s:16:\"company_sortname\";s:15:\"VCCI Cần Thơ\";s:15:\"company_regcode\";s:14:\"0100148391-009\";s:16:\"company_regplace\";s:22:\"Cần Thơ, 28/02/1992\";s:21:\"company_licensenumber\";s:62:\"132/GP-BC do Cục báo chí, Bộ VH-TT cấp ngày 22/8/2005\";s:22:\"company_responsibility\";s:16:\"Vũ Tiến Lộc\";s:15:\"company_address\";s:74:\"Số 12, Đại Lộ Hòa Bình, P. An Cư, Q. Ninh Kiều, Tp. Cần Thơ\";s:15:\"company_showmap\";i:0;s:20:\"company_mapcenterlat\";d:20.9845159999999992805896908976137638092041015625;s:20:\"company_mapcenterlng\";d:105.7954749999999961573848850093781948089599609375;s:14:\"company_maplat\";d:20.9845159999999992805896908976137638092041015625;s:14:\"company_maplng\";d:105.7954749999999961573848850093781948089599609375;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:15:\"84.7103.824.918\";s:11:\"company_fax\";s:15:\"84.7103.824.169\";s:13:\"company_email\";s:30:\"vpvccicantho@vccimekong.com.vn\";s:15:\"company_website\";s:24:\"http://vccimekong.com.vn\";}'), 
(36, 'default', 'voting', 'global.voting_random.php', 'Khảo sát', '', 'primary', '[LEFT]', 0, '1', 1, '6', 0, 2, ''), 
(38, 'default', 'shops', 'global.block_cart.php', 'Danh sách ý tưởng quan tâm', '', 'primary', '[LEFT]', 0, '1', 1, '4,7', 0, 3, ''), 
(39, 'default', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 4, 'a:1:{s:12:\"idplanbanner\";i:2;}'), 
(40, 'default', 'theme', 'global.social.php', 'global social', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:\"facebook\";s:34:\"https://www.facebook.com/ytuongtre\";s:11:\"google_plus\";s:33:\"https://www.google.com/+ytuongtre\";s:7:\"youtube\";s:38:\"https://www.youtube.com/user/ytuongtre\";s:7:\"twitter\";s:29:\"https://twitter.com/ytuongtre\";}'), 
(41, 'default', 'slider', 'global.block_slider_cat.php', 'global block slider cat', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:3:{s:5:\"catid\";a:1:{i:0;s:1:\"1\";}s:6:\"numrow\";i:5;s:14:\"block_template\";s:8:\"block_bx\";}'), 
(42, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 0, 5, ''), 
(43, 'default', 'contact', 'global.contact_default.php', 'global contact default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''), 
(52, 'default', 'shops', 'global.block_cart.php', 'Danh sách ý tưởng quan tâm', '', 'primary', '[LEFT]', 0, '1', 1, '6', 0, 5, ''), 
(53, 'default', 'video-clip', 'global.new_videos.php', 'Video', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 6, ''), 
(54, 'default', 'video-clip', 'module.detail.php', 'Xem video', '', 'primary', '[TOP]', 0, '1', 1, '6', 0, 4, ''), 
(56, 'default', 'theme', 'global.fb_chat.php', 'global fb chat', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:2:{s:8:\"fb_title\";s:36:\"Tư vấn trực tiếp qua Facebook\";s:7:\"fb_link\";s:42:\"https://www.facebook.com/sangiaodichytuong\";}'), 
(57, 'default', 'theme', 'global.facebook_page_plugin.php', 'global facebook page plugin', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 7, 'a:5:{s:5:\"ahref\";s:17:\"sangiaodichytuong\";s:13:\"activationSDK\";s:1:\"0\";s:15:\"activationPosts\";s:1:\"1\";s:15:\"activationCover\";s:1:\"1\";s:16:\"activationFriend\";s:1:\"1\";}'), 
(59, 'default', 'comment', 'global.block_facebook_comment_box.php', 'global block facebook comment box', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 5, 'a:4:{s:13:\"facebookappid\";s:15:\"405881699767434\";s:5:\"width\";s:4:\"100%\";s:7:\"numpost\";i:5;s:6:\"scheme\";s:5:\"light\";}');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_blocks_weight`
--

DROP TABLE IF EXISTS `ytt_vi_blocks_weight`;
CREATE TABLE `ytt_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  UNIQUE KEY `bid` (`bid`,`func_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_blocks_weight`
--

INSERT INTO `ytt_vi_blocks_weight` VALUES
(16, 1, 1), 
(16, 38, 1), 
(16, 39, 1), 
(16, 40, 1), 
(16, 41, 1), 
(16, 47, 1), 
(16, 48, 1), 
(16, 49, 1), 
(16, 50, 1), 
(16, 60, 1), 
(16, 63, 1), 
(16, 4, 1), 
(16, 5, 1), 
(16, 6, 1), 
(16, 7, 1), 
(16, 8, 1), 
(16, 9, 1), 
(16, 10, 1), 
(16, 11, 1), 
(16, 12, 1), 
(16, 51, 1), 
(16, 62, 1), 
(16, 54, 1), 
(16, 55, 1), 
(16, 31, 1), 
(16, 32, 1), 
(16, 33, 1), 
(16, 34, 1), 
(16, 35, 1), 
(16, 36, 1), 
(16, 37, 1), 
(16, 57, 1), 
(16, 58, 1), 
(16, 59, 1), 
(16, 19, 1), 
(16, 20, 1), 
(16, 21, 1), 
(16, 22, 1), 
(16, 23, 1), 
(16, 24, 1), 
(16, 25, 1), 
(16, 26, 1), 
(16, 27, 1), 
(16, 28, 1), 
(16, 29, 1), 
(16, 61, 1), 
(21, 1, 1), 
(21, 38, 1), 
(21, 39, 1), 
(21, 40, 1), 
(21, 41, 1), 
(21, 47, 1), 
(21, 48, 1), 
(21, 49, 1), 
(21, 50, 1), 
(21, 60, 1), 
(21, 63, 1), 
(21, 4, 1), 
(21, 5, 1), 
(21, 6, 1), 
(21, 7, 1), 
(21, 8, 1), 
(21, 9, 1), 
(21, 10, 1), 
(21, 11, 1), 
(21, 12, 1), 
(21, 51, 1), 
(21, 62, 1), 
(21, 54, 1), 
(21, 55, 1), 
(21, 31, 1), 
(21, 32, 1), 
(21, 33, 1), 
(21, 34, 1), 
(21, 35, 1), 
(21, 36, 1), 
(21, 37, 1), 
(21, 57, 1), 
(21, 58, 1), 
(21, 59, 1), 
(21, 19, 1), 
(21, 20, 1), 
(21, 21, 1), 
(21, 22, 1), 
(21, 23, 1), 
(21, 24, 1), 
(21, 25, 1), 
(21, 26, 1), 
(21, 27, 1), 
(21, 28, 1), 
(21, 29, 1), 
(21, 61, 1), 
(11, 1, 1), 
(11, 38, 1), 
(11, 39, 1), 
(11, 40, 1), 
(11, 41, 1), 
(11, 47, 1), 
(11, 48, 1), 
(11, 49, 1), 
(11, 50, 1), 
(11, 60, 1), 
(11, 63, 1), 
(11, 4, 2), 
(11, 5, 1), 
(11, 6, 1), 
(11, 7, 1), 
(11, 8, 1), 
(11, 9, 1), 
(11, 10, 1), 
(11, 11, 1), 
(11, 12, 1), 
(11, 51, 1), 
(11, 62, 1), 
(11, 54, 1), 
(11, 55, 1), 
(11, 31, 1), 
(11, 32, 1), 
(11, 33, 1), 
(11, 34, 1), 
(11, 35, 1), 
(11, 36, 1), 
(11, 37, 1), 
(11, 57, 1), 
(11, 58, 1), 
(11, 59, 1), 
(11, 19, 1), 
(11, 20, 1), 
(11, 21, 1), 
(11, 22, 1), 
(11, 23, 1), 
(11, 24, 1), 
(11, 25, 1), 
(11, 26, 1), 
(11, 27, 1), 
(11, 28, 1), 
(11, 29, 1), 
(11, 61, 1), 
(12, 1, 2), 
(12, 38, 2), 
(12, 39, 2), 
(12, 40, 2), 
(12, 41, 2), 
(12, 47, 2), 
(12, 48, 2), 
(12, 49, 2), 
(12, 50, 2), 
(12, 60, 2), 
(12, 63, 2), 
(12, 4, 1), 
(12, 5, 2), 
(12, 6, 2), 
(12, 7, 2), 
(12, 8, 2), 
(12, 9, 2), 
(12, 10, 2), 
(12, 11, 2), 
(12, 12, 2), 
(12, 51, 2), 
(12, 62, 2), 
(12, 54, 2), 
(12, 55, 2), 
(12, 31, 2), 
(12, 32, 2), 
(12, 33, 2), 
(12, 34, 2), 
(12, 35, 2), 
(12, 36, 2), 
(12, 37, 2), 
(12, 57, 2), 
(12, 58, 2), 
(12, 59, 2), 
(12, 19, 2), 
(12, 20, 2), 
(12, 21, 2), 
(12, 22, 2), 
(12, 23, 2), 
(12, 24, 2), 
(12, 25, 2), 
(12, 26, 2), 
(12, 27, 2), 
(12, 28, 2), 
(12, 29, 2), 
(12, 61, 2), 
(4, 19, 1), 
(4, 20, 1), 
(4, 21, 1), 
(4, 22, 1), 
(4, 23, 1), 
(4, 24, 1), 
(4, 25, 1), 
(4, 26, 1), 
(4, 27, 1), 
(4, 28, 1), 
(4, 31, 1), 
(4, 32, 1), 
(4, 33, 1), 
(4, 34, 1), 
(4, 35, 1), 
(4, 36, 1), 
(4, 37, 1), 
(6, 1, 3), 
(6, 38, 3), 
(6, 39, 3), 
(6, 40, 3), 
(6, 41, 3), 
(6, 47, 3), 
(6, 48, 3), 
(6, 49, 3), 
(6, 50, 3), 
(6, 60, 3), 
(6, 63, 3), 
(6, 4, 3), 
(6, 5, 3), 
(6, 6, 3), 
(6, 7, 3), 
(6, 8, 3), 
(6, 9, 3), 
(6, 10, 3), 
(6, 11, 3), 
(6, 12, 3), 
(6, 51, 3), 
(6, 62, 3), 
(6, 54, 3), 
(6, 55, 3), 
(6, 31, 3), 
(6, 32, 3), 
(6, 33, 3), 
(6, 34, 3), 
(6, 35, 3), 
(6, 36, 3), 
(6, 37, 3), 
(6, 57, 3), 
(6, 58, 3), 
(6, 59, 3), 
(6, 19, 3), 
(6, 20, 3), 
(6, 21, 3), 
(6, 22, 3), 
(6, 23, 3), 
(6, 24, 3), 
(6, 25, 3), 
(6, 26, 3), 
(6, 27, 3), 
(6, 28, 3), 
(6, 29, 3), 
(6, 61, 3), 
(20, 1, 1), 
(20, 38, 1), 
(20, 39, 1), 
(20, 40, 1), 
(20, 41, 1), 
(20, 47, 1), 
(20, 48, 1), 
(20, 49, 1), 
(20, 50, 1), 
(20, 60, 1), 
(20, 63, 1), 
(20, 4, 1), 
(20, 5, 1), 
(20, 6, 1), 
(20, 7, 1), 
(20, 8, 1), 
(20, 9, 1), 
(20, 10, 1), 
(20, 11, 1), 
(20, 12, 1), 
(20, 51, 1), 
(20, 62, 1), 
(20, 54, 1), 
(20, 55, 1), 
(20, 31, 1), 
(20, 32, 1), 
(20, 33, 1), 
(20, 34, 1), 
(20, 35, 1), 
(20, 36, 1), 
(20, 37, 1), 
(20, 57, 1), 
(20, 58, 1), 
(20, 59, 1), 
(20, 19, 1), 
(20, 20, 1), 
(20, 21, 1), 
(20, 22, 1), 
(20, 23, 1), 
(20, 24, 1), 
(20, 25, 1), 
(20, 26, 1), 
(20, 27, 1), 
(20, 28, 1), 
(20, 29, 1), 
(20, 61, 1), 
(17, 1, 1), 
(17, 38, 1), 
(17, 39, 1), 
(17, 40, 1), 
(17, 41, 1), 
(17, 47, 1), 
(17, 48, 1), 
(17, 49, 1), 
(17, 50, 1), 
(17, 60, 1), 
(17, 63, 1), 
(17, 4, 1), 
(17, 5, 1), 
(17, 6, 1), 
(17, 7, 1), 
(17, 8, 1), 
(17, 9, 1), 
(17, 10, 1), 
(17, 11, 1), 
(17, 12, 1), 
(17, 51, 1), 
(17, 62, 1), 
(17, 54, 1), 
(17, 55, 1), 
(17, 31, 1), 
(17, 32, 1), 
(17, 33, 1), 
(17, 34, 1), 
(17, 35, 1), 
(17, 36, 1), 
(17, 37, 1), 
(17, 57, 1), 
(17, 58, 1), 
(17, 59, 1), 
(17, 19, 1), 
(17, 20, 1), 
(17, 21, 1), 
(17, 22, 1), 
(17, 23, 1), 
(17, 24, 1), 
(17, 25, 1), 
(17, 26, 1), 
(17, 27, 1), 
(17, 28, 1), 
(17, 29, 1), 
(17, 61, 1), 
(15, 1, 1), 
(15, 38, 1), 
(15, 39, 1), 
(15, 40, 1), 
(15, 41, 1), 
(15, 47, 1), 
(15, 48, 1), 
(15, 49, 1), 
(15, 50, 1), 
(15, 60, 1), 
(15, 63, 1), 
(42, 4, 1), 
(15, 5, 1), 
(15, 6, 1), 
(15, 7, 1), 
(15, 8, 1), 
(15, 9, 1), 
(15, 10, 1), 
(15, 11, 1), 
(15, 12, 1), 
(15, 51, 1), 
(15, 62, 1), 
(15, 54, 1), 
(15, 55, 1), 
(15, 31, 1), 
(15, 32, 1), 
(15, 33, 1), 
(15, 34, 1), 
(15, 35, 1), 
(15, 36, 1), 
(15, 37, 1), 
(15, 57, 1), 
(15, 58, 1), 
(15, 59, 1), 
(15, 19, 1), 
(15, 20, 1), 
(15, 21, 1), 
(15, 22, 1), 
(15, 23, 1), 
(15, 24, 1), 
(15, 25, 1), 
(15, 26, 1), 
(15, 27, 1), 
(15, 28, 1), 
(15, 29, 1), 
(15, 61, 1), 
(13, 1, 1), 
(13, 38, 1), 
(13, 39, 1), 
(13, 40, 1), 
(13, 41, 1), 
(13, 47, 1), 
(13, 48, 1), 
(13, 49, 1), 
(13, 50, 1), 
(13, 60, 1), 
(13, 63, 1), 
(13, 4, 1), 
(13, 5, 1), 
(13, 6, 1), 
(13, 7, 1), 
(13, 8, 1), 
(13, 9, 1), 
(13, 10, 1), 
(13, 11, 1), 
(13, 12, 1), 
(13, 51, 1), 
(13, 62, 1), 
(13, 54, 1), 
(13, 55, 1), 
(13, 31, 1), 
(13, 32, 1), 
(13, 33, 1), 
(13, 34, 1), 
(13, 35, 1), 
(13, 36, 1), 
(13, 37, 1), 
(13, 57, 1), 
(13, 58, 1), 
(13, 59, 1), 
(13, 19, 1), 
(13, 20, 1), 
(13, 21, 1), 
(13, 22, 1), 
(13, 23, 1), 
(13, 24, 1), 
(13, 25, 1), 
(13, 26, 1), 
(13, 27, 1), 
(13, 28, 1), 
(13, 29, 1), 
(13, 61, 1), 
(14, 1, 2), 
(14, 38, 2), 
(14, 39, 2), 
(14, 40, 2), 
(14, 41, 2), 
(14, 47, 2), 
(14, 48, 2), 
(14, 49, 2), 
(14, 50, 2), 
(14, 60, 2), 
(14, 63, 2), 
(14, 4, 2), 
(14, 5, 2), 
(14, 6, 2), 
(14, 7, 2), 
(14, 8, 2), 
(14, 9, 2), 
(14, 10, 2), 
(14, 11, 2), 
(14, 12, 2), 
(14, 51, 2), 
(14, 62, 2), 
(14, 54, 2), 
(14, 55, 2), 
(14, 31, 2), 
(14, 32, 2), 
(14, 33, 2), 
(14, 34, 2), 
(14, 35, 2), 
(14, 36, 2), 
(14, 37, 2), 
(14, 57, 2), 
(14, 58, 2), 
(14, 59, 2), 
(14, 19, 2), 
(14, 20, 2), 
(14, 21, 2), 
(14, 22, 2), 
(14, 23, 2), 
(14, 24, 2), 
(14, 25, 2), 
(14, 26, 2), 
(14, 27, 2), 
(14, 28, 2), 
(14, 29, 2), 
(14, 61, 2), 
(8, 1, 1), 
(8, 38, 1), 
(8, 39, 1), 
(8, 40, 1), 
(8, 41, 1), 
(8, 47, 1), 
(8, 48, 1), 
(8, 49, 1), 
(8, 50, 1), 
(8, 60, 1), 
(8, 63, 1), 
(8, 4, 2), 
(8, 5, 1), 
(8, 6, 1), 
(8, 7, 1), 
(8, 8, 1), 
(8, 9, 1), 
(8, 10, 1), 
(8, 11, 1), 
(8, 12, 1), 
(8, 51, 1), 
(8, 62, 1), 
(8, 54, 2), 
(8, 55, 1), 
(8, 31, 1), 
(8, 32, 1), 
(8, 33, 1), 
(8, 34, 1), 
(8, 35, 1), 
(8, 36, 1), 
(8, 37, 1), 
(8, 57, 1), 
(8, 58, 1), 
(8, 59, 1), 
(8, 19, 2), 
(8, 20, 1), 
(8, 21, 1), 
(8, 22, 1), 
(8, 23, 1), 
(8, 24, 1), 
(8, 25, 1), 
(8, 26, 2), 
(8, 27, 1), 
(8, 28, 1), 
(8, 29, 1), 
(8, 61, 1), 
(10, 1, 2), 
(10, 38, 2), 
(10, 39, 2), 
(10, 40, 2), 
(10, 41, 2), 
(10, 47, 2), 
(10, 48, 2), 
(10, 49, 2), 
(10, 50, 2), 
(10, 60, 2), 
(10, 63, 2), 
(10, 4, 1), 
(10, 5, 2), 
(10, 6, 2), 
(10, 7, 2), 
(10, 8, 2), 
(10, 9, 2), 
(10, 10, 2), 
(10, 11, 2), 
(10, 12, 2), 
(10, 51, 2), 
(10, 62, 2), 
(10, 54, 1), 
(10, 55, 2), 
(10, 31, 2), 
(10, 32, 2), 
(10, 33, 2), 
(10, 34, 2), 
(10, 35, 2), 
(10, 36, 2), 
(10, 37, 2), 
(10, 57, 2), 
(10, 58, 2), 
(10, 59, 2), 
(10, 19, 1), 
(10, 20, 2), 
(10, 21, 2), 
(10, 22, 2), 
(10, 23, 2), 
(10, 24, 2), 
(10, 25, 2), 
(10, 26, 1), 
(10, 27, 2), 
(10, 28, 2), 
(10, 29, 2), 
(10, 61, 2), 
(1, 4, 2), 
(2, 4, 3), 
(30, 1, 1), 
(30, 38, 1), 
(30, 39, 1), 
(30, 40, 1), 
(30, 41, 1), 
(30, 47, 1), 
(30, 48, 1), 
(30, 49, 1), 
(30, 50, 1), 
(30, 60, 1), 
(30, 63, 1), 
(30, 4, 1), 
(30, 5, 1), 
(30, 6, 1), 
(30, 7, 1), 
(30, 8, 1), 
(30, 9, 1), 
(30, 10, 1), 
(30, 11, 1), 
(30, 12, 1), 
(30, 51, 1), 
(30, 62, 1), 
(30, 54, 1), 
(30, 55, 1), 
(30, 31, 1), 
(30, 32, 1), 
(30, 33, 1), 
(30, 34, 1), 
(30, 35, 1), 
(30, 36, 1), 
(30, 37, 1), 
(30, 57, 1), 
(30, 58, 1), 
(30, 59, 1), 
(30, 19, 1), 
(30, 20, 1), 
(30, 21, 1), 
(30, 22, 1), 
(30, 23, 1), 
(30, 24, 1), 
(30, 25, 1), 
(30, 26, 1), 
(30, 27, 1), 
(30, 28, 1), 
(30, 29, 1), 
(30, 61, 1), 
(28, 1, 1), 
(28, 38, 1), 
(28, 39, 1), 
(28, 40, 1), 
(28, 41, 1), 
(28, 47, 1), 
(28, 48, 1), 
(28, 49, 1), 
(28, 50, 1), 
(28, 60, 1), 
(28, 63, 1), 
(28, 4, 1), 
(28, 5, 1), 
(28, 6, 1), 
(28, 7, 1), 
(28, 8, 1), 
(28, 9, 1), 
(28, 10, 1), 
(28, 11, 1), 
(28, 12, 1), 
(28, 51, 1), 
(28, 62, 1), 
(28, 54, 1), 
(28, 55, 1), 
(28, 31, 1), 
(28, 32, 1), 
(28, 33, 1), 
(28, 34, 1), 
(28, 35, 1), 
(28, 36, 1), 
(28, 37, 1), 
(28, 57, 1), 
(28, 58, 1), 
(28, 59, 1), 
(28, 19, 1), 
(28, 20, 1), 
(28, 21, 1), 
(28, 22, 1), 
(28, 23, 1), 
(28, 24, 1), 
(28, 25, 1), 
(28, 26, 1), 
(28, 27, 1), 
(28, 28, 1), 
(28, 29, 1), 
(28, 61, 1), 
(29, 1, 1), 
(29, 38, 1), 
(29, 39, 1), 
(29, 40, 1), 
(29, 41, 1), 
(29, 47, 1), 
(29, 48, 1), 
(29, 49, 1), 
(29, 50, 1), 
(29, 60, 1), 
(29, 63, 1), 
(29, 4, 1), 
(29, 5, 1), 
(29, 6, 1), 
(29, 7, 1), 
(29, 8, 1), 
(29, 9, 1), 
(29, 10, 1), 
(29, 11, 1), 
(29, 12, 1), 
(29, 51, 1), 
(29, 62, 1), 
(29, 54, 1), 
(29, 55, 1), 
(29, 31, 1), 
(29, 32, 1), 
(29, 33, 1), 
(29, 34, 1), 
(29, 35, 1), 
(29, 36, 1), 
(29, 37, 1), 
(29, 57, 1), 
(29, 58, 1), 
(29, 59, 1), 
(29, 19, 1), 
(29, 20, 1), 
(29, 21, 1), 
(29, 22, 1), 
(29, 23, 1), 
(29, 24, 1), 
(29, 25, 1), 
(29, 26, 1), 
(29, 27, 1), 
(29, 28, 1), 
(29, 29, 1), 
(29, 61, 1), 
(22, 1, 1), 
(22, 38, 1), 
(22, 39, 1), 
(22, 40, 1), 
(22, 41, 1), 
(22, 47, 1), 
(22, 48, 1), 
(22, 49, 1), 
(22, 50, 1), 
(22, 60, 1), 
(22, 63, 1), 
(22, 4, 1), 
(22, 5, 1), 
(22, 6, 1), 
(22, 7, 1), 
(22, 8, 1), 
(22, 9, 1), 
(22, 10, 1), 
(22, 11, 1), 
(22, 12, 1), 
(22, 51, 1), 
(22, 62, 1), 
(22, 54, 1), 
(22, 55, 1), 
(22, 31, 1), 
(22, 32, 1), 
(22, 33, 1), 
(22, 34, 1), 
(22, 35, 1), 
(22, 36, 1), 
(22, 37, 1), 
(22, 57, 1), 
(22, 58, 1), 
(22, 59, 1), 
(22, 19, 1), 
(22, 20, 1), 
(22, 21, 1), 
(22, 22, 1), 
(22, 23, 1), 
(22, 24, 1), 
(22, 25, 1), 
(22, 26, 1), 
(22, 27, 1), 
(22, 28, 1), 
(22, 29, 1), 
(22, 61, 1), 
(23, 1, 2), 
(23, 38, 2), 
(23, 39, 2), 
(23, 40, 2), 
(23, 41, 2), 
(23, 47, 2), 
(23, 48, 2), 
(23, 49, 2), 
(23, 50, 2), 
(23, 60, 2), 
(23, 63, 2), 
(23, 4, 2), 
(23, 5, 2), 
(23, 6, 2), 
(23, 7, 2), 
(23, 8, 2), 
(23, 9, 2), 
(23, 10, 2), 
(23, 11, 2), 
(23, 12, 2), 
(23, 51, 2), 
(23, 62, 2), 
(23, 54, 2), 
(23, 55, 2), 
(23, 31, 2), 
(23, 32, 2), 
(23, 33, 2), 
(23, 34, 2), 
(23, 35, 2), 
(23, 36, 2), 
(23, 37, 2), 
(23, 57, 2), 
(23, 58, 2), 
(23, 59, 2), 
(23, 19, 2), 
(23, 20, 2), 
(23, 21, 2), 
(23, 22, 2), 
(23, 23, 2), 
(23, 24, 2), 
(23, 25, 2), 
(23, 26, 2), 
(23, 27, 2), 
(23, 28, 2), 
(23, 29, 2), 
(23, 61, 2), 
(24, 1, 1), 
(24, 38, 1), 
(24, 39, 1), 
(24, 40, 1), 
(24, 41, 1), 
(24, 47, 1), 
(24, 48, 1), 
(24, 49, 1), 
(24, 50, 1), 
(24, 60, 1), 
(24, 63, 1), 
(24, 4, 1), 
(24, 5, 1), 
(24, 6, 1), 
(24, 7, 1), 
(24, 8, 1), 
(24, 9, 1), 
(24, 10, 1), 
(24, 11, 1), 
(24, 12, 1), 
(24, 51, 1), 
(24, 62, 1), 
(24, 54, 1), 
(24, 55, 1), 
(24, 31, 1), 
(24, 32, 1), 
(24, 33, 1), 
(24, 34, 1), 
(24, 35, 1), 
(24, 36, 1), 
(24, 37, 1), 
(24, 57, 1), 
(24, 58, 1), 
(24, 59, 1), 
(24, 19, 1), 
(24, 20, 1), 
(24, 21, 1), 
(24, 22, 1), 
(24, 23, 1), 
(24, 24, 1), 
(24, 25, 1), 
(24, 26, 1), 
(24, 27, 1), 
(24, 28, 1), 
(24, 29, 1), 
(24, 61, 1), 
(25, 1, 2), 
(25, 38, 2), 
(25, 39, 2), 
(25, 40, 2), 
(25, 41, 2), 
(25, 47, 2), 
(25, 48, 2), 
(25, 49, 2), 
(25, 50, 2), 
(25, 60, 2), 
(25, 63, 2), 
(25, 4, 2), 
(25, 5, 2), 
(25, 6, 2), 
(25, 7, 2), 
(25, 8, 2), 
(25, 9, 2), 
(25, 10, 2), 
(25, 11, 2), 
(25, 12, 2), 
(25, 51, 2), 
(25, 62, 2), 
(25, 54, 2), 
(25, 55, 2), 
(25, 31, 2), 
(25, 32, 2), 
(25, 33, 2), 
(25, 34, 2), 
(25, 35, 2), 
(25, 36, 2), 
(25, 37, 2), 
(25, 57, 2), 
(25, 58, 2), 
(25, 59, 2), 
(25, 19, 2), 
(25, 20, 2), 
(25, 21, 2), 
(25, 22, 2), 
(25, 23, 2), 
(25, 24, 2), 
(25, 25, 2), 
(25, 26, 2), 
(25, 27, 2), 
(25, 28, 2), 
(25, 29, 2), 
(25, 61, 2), 
(26, 1, 3), 
(26, 38, 3), 
(26, 39, 3), 
(26, 40, 3), 
(26, 41, 3), 
(26, 47, 3), 
(26, 48, 3), 
(26, 49, 3), 
(26, 50, 3), 
(26, 60, 3), 
(26, 63, 3), 
(26, 4, 3), 
(26, 5, 3), 
(26, 6, 3), 
(26, 7, 3), 
(26, 8, 3), 
(26, 9, 3), 
(26, 10, 3), 
(26, 11, 3), 
(26, 12, 3), 
(26, 51, 3), 
(26, 62, 3), 
(26, 54, 3), 
(26, 55, 3), 
(26, 31, 3), 
(26, 32, 3), 
(26, 33, 3), 
(26, 34, 3), 
(26, 35, 3), 
(26, 36, 3), 
(26, 37, 3), 
(26, 57, 3), 
(26, 58, 3), 
(26, 59, 3), 
(26, 19, 3), 
(26, 20, 3), 
(26, 21, 3), 
(26, 22, 3), 
(26, 23, 3), 
(26, 24, 3), 
(26, 25, 3), 
(26, 26, 3), 
(26, 27, 3), 
(26, 28, 3), 
(26, 29, 3), 
(26, 61, 3), 
(27, 1, 4), 
(27, 38, 4), 
(27, 39, 4), 
(27, 40, 4), 
(27, 41, 4), 
(27, 47, 4), 
(27, 48, 4), 
(27, 49, 4), 
(27, 50, 4), 
(27, 60, 4), 
(27, 63, 4), 
(27, 4, 4), 
(27, 5, 4), 
(27, 6, 4), 
(27, 7, 4), 
(27, 8, 4), 
(27, 9, 4), 
(27, 10, 4), 
(27, 11, 4), 
(27, 12, 4), 
(27, 51, 4), 
(27, 62, 4), 
(27, 54, 4), 
(27, 55, 4), 
(27, 31, 4), 
(27, 32, 4), 
(27, 33, 4), 
(27, 34, 4), 
(27, 35, 4), 
(27, 36, 4), 
(27, 37, 4), 
(27, 57, 4), 
(27, 58, 4), 
(27, 59, 4), 
(27, 19, 4), 
(27, 20, 4), 
(27, 21, 4), 
(27, 22, 4), 
(27, 23, 4), 
(27, 24, 4), 
(27, 25, 4), 
(27, 26, 4), 
(27, 27, 4), 
(27, 28, 4), 
(27, 29, 4), 
(27, 61, 4), 
(16, 75, 1), 
(16, 91, 1), 
(16, 70, 1), 
(16, 84, 1), 
(16, 65, 1), 
(16, 76, 1), 
(16, 77, 1), 
(16, 68, 1), 
(16, 73, 1), 
(16, 72, 1), 
(16, 85, 1), 
(16, 67, 1), 
(16, 92, 1), 
(16, 90, 1), 
(16, 78, 1), 
(16, 88, 1), 
(16, 71, 1), 
(16, 64, 1), 
(21, 75, 1), 
(21, 91, 1), 
(21, 70, 1), 
(21, 84, 1), 
(21, 65, 1), 
(21, 76, 1), 
(21, 77, 1), 
(21, 68, 1), 
(21, 73, 1), 
(21, 72, 1), 
(21, 85, 1), 
(21, 67, 1), 
(21, 92, 1), 
(21, 90, 1), 
(21, 78, 1), 
(21, 88, 1), 
(21, 71, 1), 
(21, 64, 1), 
(11, 75, 1), 
(11, 91, 1), 
(11, 70, 1), 
(11, 84, 1), 
(11, 65, 1), 
(11, 76, 1), 
(11, 77, 1), 
(11, 68, 1), 
(11, 73, 1), 
(11, 72, 1), 
(11, 85, 1), 
(11, 67, 1), 
(11, 92, 1), 
(11, 90, 1), 
(11, 78, 1), 
(11, 88, 1), 
(11, 71, 1), 
(11, 64, 1), 
(12, 75, 2), 
(12, 91, 2), 
(12, 70, 2), 
(12, 84, 2), 
(12, 65, 2), 
(12, 76, 2), 
(12, 77, 2), 
(12, 68, 2), 
(12, 73, 2), 
(12, 72, 2), 
(12, 85, 2), 
(12, 67, 2), 
(12, 92, 2), 
(12, 90, 2), 
(12, 78, 2), 
(12, 88, 2), 
(12, 71, 2), 
(12, 64, 2), 
(6, 75, 3), 
(6, 91, 3), 
(6, 70, 3), 
(6, 84, 3), 
(6, 65, 3), 
(6, 76, 3), 
(6, 77, 3), 
(6, 68, 3), 
(6, 73, 3), 
(6, 72, 3), 
(6, 85, 3), 
(6, 67, 3), 
(6, 92, 3), 
(6, 90, 3), 
(6, 78, 3), 
(6, 88, 3), 
(6, 71, 3), 
(6, 64, 3), 
(20, 75, 1), 
(20, 91, 1), 
(20, 70, 1), 
(20, 84, 1), 
(20, 65, 1), 
(20, 76, 1), 
(20, 77, 1), 
(20, 68, 1), 
(20, 73, 1), 
(20, 72, 1), 
(20, 85, 1), 
(20, 67, 1), 
(20, 92, 1), 
(20, 90, 1), 
(20, 78, 1), 
(20, 88, 1), 
(20, 71, 1), 
(20, 64, 1), 
(17, 75, 1), 
(17, 91, 1), 
(17, 70, 1), 
(17, 84, 1), 
(17, 65, 1), 
(17, 76, 1), 
(17, 77, 1), 
(17, 68, 1), 
(17, 73, 1), 
(17, 72, 1), 
(17, 85, 1), 
(17, 67, 1), 
(17, 92, 1), 
(17, 90, 1), 
(17, 78, 1), 
(17, 88, 1), 
(17, 71, 1), 
(17, 64, 1), 
(15, 75, 1), 
(15, 91, 1), 
(15, 70, 1), 
(15, 84, 1), 
(15, 65, 1), 
(15, 76, 1), 
(15, 77, 1), 
(15, 68, 1), 
(15, 73, 1), 
(15, 72, 1), 
(15, 85, 1), 
(15, 67, 1), 
(15, 92, 1), 
(15, 90, 1), 
(15, 78, 1), 
(15, 88, 1), 
(15, 71, 1), 
(15, 64, 1), 
(13, 75, 1), 
(13, 91, 1), 
(13, 70, 1), 
(13, 84, 1), 
(13, 65, 1), 
(13, 76, 1), 
(13, 77, 1), 
(13, 68, 1), 
(13, 73, 1), 
(13, 72, 1), 
(13, 85, 1), 
(13, 67, 1), 
(13, 92, 1), 
(13, 90, 1), 
(13, 78, 1), 
(13, 88, 1), 
(13, 71, 1), 
(13, 64, 1), 
(14, 75, 2), 
(14, 91, 2), 
(14, 70, 2), 
(14, 84, 2), 
(14, 65, 2), 
(14, 76, 2), 
(14, 77, 2), 
(14, 68, 2), 
(14, 73, 2), 
(14, 72, 2), 
(14, 85, 2), 
(14, 67, 2), 
(14, 92, 2), 
(14, 90, 2), 
(14, 78, 2), 
(14, 88, 2), 
(14, 71, 2), 
(14, 64, 2), 
(8, 75, 2), 
(8, 91, 1), 
(8, 70, 1), 
(8, 84, 1), 
(8, 65, 1), 
(8, 76, 1), 
(8, 77, 1), 
(8, 68, 1), 
(8, 73, 1), 
(8, 72, 1), 
(8, 85, 1), 
(8, 67, 1), 
(8, 92, 1), 
(8, 90, 1), 
(8, 78, 1), 
(8, 88, 1), 
(8, 71, 1), 
(8, 64, 1), 
(10, 75, 1), 
(10, 91, 2), 
(10, 70, 2), 
(10, 84, 2), 
(10, 65, 2), 
(10, 76, 2), 
(10, 77, 2), 
(10, 68, 2), 
(10, 73, 2), 
(10, 72, 2), 
(10, 85, 2), 
(10, 67, 2), 
(10, 92, 2), 
(10, 90, 2), 
(10, 78, 2), 
(10, 88, 2), 
(10, 71, 2), 
(10, 64, 2), 
(30, 75, 1), 
(30, 91, 1), 
(30, 70, 1), 
(30, 84, 1), 
(30, 65, 1), 
(30, 76, 1), 
(30, 77, 1), 
(30, 68, 1), 
(30, 73, 1), 
(30, 72, 1), 
(30, 85, 1), 
(30, 67, 1), 
(30, 92, 1), 
(30, 90, 1), 
(30, 78, 1), 
(30, 88, 1), 
(30, 71, 1), 
(30, 64, 1), 
(28, 75, 1), 
(28, 91, 1), 
(28, 70, 1), 
(28, 84, 1), 
(28, 65, 1), 
(28, 76, 1), 
(28, 77, 1), 
(28, 68, 1), 
(28, 73, 1), 
(28, 72, 1), 
(28, 85, 1), 
(28, 67, 1), 
(28, 92, 1), 
(28, 90, 1), 
(28, 78, 1), 
(28, 88, 1), 
(28, 71, 1), 
(28, 64, 1), 
(29, 75, 1), 
(29, 91, 1), 
(29, 70, 1), 
(29, 84, 1), 
(29, 65, 1), 
(29, 76, 1), 
(29, 77, 1), 
(29, 68, 1), 
(29, 73, 1), 
(29, 72, 1), 
(29, 85, 1), 
(29, 67, 1), 
(29, 92, 1), 
(29, 90, 1), 
(29, 78, 1), 
(29, 88, 1), 
(29, 71, 1), 
(29, 64, 1), 
(22, 75, 1), 
(22, 91, 1), 
(22, 70, 1), 
(22, 84, 1), 
(22, 65, 1), 
(22, 76, 1), 
(22, 77, 1), 
(22, 68, 1), 
(22, 73, 1), 
(22, 72, 1), 
(22, 85, 1), 
(22, 67, 1), 
(22, 92, 1), 
(22, 90, 1), 
(22, 78, 1), 
(22, 88, 1), 
(22, 71, 1), 
(22, 64, 1), 
(23, 75, 2), 
(23, 91, 2), 
(23, 70, 2), 
(23, 84, 2), 
(23, 65, 2), 
(23, 76, 2), 
(23, 77, 2), 
(23, 68, 2), 
(23, 73, 2), 
(23, 72, 2), 
(23, 85, 2), 
(23, 67, 2), 
(23, 92, 2), 
(23, 90, 2), 
(23, 78, 2), 
(23, 88, 2), 
(23, 71, 2), 
(23, 64, 2), 
(24, 75, 1), 
(24, 91, 1), 
(24, 70, 1), 
(24, 84, 1), 
(24, 65, 1), 
(24, 76, 1), 
(24, 77, 1), 
(24, 68, 1), 
(24, 73, 1), 
(24, 72, 1), 
(24, 85, 1), 
(24, 67, 1), 
(24, 92, 1), 
(24, 90, 1), 
(24, 78, 1), 
(24, 88, 1), 
(24, 71, 1), 
(24, 64, 1), 
(25, 75, 2), 
(25, 91, 2), 
(25, 70, 2), 
(25, 84, 2), 
(25, 65, 2), 
(25, 76, 2), 
(25, 77, 2), 
(25, 68, 2), 
(25, 73, 2), 
(25, 72, 2), 
(25, 85, 2), 
(25, 67, 2), 
(25, 92, 2), 
(25, 90, 2), 
(25, 78, 2), 
(25, 88, 2), 
(25, 71, 2), 
(25, 64, 2), 
(26, 75, 3), 
(26, 91, 3), 
(26, 70, 3), 
(26, 84, 3), 
(26, 65, 3), 
(26, 76, 3), 
(26, 77, 3), 
(26, 68, 3), 
(26, 73, 3), 
(26, 72, 3), 
(26, 85, 3), 
(26, 67, 3), 
(26, 92, 3), 
(26, 90, 3), 
(26, 78, 3), 
(26, 88, 3), 
(26, 71, 3), 
(26, 64, 3), 
(27, 75, 4), 
(27, 91, 4), 
(27, 70, 4), 
(27, 84, 4), 
(27, 65, 4), 
(27, 76, 4), 
(27, 77, 4), 
(27, 68, 4), 
(27, 73, 4), 
(27, 72, 4), 
(27, 85, 4), 
(27, 67, 4), 
(27, 92, 4), 
(27, 90, 4), 
(27, 78, 4), 
(27, 88, 4), 
(27, 71, 4), 
(27, 64, 4), 
(36, 1, 1), 
(38, 25, 2), 
(38, 29, 2), 
(39, 1, 2), 
(39, 4, 2), 
(39, 5, 2), 
(39, 6, 1), 
(39, 7, 1), 
(39, 8, 2), 
(39, 9, 1), 
(39, 10, 1), 
(39, 11, 1), 
(39, 12, 1), 
(39, 19, 2), 
(39, 20, 2), 
(39, 21, 2), 
(39, 22, 2), 
(39, 23, 2), 
(39, 24, 2), 
(39, 25, 3), 
(39, 26, 2), 
(39, 27, 2), 
(39, 28, 2), 
(39, 29, 1), 
(39, 60, 1), 
(39, 31, 2), 
(39, 32, 2), 
(39, 33, 2), 
(39, 34, 2), 
(39, 35, 2), 
(39, 36, 2), 
(39, 37, 2), 
(39, 61, 1), 
(39, 38, 1), 
(39, 39, 1), 
(39, 40, 1), 
(39, 41, 1), 
(39, 62, 1), 
(39, 63, 1), 
(39, 51, 1), 
(39, 47, 1), 
(39, 48, 1), 
(39, 49, 1), 
(39, 50, 1), 
(39, 54, 1), 
(39, 55, 1), 
(39, 57, 1), 
(39, 58, 1), 
(39, 59, 1), 
(39, 75, 2), 
(39, 91, 2), 
(39, 70, 2), 
(39, 84, 1), 
(39, 65, 1), 
(39, 76, 1), 
(39, 77, 1), 
(39, 68, 1), 
(39, 73, 1), 
(39, 72, 1), 
(39, 85, 1), 
(39, 67, 1), 
(39, 92, 2), 
(39, 90, 1), 
(39, 78, 1), 
(39, 88, 1), 
(39, 71, 1), 
(39, 64, 1), 
(40, 1, 1), 
(40, 4, 1), 
(40, 5, 1), 
(40, 6, 1), 
(40, 7, 1), 
(40, 8, 1), 
(40, 9, 1), 
(40, 10, 1), 
(40, 11, 1), 
(40, 12, 1), 
(40, 19, 1), 
(40, 20, 1), 
(40, 21, 1), 
(40, 22, 1), 
(40, 23, 1), 
(40, 24, 1), 
(40, 25, 1), 
(40, 26, 1), 
(40, 27, 1), 
(40, 28, 1), 
(40, 29, 1), 
(40, 60, 1), 
(40, 31, 1), 
(40, 32, 1), 
(40, 33, 1), 
(40, 34, 1), 
(40, 35, 1), 
(40, 36, 1), 
(40, 37, 1), 
(40, 61, 1), 
(40, 38, 1), 
(40, 39, 1), 
(40, 40, 1), 
(40, 41, 1), 
(40, 62, 1), 
(40, 63, 1), 
(40, 51, 1), 
(40, 47, 1), 
(40, 48, 1), 
(40, 49, 1), 
(40, 50, 1), 
(40, 54, 1), 
(40, 55, 1), 
(40, 57, 1), 
(40, 58, 1), 
(40, 59, 1), 
(40, 75, 1), 
(40, 91, 1), 
(40, 70, 1), 
(40, 84, 1), 
(40, 65, 1), 
(40, 76, 1), 
(40, 77, 1), 
(40, 68, 1), 
(40, 73, 1), 
(40, 72, 1), 
(40, 85, 1), 
(40, 67, 1), 
(40, 92, 1), 
(40, 90, 1), 
(40, 78, 1), 
(40, 88, 1), 
(40, 71, 1), 
(40, 64, 1), 
(16, 94, 1), 
(16, 95, 1), 
(21, 94, 1), 
(21, 95, 1), 
(11, 94, 1), 
(11, 95, 1), 
(12, 94, 2), 
(12, 95, 2), 
(38, 27, 3), 
(38, 26, 3), 
(39, 94, 1), 
(39, 95, 1), 
(20, 94, 1), 
(20, 95, 1), 
(17, 94, 1), 
(17, 95, 1), 
(15, 94, 1), 
(15, 95, 1), 
(13, 94, 1), 
(13, 95, 1), 
(14, 94, 2), 
(14, 95, 2), 
(8, 94, 1), 
(8, 95, 1), 
(10, 94, 2), 
(10, 95, 2), 
(6, 94, 3), 
(6, 95, 3), 
(40, 94, 1), 
(40, 95, 1), 
(30, 94, 1), 
(30, 95, 1), 
(28, 94, 1), 
(28, 95, 1), 
(29, 94, 1), 
(29, 95, 1), 
(22, 94, 1), 
(22, 95, 1), 
(23, 94, 2), 
(23, 95, 2), 
(24, 94, 1), 
(24, 95, 1), 
(25, 94, 2), 
(25, 95, 2), 
(26, 94, 3), 
(26, 95, 3), 
(27, 94, 4), 
(27, 95, 4), 
(41, 4, 1), 
(43, 1, 1), 
(43, 4, 1), 
(43, 5, 1), 
(43, 6, 1), 
(43, 7, 1), 
(43, 8, 1), 
(43, 9, 1), 
(43, 10, 1), 
(43, 11, 1), 
(43, 12, 1), 
(43, 19, 1), 
(43, 20, 1), 
(43, 21, 1), 
(43, 22, 1), 
(43, 23, 1), 
(43, 24, 1), 
(43, 25, 1), 
(43, 26, 1), 
(43, 27, 1), 
(43, 28, 1), 
(43, 29, 1), 
(43, 60, 1), 
(43, 31, 1), 
(43, 32, 1), 
(43, 33, 1), 
(43, 34, 1), 
(43, 35, 1), 
(43, 36, 1), 
(43, 37, 1), 
(43, 61, 1), 
(43, 38, 1), 
(43, 39, 1), 
(43, 40, 1), 
(43, 41, 1), 
(43, 62, 1), 
(43, 63, 1), 
(43, 51, 1), 
(43, 47, 1), 
(43, 48, 1), 
(43, 49, 1), 
(43, 50, 1), 
(43, 54, 1), 
(43, 55, 1), 
(43, 57, 1), 
(43, 58, 1), 
(43, 59, 1), 
(43, 75, 1), 
(43, 91, 1), 
(43, 70, 1), 
(43, 84, 1), 
(43, 65, 1), 
(43, 76, 1), 
(43, 77, 1), 
(43, 68, 1), 
(43, 73, 1), 
(43, 72, 1), 
(43, 85, 1), 
(43, 67, 1), 
(43, 92, 1), 
(43, 90, 1), 
(43, 78, 1), 
(43, 88, 1), 
(43, 71, 1), 
(43, 64, 1), 
(43, 94, 1), 
(43, 95, 1), 
(38, 75, 1), 
(38, 70, 1), 
(38, 91, 1), 
(38, 4, 1), 
(38, 5, 1), 
(38, 6, 2), 
(38, 7, 2), 
(38, 8, 1), 
(38, 9, 2), 
(38, 10, 2), 
(38, 11, 2), 
(38, 12, 2), 
(16, 98, 1), 
(16, 105, 1), 
(16, 106, 1), 
(16, 97, 1), 
(16, 104, 1), 
(16, 99, 1), 
(16, 101, 1), 
(16, 103, 1), 
(43, 98, 1), 
(43, 105, 1), 
(43, 106, 1), 
(43, 97, 1), 
(43, 104, 1), 
(43, 99, 1), 
(43, 101, 1), 
(43, 103, 1), 
(21, 98, 1), 
(21, 105, 1), 
(21, 106, 1), 
(21, 97, 1), 
(21, 104, 1), 
(21, 99, 1), 
(21, 101, 1), 
(21, 103, 1), 
(11, 98, 1), 
(11, 105, 1), 
(11, 106, 1), 
(11, 97, 1), 
(11, 104, 1), 
(11, 99, 1), 
(11, 101, 1), 
(11, 103, 1), 
(12, 98, 2), 
(12, 105, 2), 
(12, 106, 2), 
(12, 97, 2), 
(12, 104, 2), 
(12, 99, 2), 
(12, 101, 2), 
(12, 103, 2), 
(39, 98, 1), 
(39, 105, 1), 
(39, 106, 1), 
(39, 97, 1), 
(39, 104, 1), 
(39, 99, 1), 
(39, 101, 1), 
(39, 103, 1), 
(20, 98, 1), 
(20, 105, 1), 
(20, 106, 1), 
(20, 97, 1), 
(20, 104, 1), 
(20, 99, 1), 
(20, 101, 1), 
(20, 103, 1), 
(17, 98, 1), 
(17, 105, 1), 
(17, 106, 1), 
(17, 97, 1), 
(17, 104, 1), 
(17, 99, 1), 
(17, 101, 1), 
(17, 103, 1), 
(13, 98, 1), 
(13, 105, 1), 
(13, 106, 1), 
(13, 97, 1), 
(13, 104, 1), 
(13, 99, 1), 
(13, 101, 1), 
(13, 103, 1), 
(14, 98, 2), 
(14, 105, 2), 
(14, 106, 2), 
(14, 97, 2), 
(14, 104, 2), 
(14, 99, 2), 
(14, 101, 2), 
(14, 103, 2), 
(8, 98, 1), 
(8, 105, 1), 
(8, 106, 1), 
(8, 97, 1), 
(8, 104, 1), 
(8, 99, 1), 
(8, 101, 1), 
(8, 103, 1), 
(10, 98, 2), 
(10, 105, 2), 
(10, 106, 2), 
(10, 97, 2), 
(10, 104, 2), 
(10, 99, 2), 
(10, 101, 2), 
(10, 103, 2), 
(6, 98, 3), 
(6, 105, 3), 
(6, 106, 3), 
(6, 97, 3), 
(6, 104, 3), 
(6, 99, 3), 
(6, 101, 3), 
(6, 103, 3), 
(40, 98, 1), 
(40, 105, 1), 
(40, 106, 1), 
(40, 97, 1), 
(40, 104, 1), 
(40, 99, 1), 
(40, 101, 1), 
(40, 103, 1), 
(30, 98, 1), 
(30, 105, 1), 
(30, 106, 1), 
(30, 97, 1), 
(30, 104, 1), 
(30, 99, 1), 
(30, 101, 1), 
(30, 103, 1), 
(28, 98, 1), 
(28, 105, 1), 
(28, 106, 1), 
(28, 97, 1), 
(28, 104, 1), 
(28, 99, 1), 
(28, 101, 1), 
(28, 103, 1), 
(29, 98, 1), 
(29, 105, 1), 
(29, 106, 1), 
(29, 97, 1), 
(29, 104, 1), 
(29, 99, 1), 
(29, 101, 1), 
(29, 103, 1), 
(22, 98, 1), 
(22, 105, 1), 
(22, 106, 1), 
(22, 97, 1), 
(22, 104, 1), 
(22, 99, 1), 
(22, 101, 1), 
(22, 103, 1), 
(23, 98, 2), 
(23, 105, 2), 
(23, 106, 2), 
(23, 97, 2), 
(23, 104, 2), 
(23, 99, 2), 
(23, 101, 2), 
(23, 103, 2), 
(24, 98, 1), 
(24, 105, 1), 
(24, 106, 1), 
(24, 97, 1), 
(24, 104, 1), 
(24, 99, 1), 
(24, 101, 1), 
(24, 103, 1), 
(25, 98, 2), 
(25, 105, 2), 
(25, 106, 2), 
(25, 97, 2), 
(25, 104, 2), 
(25, 99, 2), 
(25, 101, 2), 
(25, 103, 2), 
(26, 98, 3), 
(26, 105, 3), 
(26, 106, 3), 
(26, 97, 3), 
(26, 104, 3), 
(26, 99, 3), 
(26, 101, 3), 
(26, 103, 3), 
(27, 98, 4), 
(27, 105, 4), 
(27, 106, 4), 
(27, 97, 4), 
(27, 104, 4), 
(27, 99, 4), 
(27, 101, 4), 
(27, 103, 4), 
(16, 107, 1), 
(43, 107, 1), 
(21, 107, 1), 
(11, 107, 1), 
(12, 107, 2), 
(39, 107, 1), 
(20, 107, 1), 
(17, 107, 1), 
(13, 107, 1), 
(14, 107, 2), 
(8, 107, 1), 
(10, 107, 2), 
(6, 107, 3), 
(40, 107, 1), 
(30, 107, 1), 
(28, 107, 1), 
(29, 107, 1), 
(22, 107, 1), 
(23, 107, 2), 
(24, 107, 1), 
(25, 107, 2), 
(26, 107, 3), 
(27, 107, 4), 
(16, 111, 1), 
(16, 115, 1), 
(16, 110, 1), 
(43, 111, 1), 
(43, 115, 1), 
(43, 110, 1), 
(21, 111, 1), 
(21, 115, 1), 
(21, 110, 1), 
(11, 111, 1), 
(11, 115, 1), 
(11, 110, 1), 
(12, 111, 2), 
(12, 115, 2), 
(12, 110, 2), 
(39, 111, 1), 
(39, 115, 1), 
(39, 110, 1), 
(20, 111, 1), 
(20, 115, 1), 
(20, 110, 1), 
(17, 111, 1), 
(17, 115, 1), 
(17, 110, 1), 
(13, 111, 1), 
(13, 115, 1), 
(13, 110, 1), 
(14, 111, 2), 
(14, 115, 2), 
(14, 110, 2), 
(8, 111, 1), 
(8, 115, 1), 
(8, 110, 1), 
(10, 111, 2), 
(10, 115, 2), 
(10, 110, 2), 
(6, 111, 3), 
(6, 115, 3), 
(6, 110, 3), 
(40, 111, 1), 
(40, 115, 1), 
(40, 110, 1), 
(30, 111, 1), 
(30, 115, 1), 
(30, 110, 1), 
(28, 111, 1), 
(28, 115, 1), 
(28, 110, 1), 
(29, 111, 1), 
(29, 115, 1), 
(29, 110, 1), 
(22, 111, 1), 
(22, 115, 1), 
(22, 110, 1), 
(23, 111, 2), 
(23, 115, 2), 
(23, 110, 2), 
(24, 111, 1), 
(24, 115, 1), 
(24, 110, 1), 
(25, 111, 2), 
(25, 115, 2), 
(25, 110, 2), 
(26, 111, 3), 
(26, 115, 3), 
(26, 110, 3), 
(27, 111, 4), 
(27, 115, 4), 
(27, 110, 4), 
(52, 92, 1), 
(16, 117, 1), 
(43, 117, 1), 
(21, 117, 1), 
(11, 117, 1), 
(12, 117, 2), 
(39, 117, 2), 
(20, 117, 1), 
(17, 117, 1), 
(13, 117, 1), 
(14, 117, 2), 
(8, 117, 1), 
(10, 117, 2), 
(6, 117, 3), 
(40, 117, 1), 
(30, 117, 1), 
(28, 117, 1), 
(29, 117, 1), 
(22, 117, 1), 
(23, 117, 2), 
(24, 117, 1), 
(25, 117, 2), 
(26, 117, 3), 
(27, 117, 4), 
(53, 1, 3), 
(53, 4, 3), 
(53, 5, 3), 
(53, 6, 3), 
(53, 7, 3), 
(53, 8, 3), 
(53, 9, 3), 
(53, 10, 3), 
(53, 11, 3), 
(53, 12, 3), 
(53, 19, 3), 
(53, 20, 3), 
(53, 21, 3), 
(53, 22, 3), 
(53, 23, 3), 
(53, 24, 3), 
(53, 25, 4), 
(53, 26, 4), 
(53, 27, 4), 
(53, 28, 3), 
(53, 29, 3), 
(53, 60, 2), 
(53, 31, 3), 
(53, 32, 3), 
(53, 33, 3), 
(53, 34, 3), 
(53, 35, 3), 
(53, 36, 3), 
(53, 37, 3), 
(53, 61, 2), 
(53, 38, 2), 
(53, 39, 2), 
(53, 40, 2), 
(53, 41, 2), 
(53, 62, 2), 
(53, 63, 2), 
(53, 51, 2), 
(53, 47, 2), 
(53, 48, 2), 
(53, 49, 2), 
(53, 50, 2), 
(53, 54, 2), 
(53, 55, 2), 
(53, 57, 2), 
(53, 58, 2), 
(53, 59, 2), 
(53, 75, 3), 
(53, 91, 3), 
(53, 70, 3), 
(53, 84, 2), 
(53, 65, 2), 
(53, 76, 2), 
(53, 77, 2), 
(53, 68, 2), 
(53, 73, 2), 
(53, 72, 2), 
(53, 85, 2), 
(53, 67, 2), 
(53, 92, 3), 
(53, 90, 2), 
(53, 78, 2), 
(53, 88, 2), 
(53, 71, 2), 
(53, 64, 2), 
(53, 94, 2), 
(53, 95, 2), 
(53, 98, 2), 
(53, 105, 2), 
(53, 106, 2), 
(53, 97, 2), 
(53, 104, 2), 
(53, 99, 2), 
(53, 101, 2), 
(53, 103, 2), 
(53, 107, 2), 
(53, 117, 1), 
(54, 117, 1), 
(56, 1, 4), 
(56, 4, 4), 
(56, 5, 4), 
(56, 6, 4), 
(56, 7, 4), 
(56, 8, 4), 
(56, 9, 4), 
(56, 10, 4), 
(56, 11, 4), 
(56, 12, 4), 
(56, 19, 4), 
(56, 20, 4), 
(56, 21, 4), 
(56, 22, 4), 
(56, 23, 4), 
(56, 24, 4), 
(56, 25, 4), 
(56, 26, 4), 
(56, 27, 4), 
(56, 28, 4), 
(56, 29, 4), 
(56, 60, 4), 
(56, 31, 4), 
(56, 32, 4), 
(56, 33, 4), 
(56, 34, 4), 
(56, 35, 4), 
(56, 36, 4), 
(56, 37, 4), 
(56, 61, 4), 
(56, 38, 4), 
(56, 39, 4), 
(56, 40, 4), 
(56, 41, 4), 
(56, 62, 4), 
(56, 63, 4), 
(56, 51, 4), 
(56, 47, 4), 
(56, 48, 4), 
(56, 49, 4), 
(56, 50, 4), 
(56, 54, 4), 
(56, 55, 4), 
(56, 57, 4), 
(56, 58, 4), 
(56, 59, 4), 
(56, 75, 4), 
(56, 91, 4), 
(56, 70, 4), 
(56, 84, 4), 
(56, 65, 4), 
(56, 76, 4), 
(56, 77, 4), 
(56, 68, 4), 
(56, 73, 4), 
(56, 72, 4), 
(56, 85, 4), 
(56, 67, 4), 
(56, 92, 4), 
(56, 90, 4), 
(56, 78, 4), 
(56, 88, 4), 
(56, 71, 4), 
(56, 64, 4), 
(56, 94, 4), 
(56, 95, 4), 
(56, 98, 4), 
(56, 105, 4), 
(56, 106, 4), 
(56, 97, 4), 
(56, 104, 4), 
(56, 99, 4), 
(56, 101, 4), 
(56, 103, 4), 
(56, 107, 4), 
(56, 111, 4), 
(56, 115, 4), 
(56, 110, 4), 
(56, 117, 4), 
(57, 1, 4), 
(57, 4, 4), 
(57, 5, 4), 
(57, 6, 4), 
(57, 7, 4), 
(57, 8, 4), 
(57, 9, 4), 
(57, 10, 4), 
(57, 11, 4), 
(57, 12, 4), 
(57, 19, 4), 
(57, 20, 4), 
(57, 21, 4), 
(57, 22, 4), 
(57, 23, 4), 
(57, 24, 4), 
(57, 25, 5), 
(57, 26, 5), 
(57, 27, 5), 
(57, 28, 4), 
(57, 29, 4), 
(57, 60, 3), 
(57, 31, 4), 
(57, 32, 4), 
(57, 33, 4), 
(57, 34, 4), 
(57, 35, 4), 
(57, 36, 4), 
(57, 37, 4), 
(57, 61, 3), 
(57, 38, 3), 
(57, 39, 3), 
(57, 40, 3), 
(57, 41, 3), 
(57, 62, 3), 
(57, 63, 3), 
(57, 51, 3), 
(57, 47, 3), 
(57, 48, 3), 
(57, 49, 3), 
(57, 50, 3), 
(57, 54, 3), 
(57, 55, 3), 
(57, 57, 3), 
(57, 58, 3), 
(57, 59, 3), 
(57, 75, 4), 
(57, 91, 4), 
(57, 70, 4), 
(57, 84, 3), 
(57, 65, 3), 
(57, 76, 3), 
(57, 77, 3), 
(57, 68, 3), 
(57, 73, 3), 
(57, 72, 3), 
(57, 85, 3), 
(57, 67, 3), 
(57, 92, 4), 
(57, 90, 3), 
(57, 78, 3), 
(57, 88, 3), 
(57, 71, 3), 
(57, 64, 3), 
(57, 94, 3), 
(57, 95, 3), 
(57, 98, 3), 
(57, 105, 3), 
(57, 106, 3), 
(57, 97, 3), 
(57, 104, 3), 
(57, 99, 3), 
(57, 101, 3), 
(57, 103, 3), 
(57, 107, 3), 
(57, 111, 3), 
(57, 115, 3), 
(57, 110, 3), 
(57, 117, 3), 
(59, 117, 2);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_comment`
--

DROP TABLE IF EXISTS `ytt_vi_comment`;
CREATE TABLE `ytt_vi_comment` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(55)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_name` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(15)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `mod_id` (`module`,`area`,`id`),
  KEY `post_time` (`post_time`)
) ENGINE=MyISAM  AUTO_INCREMENT=3  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_comment`
--

INSERT INTO `ytt_vi_comment` VALUES
(1, 'news', 8, 11, 0, 'gfgfdg', 1493320824, 1, 'admin', 'ytuongtrevccict@gmail.com', '::1', 1, 0, 0), 
(2, 'shops', 70, 11, 0, 'DSFSSDF', 1493320872, 1, 'admin', 'ytuongtrevccict@gmail.com', '::1', 1, 0, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_contact_department`
--

DROP TABLE IF EXISTS `ytt_vi_contact_department`;
CREATE TABLE `ytt_vi_contact_department` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `full_name` (`full_name`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  AUTO_INCREMENT=3  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_contact_department`
--

INSERT INTO `ytt_vi_contact_department` VALUES
(1, 'Phòng Hỗ Trợ Đầu Tư Khởi Nghiệp', 'Phong-Ho-Tro-Dau-Tu-Khoi-Nghiep', '', '&#40;08&#41; 38.000.000&#91;+84838000000&#93;', '08 38.000.001', 'htkn@gmail.com', '', 'Bộ phận tiếp nhận và giải quyết các yêu cầu, đề nghị, ý kiến liên quan đến hoạt động chính của doanh nghiệp', '{\"Facebook\":\"ytuongtresupport\"}', 'Tư vấn nội dung|Đề nghị hợp tác', '1/1/1/1', 1, 1, 0), 
(2, 'Phòng Thông Tin', 'Phong-Thong-Tin', '', '&#40;08&#41; 38.000.002&#91;+84838000002&#93;', '08 38.000.003', 'pttvccict@gmail.com', '', 'Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật', '{\"Facebook\":\"pttvccict\"}', 'Thông báo lỗi|Góp ý cải tiến', '1/1/1/1', 1, 2, 1);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_contact_reply`
--

DROP TABLE IF EXISTS `ytt_vi_contact_reply`;
CREATE TABLE `ytt_vi_contact_reply` (
  `rid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reply_content` text  COLLATE utf8mb4_unicode_ci,
  `reply_time` int(11) unsigned NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_contact_send`
--

DROP TABLE IF EXISTS `ytt_vi_contact_send`;
CREATE TABLE `ytt_vi_contact_send` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cat` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) unsigned NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sender_name` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(15)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sender_name` (`sender_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_contact_supporter`
--

DROP TABLE IF EXISTS `ytt_vi_contact_supporter`;
CREATE TABLE `ytt_vi_contact_supporter` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `departmentid` smallint(5) unsigned NOT NULL,
  `full_name` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `weight` smallint(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_download`
--

DROP TABLE IF EXISTS `ytt_vi_download`;
CREATE TABLE `ytt_vi_download` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `introtext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadtime` int(11) unsigned NOT NULL,
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_name` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_name` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_email` varchar(60)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_url` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(20)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `fileimage` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `copyright` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_fileupload` smallint(4) unsigned NOT NULL DEFAULT '0',
  `num_linkdirect` smallint(4) unsigned NOT NULL DEFAULT '0',
  `view_hits` int(11) NOT NULL DEFAULT '0',
  `download_hits` int(11) NOT NULL DEFAULT '0',
  `comment_hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`),
  KEY `catid` (`catid`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_download`
--

INSERT INTO `ytt_vi_download` VALUES
(1, 1, 'word test', 'word-test', 'ngogiangthanh', 1493388028, 1493388028, 1, 'admin', 'thanh ngo', 'thanhthanh1516@gmail.com', '', '', 255515, '', 1, '', 1, 0, 1, 1, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_download_categories`
--

DROP TABLE IF EXISTS `ytt_vi_download_categories`;
CREATE TABLE `ytt_vi_download_categories` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text  COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `groups_onlineview` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `groups_download` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `groups_addfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `viewcat` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT 'viewcat_list_new',
  `numlink` smallint(4) DEFAULT '3',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_download_categories`
--

INSERT INTO `ytt_vi_download_categories` VALUES
(1, 0, 'testing', 'testing', 'test', '6', '6', '6', '4', 0, '', 'viewcat_list_new', 3, 1, 0, 1, 1);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_download_config`
--

DROP TABLE IF EXISTS `ytt_vi_download_config`;
CREATE TABLE `ytt_vi_download_config` (
  `config_name` varchar(30)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_download_config`
--

INSERT INTO `ytt_vi_download_config` VALUES
('indexfile', 'viewcat_main_bottom'), 
('viewlist_type', 'list'), 
('per_page_home', '20'), 
('per_page_child', '20'), 
('is_addfile', '1'), 
('groups_upload', '4'), 
('maxfilesize', '2097152'), 
('upload_filetype', 'adobe,archives,audio,documents,flash,images,real,video'), 
('groups_addfile', '4'), 
('tags_alias', '0'), 
('is_zip', '0'), 
('is_resume', '1'), 
('max_speed', '0'), 
('delfile_mode', '0'), 
('structure_upload', 'Ym'), 
('scorm_handle_mode', '0'), 
('fileserver', '0'), 
('shareport', 'none'), 
('addthis_pubid', ''), 
('pdf_handler', 'phpattachment'), 
('list_title_length', '30'), 
('arr_dis_ad_author_name', '1'), 
('arr_dis_ad_author_email', '1'), 
('arr_dis_ad_author_url', '1'), 
('arr_dis_ad_fileimage', '1'), 
('arr_dis_ad_introtext', '1'), 
('arr_dis_ad_description', '1'), 
('arr_dis_ad_linkdirect', '1'), 
('arr_dis_ad_filesize', '1'), 
('arr_dis_ad_version', '1'), 
('arr_dis_ad_copyright', '1'), 
('arr_req_ad_author_name', '0'), 
('arr_req_ad_author_email', '0'), 
('arr_req_ad_author_url', '0'), 
('arr_req_ad_fileimage', '0'), 
('arr_req_ad_introtext', '0'), 
('arr_req_ad_description', '0'), 
('arr_req_ad_linkdirect', '0'), 
('arr_req_ad_filesize', '0'), 
('arr_req_ad_version', '0'), 
('arr_req_ad_copyright', '0'), 
('arr_dis_ur_author_name', '1'), 
('arr_dis_ur_author_email', '1'), 
('arr_dis_ur_author_url', '1'), 
('arr_dis_ur_fileimage', '1'), 
('arr_dis_ur_introtext', '1'), 
('arr_dis_ur_description', '1'), 
('arr_dis_ur_linkdirect', '1'), 
('arr_dis_ur_filesize', '1'), 
('arr_dis_ur_version', '1'), 
('arr_dis_ur_copyright', '1'), 
('arr_req_ur_author_name', '0'), 
('arr_req_ur_author_email', '0'), 
('arr_req_ur_author_url', '0'), 
('arr_req_ur_fileimage', '0'), 
('arr_req_ur_introtext', '0'), 
('arr_req_ur_description', '0'), 
('arr_req_ur_linkdirect', '0'), 
('arr_req_ur_filesize', '0'), 
('arr_req_ur_version', '0'), 
('arr_req_ur_copyright', '0');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_download_detail`
--

DROP TABLE IF EXISTS `ytt_vi_download_detail`;
CREATE TABLE `ytt_vi_download_detail` (
  `id` int(11) unsigned NOT NULL,
  `description` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkdirect` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_comment` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_view` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_onlineview` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_download` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_detail` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_download_detail`
--

INSERT INTO `ytt_vi_download_detail` VALUES
(1, 'ngogiangthanh', '', '4', '6', '6', '6', '');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_download_files`
--

DROP TABLE IF EXISTS `ytt_vi_download_files`;
CREATE TABLE `ytt_vi_download_files` (
  `file_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'ID file download',
  `server_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'ID fileserver hoặc 0 nếu là local',
  `file_path` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `scorm_path` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`),
  KEY `download_id` (`download_id`),
  KEY `server_id` (`server_id`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_download_files`
--

INSERT INTO `ytt_vi_download_files` VALUES
(1, 1, 0, '/download/2017_04/files/pci-in-an-pham.pptx', '', 255515, 1, 1);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_download_report`
--

DROP TABLE IF EXISTS `ytt_vi_download_report`;
CREATE TABLE `ytt_vi_download_report` (
  `fid` int(11) unsigned NOT NULL DEFAULT '0',
  `post_ip` varchar(45)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `fid` (`fid`),
  KEY `post_time` (`post_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_download_server`
--

DROP TABLE IF EXISTS `ytt_vi_download_server`;
CREATE TABLE `ytt_vi_download_server` (
  `server_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `server_name` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `upload_url` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `access_key` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `secret_key` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`server_id`),
  UNIQUE KEY `server_name` (`server_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_download_tags`
--

DROP TABLE IF EXISTS `ytt_vi_download_tags`;
CREATE TABLE `ytt_vi_download_tags` (
  `did` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `numdownload` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text  COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_download_tags_id`
--

DROP TABLE IF EXISTS `ytt_vi_download_tags_id`;
CREATE TABLE `ytt_vi_download_tags_id` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `did` int(11) unsigned NOT NULL DEFAULT '0',
  `keyword` varchar(65)  COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `id_tid` (`id`,`did`),
  KEY `did` (`did`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_download_tmp`
--

DROP TABLE IF EXISTS `ytt_vi_download_tmp`;
CREATE TABLE `ytt_vi_download_tmp` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `introtext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadtime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_name` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_email` varchar(60)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_url` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileupload` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkdirect` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(20)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileimage` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_faq`
--

DROP TABLE IF EXISTS `ytt_vi_faq`;
CREATE TABLE `ytt_vi_faq` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  AUTO_INCREMENT=3  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_faq`
--

INSERT INTO `ytt_vi_faq` VALUES
(1, 1, 'Làm sao có thể sử dụng', 'Lam-sao-co-the-su-dung', 'câu hỏi 1', 'Câu trả lời 1', 1, 1, 1493388253), 
(2, 1, 'câu hỏi 2', 'cau-hoi-2', 'câu hỏi 2', 'câu trả lời 2', 2, 1, 1493388275);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_faq_categories`
--

DROP TABLE IF EXISTS `ytt_vi_faq_categories`;
CREATE TABLE `ytt_vi_faq_categories` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(8) unsigned NOT NULL,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_view` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `keywords` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_faq_categories`
--

INSERT INTO `ytt_vi_faq_categories` VALUES
(1, 0, 'Làm sao có thể sử dụng', 'Lam-sao-co-the-su-dung', 'Làm sao có thể sử dụng', '6', 1, 1, 'làm sao,có thể,sử dụng,câu hỏi,trả lời');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_faq_config`
--

DROP TABLE IF EXISTS `ytt_vi_faq_config`;
CREATE TABLE `ytt_vi_faq_config` (
  `config_name` varchar(30)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_faq_config`
--

INSERT INTO `ytt_vi_faq_config` VALUES
('type_main', '0');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_freecontent_blocks`
--

DROP TABLE IF EXISTS `ytt_vi_freecontent_blocks`;
CREATE TABLE `ytt_vi_freecontent_blocks` (
  `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_freecontent_blocks`
--

INSERT INTO `ytt_vi_freecontent_blocks` VALUES
(1, 'Sàn Giao Dịch Ý Tưởng', 'Sản phẩm của VCCI Chi nhánh Cần Thơ');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_freecontent_rows`
--

DROP TABLE IF EXISTS `ytt_vi_freecontent_rows`;
CREATE TABLE `ytt_vi_freecontent_rows` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  AUTO_INCREMENT=6  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_freecontent_rows`
--

INSERT INTO `ytt_vi_freecontent_rows` VALUES
(1, 1, 'Trao đổi ý tưởng', '<ul>
	<li>Ươm mầm những ý tưởng hay</li>
	<li>Chia sẽ hiểu biết</li>
	<li>Cùng nhau thảo luận</li>
</ul>', '', '_self', 'cms.jpg', 1493318588, 0, 1), 
(2, 1, 'Tìm kiếm giải pháp', '<ul>
	<li>Bạn cần một giải pháp để giải quyết vấn đề?</li>
	<li>Bạn cần tìm một vấn đề để trình bày giải pháp?</li>
</ul>', '', '_self', 'portal.jpg', 1493318676, 0, 1);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_menu`
--

DROP TABLE IF EXISTS `ytt_vi_menu`;
CREATE TABLE `ytt_vi_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM  AUTO_INCREMENT=4  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_menu`
--

INSERT INTO `ytt_vi_menu` VALUES
(3, 'Top Menu');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_menu_rows`
--

DROP TABLE IF EXISTS `ytt_vi_menu_rows`;
CREATE TABLE `ytt_vi_menu_rows` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(5) unsigned NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` text  COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT '0',
  `css` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`,`mid`)
) ENGINE=MyISAM  AUTO_INCREMENT=307  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_menu_rows`
--

INSERT INTO `ytt_vi_menu_rows` VALUES
(291, 0, 3, 'Thảo luận ý tưởng', '/nukeviet/index.php?language=vi&nv=shops', '', '', '', 2, 4, 0, '299,297,298', '6', '0', '', 1, '', 0, 1), 
(299, 291, 3, 'Giải pháp Kinh doanh', '/nukeviet/vi/shops/giai-phap-kinh-doanh/', '', '', '', 3, 7, 1, '', '6', 'shops', '', 1, '', 0, 1), 
(253, 251, 3, 'Phòng Thông Tin', '/nukeviet/index.php?language=vi&nv=contact&op=Ky-thuat', '', '', '', 2, 15, 1, '', '6', 'contact', '', 1, '', 1, 1), 
(251, 0, 3, 'Liên hệ', '/nukeviet/index.php?language=vi&nv=contact', '', '', '', 4, 13, 0, '253,252', '6', 'contact', '', 1, '', 1, 1), 
(252, 251, 3, 'Phòng Hỗ Trợ Đầu Tư &amp; Khởi Nghiệp', '/nukeviet/index.php?language=vi&nv=contact&op=Cham-soc-khach-hang', '', '', '', 1, 14, 1, '', '6', 'contact', '', 1, '', 1, 1), 
(293, 233, 3, 'Giải pháp kinh doanh', '/nukeviet/index.php?language=vi&nv=news&op=giai-phap-kinh-doanh', '', '', '', 1, 9, 1, '', '6', 'news', 'giai-phap-kinh-doanh', 1, '', 0, 1), 
(294, 233, 3, 'Công nghệ thực phẩm', '/nukeviet/index.php?language=vi&nv=news&op=cong-nghe-thuc-pham', '', '', '', 2, 10, 1, '', '6', 'news', 'cong-nghe-thuc-pham', 1, '', 0, 1), 
(295, 233, 3, 'Công nghệ Thông tin', '/nukeviet/index.php?language=vi&nv=news&op=cong-nghe-thong-tin', '', '', '', 3, 11, 1, '', '6', 'news', '', 1, '', 0, 1), 
(297, 291, 3, 'Công nghệ Thực phẩm', '/nukeviet/vi/shops/cong-nghe-thuc-pham/', '', '', '', 1, 5, 1, '', '6', 'shops', '', 1, '', 0, 1), 
(296, 233, 3, 'Đăng tin tìm kiếm', '/nukeviet/vi/news/content/?contentid=0&checkss=6708bc77df2d44167a533c9af5eef0c9', '', '', '', 4, 12, 1, '', '4,7', 'news', 'content', 1, '', 0, 1), 
(304, 301, 3, 'FAQ&#x002F;Các câu hỏi thường gặp', '/nukeviet/index.php?language=vi&nv=faq', '', '', '', 3, 19, 1, '', '6', 'faq', '', 1, '', 0, 1), 
(233, 0, 3, 'Tìm kiếm giải pháp', '/nukeviet/index.php?language=vi&nv=news', '', '', '', 3, 8, 0, '293,294,295,296', '6', 'news', '', 1, '', 1, 1), 
(298, 291, 3, 'Công nghệ Thông tin', '/nukeviet/vi/shops/cong-nghe-thong-tin/', '', '', '', 2, 6, 1, '', '6', 'shops', '', 1, '', 0, 1), 
(302, 301, 3, 'Chính sách bảo mật &#40;Quyền riêng tư&#41;', '/nukeviet/index.php?language=vi&nv=siteterms&op=privacy.html', '', '', '', 1, 17, 1, '', '6', 'siteterms', 'privacy.html', 1, '', 0, 1), 
(303, 301, 3, 'Điều khoản và điều kiện sử dụng', '/nukeviet/index.php?language=vi&nv=siteterms&op=terms-and-conditions.html', '', '', '', 2, 18, 1, '', '6', 'siteterms', '', 1, '', 0, 1), 
(226, 224, 3, 'Về chúng tôi&#x002F;VCCI Cần Thơ', '/nukeviet/index.php?language=vi&nv=about&op=VCCI-Can-Tho.html', '', '', '', 2, 3, 1, '', '6', 'about', 'VCCI-Can-Tho.html', 1, '', 1, 1), 
(224, 0, 3, 'Giới thiệu', '/nukeviet/index.php?language=vi&nv=about', '', '', '', 1, 1, 0, '226,225', '6', 'about', '', 1, '', 1, 1), 
(301, 0, 3, 'Quy định chung', '/nukeviet/index.php?language=vi&nv=siteterms', '', '', '', 5, 16, 0, '304,302,303', '6', 'siteterms', '', 1, '', 0, 1), 
(225, 224, 3, 'Về sàn giao dịch ý tưởng', '/nukeviet/index.php?language=vi&nv=about&op=San-Giao-Dich-Y-Tuong.html', '', '', '', 1, 2, 1, '', '6', 'about', 'San-Giao-Dich-Y-Tuong.html', 1, '', 1, 1);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_modfuncs`
--

DROP TABLE IF EXISTS `ytt_vi_modfuncs`;
CREATE TABLE `ytt_vi_modfuncs` (
  `func_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `func_name` varchar(55)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `func_site_title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `in_module` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subweight` smallint(2) unsigned NOT NULL DEFAULT '1',
  `setting` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`func_id`),
  UNIQUE KEY `func_name` (`func_name`,`in_module`),
  UNIQUE KEY `alias` (`alias`,`in_module`)
) ENGINE=MyISAM  AUTO_INCREMENT=120  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_modfuncs`
--

INSERT INTO `ytt_vi_modfuncs` VALUES
(1, 'main', 'main', 'Main', '', 'about', 1, 0, 1, ''), 
(2, 'sitemap', 'sitemap', 'Sitemap', '', 'about', 0, 0, 0, ''), 
(3, 'rss', 'rss', 'Rss', '', 'about', 0, 0, 0, ''), 
(4, 'main', 'main', 'Main', '', 'news', 1, 0, 1, ''), 
(5, 'viewcat', 'viewcat', 'Viewcat', '', 'news', 1, 0, 2, ''), 
(6, 'topic', 'topic', 'Topic', '', 'news', 1, 0, 3, ''), 
(7, 'content', 'content', 'Content', '', 'news', 1, 1, 4, ''), 
(8, 'detail', 'detail', 'Detail', '', 'news', 1, 0, 5, ''), 
(9, 'tag', 'tag', 'Tag', '', 'news', 1, 0, 6, ''), 
(10, 'rss', 'rss', 'Rss', '', 'news', 1, 1, 7, ''), 
(11, 'search', 'search', 'Search', '', 'news', 1, 1, 8, ''), 
(12, 'groups', 'groups', 'Groups', '', 'news', 1, 0, 9, ''), 
(13, 'sitemap', 'sitemap', 'Sitemap', '', 'news', 0, 0, 0, ''), 
(14, 'print', 'print', 'Print', '', 'news', 0, 0, 0, ''), 
(15, 'rating', 'rating', 'Rating', '', 'news', 0, 0, 0, ''), 
(16, 'savefile', 'savefile', 'Savefile', '', 'news', 0, 0, 0, ''), 
(17, 'sendmail', 'sendmail', 'Sendmail', '', 'news', 0, 0, 0, ''), 
(18, 'instant-rss', 'instant-rss', 'Instant Articles RSS', '', 'news', 0, 0, 0, ''), 
(19, 'main', 'main', 'Main', '', 'users', 1, 0, 1, ''), 
(20, 'login', 'login', 'Đăng nhập', '', 'users', 1, 1, 2, ''), 
(21, 'register', 'register', 'Đăng ký', '', 'users', 1, 1, 3, ''), 
(22, 'lostpass', 'lostpass', 'Khôi phục mật khẩu', '', 'users', 1, 1, 4, ''), 
(23, 'active', 'active', 'Kích hoạt tài khoản', '', 'users', 1, 0, 5, ''), 
(24, 'lostactivelink', 'lostactivelink', 'Lostactivelink', '', 'users', 1, 0, 6, ''), 
(25, 'editinfo', 'editinfo', 'Thiếp lập tài khoản', '', 'users', 1, 1, 7, ''), 
(26, 'memberlist', 'memberlist', 'Danh sách thành viên', '', 'users', 1, 1, 8, ''), 
(27, 'avatar', 'avatar', 'Avatar', '', 'users', 1, 0, 9, ''), 
(28, 'logout', 'logout', 'Thoát', '', 'users', 1, 1, 10, ''), 
(29, 'groups', 'groups', 'Quản lý nhóm', '', 'users', 1, 0, 11, ''), 
(30, 'oauth', 'oauth', 'Oauth', '', 'users', 0, 0, 0, ''), 
(31, 'main', 'main', 'Main', '', 'statistics', 1, 0, 1, ''), 
(32, 'allreferers', 'allreferers', 'Theo đường dẫn đến site', '', 'statistics', 1, 1, 2, ''), 
(33, 'allcountries', 'allcountries', 'Theo quốc gia', '', 'statistics', 1, 1, 3, ''), 
(34, 'allbrowsers', 'allbrowsers', 'Theo trình duyệt', '', 'statistics', 1, 1, 4, ''), 
(35, 'allos', 'allos', 'Theo hệ điều hành', '', 'statistics', 1, 1, 5, ''), 
(36, 'allbots', 'allbots', 'Theo máy chủ tìm kiếm', '', 'statistics', 1, 1, 6, ''), 
(37, 'referer', 'referer', 'Đường dẫn đến site theo tháng', '', 'statistics', 1, 0, 7, ''), 
(38, 'main', 'main', 'Main', '', 'banners', 1, 0, 1, ''), 
(39, 'addads', 'addads', 'Addads', '', 'banners', 1, 0, 2, ''), 
(40, 'clientinfo', 'clientinfo', 'Clientinfo', '', 'banners', 1, 0, 3, ''), 
(41, 'stats', 'stats', 'Stats', '', 'banners', 1, 0, 4, ''), 
(42, 'cledit', 'cledit', 'Cledit', '', 'banners', 0, 0, 0, ''), 
(43, 'click', 'click', 'Click', '', 'banners', 0, 0, 0, ''), 
(44, 'clinfo', 'clinfo', 'Clinfo', '', 'banners', 0, 0, 0, ''), 
(45, 'logininfo', 'logininfo', 'Logininfo', '', 'banners', 0, 0, 0, ''), 
(46, 'viewmap', 'viewmap', 'Viewmap', '', 'banners', 0, 0, 0, ''), 
(47, 'main', 'main', 'main', '', 'comment', 1, 0, 1, ''), 
(48, 'post', 'post', 'post', '', 'comment', 1, 0, 2, ''), 
(49, 'like', 'like', 'Like', '', 'comment', 1, 0, 3, ''), 
(50, 'delete', 'delete', 'Delete', '', 'comment', 1, 0, 4, ''), 
(51, 'main', 'main', 'Main', '', 'page', 1, 0, 1, ''), 
(52, 'sitemap', 'sitemap', 'Sitemap', '', 'page', 0, 0, 0, ''), 
(53, 'rss', 'rss', 'Rss', '', 'page', 0, 0, 0, ''), 
(54, 'main', 'main', 'Main', '', 'siteterms', 1, 0, 1, ''), 
(55, 'rss', 'rss', 'Rss', '', 'siteterms', 1, 0, 2, ''), 
(56, 'sitemap', 'sitemap', 'Sitemap', '', 'siteterms', 0, 0, 0, ''), 
(57, 'main', 'main', 'Main', '', 'two-step-verification', 1, 0, 1, ''), 
(58, 'confirm', 'confirm', 'Confirm', '', 'two-step-verification', 1, 0, 2, ''), 
(59, 'setup', 'setup', 'Setup', '', 'two-step-verification', 1, 0, 3, ''), 
(60, 'main', 'main', 'Main', '', 'contact', 1, 0, 1, ''), 
(61, 'main', 'main', 'Main', '', 'voting', 1, 0, 1, ''), 
(62, 'main', 'main', 'Main', '', 'seek', 1, 0, 1, ''), 
(63, 'main', 'main', 'Main', '', 'feeds', 1, 0, 1, ''), 
(64, 'blockcat', 'blockcat', 'Blockcat', '', 'shops', 1, 0, 18, ''), 
(65, 'cart', 'cart', 'Cart', '', 'shops', 1, 0, 5, ''), 
(66, 'checkorder', 'checkorder', 'Checkorder', '', 'shops', 0, 0, 0, ''), 
(67, 'compare', 'compare', 'Compare', '', 'shops', 1, 0, 12, ''), 
(68, 'complete', 'complete', 'Complete', '', 'shops', 1, 0, 8, ''), 
(69, 'delhis', 'delhis', 'Delhis', '', 'shops', 0, 0, 0, ''), 
(70, 'detail', 'detail', 'Detail', '', 'shops', 1, 0, 3, ''), 
(71, 'download', 'download', 'Download', '', 'shops', 1, 0, 17, ''), 
(72, 'group', 'group', 'Group', '', 'shops', 1, 0, 10, ''), 
(73, 'history', 'history', 'History', '', 'shops', 1, 0, 9, ''), 
(74, 'loadcart', 'loadcart', 'Loadcart', '', 'shops', 0, 0, 0, ''), 
(75, 'main', 'main', 'Main', '', 'shops', 1, 0, 1, ''), 
(76, 'order', 'order', 'Order', '', 'shops', 1, 0, 6, ''), 
(77, 'payment', 'payment', 'Payment', '', 'shops', 1, 0, 7, ''), 
(78, 'point', 'point', 'Point', '', 'shops', 1, 0, 15, ''), 
(79, 'print', 'print', 'Print', '', 'shops', 0, 0, 0, ''), 
(80, 'print_pro', 'print_pro', 'Print_pro', '', 'shops', 0, 0, 0, ''), 
(81, 'remove', 'remove', 'Remove', '', 'shops', 0, 0, 0, ''), 
(82, 'review', 'review', 'Review', '', 'shops', 0, 0, 0, ''), 
(83, 'rss', 'rss', 'Rss', '', 'shops', 0, 0, 0, ''), 
(84, 'search', 'search', 'Search', '', 'shops', 1, 0, 4, ''), 
(85, 'search_result', 'search_result', 'Search_result', '', 'shops', 1, 0, 11, ''), 
(86, 'sendmail', 'sendmail', 'Sendmail', '', 'shops', 0, 0, 0, ''), 
(87, 'setcart', 'setcart', 'Setcart', '', 'shops', 0, 0, 0, ''), 
(88, 'shippingajax', 'shippingajax', 'Shippingajax', '', 'shops', 1, 0, 16, ''), 
(89, 'sitemap', 'sitemap', 'Sitemap', '', 'shops', 0, 0, 0, ''), 
(90, 'tag', 'tag', 'Tag', '', 'shops', 1, 0, 14, ''), 
(91, 'viewcat', 'viewcat', 'Viewcat', '', 'shops', 1, 0, 2, ''), 
(92, 'wishlist', 'wishlist', 'Wishlist', '', 'shops', 1, 0, 13, ''), 
(93, 'wishlist_update', 'wishlist_update', 'Wishlist_update', '', 'shops', 0, 0, 0, ''), 
(94, 'main', 'main', 'Main', '', 'slider', 1, 0, 1, ''), 
(95, 'rss', 'rss', 'Rss', '', 'slider', 1, 0, 2, ''), 
(96, 'sitemap', 'sitemap', 'Sitemap', '', 'slider', 0, 0, 0, ''), 
(97, 'down', 'down', 'Down', '', 'download', 1, 0, 4, ''), 
(98, 'main', 'main', 'Main', '', 'download', 1, 1, 1, ''), 
(99, 'report', 'report', 'Report', '', 'download', 1, 0, 6, ''), 
(100, 'rss', 'rss', 'Rss', '', 'download', 0, 0, 0, ''), 
(101, 'search', 'search', 'Search', '', 'download', 1, 1, 7, ''), 
(102, 'sitemap', 'sitemap', 'Sitemap', '', 'download', 0, 0, 0, ''), 
(103, 'tag', 'tag', 'Tag', '', 'download', 1, 0, 8, ''), 
(104, 'upload', 'upload', 'Upload', '', 'download', 1, 1, 5, ''), 
(105, 'viewcat', 'viewcat', 'Viewcat', '', 'download', 1, 0, 2, ''), 
(106, 'viewfile', 'viewfile', 'Viewfile', '', 'download', 1, 0, 3, ''), 
(107, 'main', 'main', 'Main', '', 'faq', 1, 0, 1, ''), 
(108, 'rss', 'rss', 'Rss', '', 'faq', 0, 0, 0, ''), 
(109, 'sitemap', 'sitemap', 'Sitemap', '', 'faq', 0, 0, 0, ''), 
(110, 'detail', 'detail', 'Detail', '', 'weblinks', 1, 0, 3, ''), 
(111, 'main', 'main', 'Main', '', 'weblinks', 1, 0, 1, ''), 
(112, 'reportlink', 'reportlink', 'Reportlink', '', 'weblinks', 0, 0, 0, ''), 
(113, 'rss', 'rss', 'Rss', '', 'weblinks', 0, 0, 0, ''), 
(114, 'sitemap', 'sitemap', 'Sitemap', '', 'weblinks', 0, 0, 0, ''), 
(115, 'viewcat', 'viewcat', 'Viewcat', '', 'weblinks', 1, 0, 2, ''), 
(116, 'visitlink', 'visitlink', 'Visitlink', '', 'weblinks', 0, 0, 0, ''), 
(117, 'main', 'main', 'Main', '', 'video-clip', 1, 1, 1, ''), 
(118, 'rss', 'rss', 'Rss', '', 'video-clip', 0, 0, 0, ''), 
(119, 'sitemap', 'sitemap', 'Sitemap', '', 'video-clip', 0, 0, 0, '');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_modthemes`
--

DROP TABLE IF EXISTS `ytt_vi_modthemes`;
CREATE TABLE `ytt_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_modthemes`
--

INSERT INTO `ytt_vi_modthemes` VALUES
(0, 'left-main-right', 'default'), 
(0, 'main', 'mobile_default'), 
(1, 'left-main-right', 'default'), 
(1, 'main', 'mobile_default'), 
(4, 'left-main-right', 'default'), 
(4, 'main', 'mobile_default'), 
(5, 'left-main-right', 'default'), 
(5, 'main', 'mobile_default'), 
(6, 'left-main-right', 'default'), 
(6, 'main', 'mobile_default'), 
(7, 'left-main-right', 'default'), 
(7, 'main', 'mobile_default'), 
(8, 'left-main-right', 'default'), 
(8, 'main', 'mobile_default'), 
(9, 'left-main-right', 'default'), 
(9, 'main', 'mobile_default'), 
(10, 'left-main-right', 'default'), 
(10, 'main', 'mobile_default'), 
(11, 'left-main-right', 'default'), 
(11, 'main', 'mobile_default'), 
(12, 'left-main-right', 'default'), 
(12, 'main', 'mobile_default'), 
(19, 'left-main-right', 'default'), 
(19, 'main', 'mobile_default'), 
(20, 'left-main-right', 'default'), 
(20, 'main', 'mobile_default'), 
(21, 'left-main-right', 'default'), 
(21, 'main', 'mobile_default'), 
(22, 'left-main-right', 'default'), 
(22, 'main', 'mobile_default'), 
(23, 'left-main-right', 'default'), 
(23, 'main', 'mobile_default'), 
(24, 'left-main-right', 'default'), 
(24, 'main', 'mobile_default'), 
(25, 'left-main', 'default'), 
(25, 'main', 'mobile_default'), 
(26, 'left-main-right', 'default'), 
(26, 'main', 'mobile_default'), 
(27, 'left-main-right', 'default'), 
(28, 'left-main-right', 'default'), 
(28, 'main', 'mobile_default'), 
(29, 'left-main', 'default'), 
(29, 'main', 'mobile_default'), 
(31, 'left-main', 'default'), 
(31, 'main', 'mobile_default'), 
(32, 'left-main', 'default'), 
(32, 'main', 'mobile_default'), 
(33, 'left-main', 'default'), 
(33, 'main', 'mobile_default'), 
(34, 'left-main', 'default'), 
(34, 'main', 'mobile_default'), 
(35, 'left-main', 'default'), 
(35, 'main', 'mobile_default'), 
(36, 'left-main', 'default'), 
(36, 'main', 'mobile_default'), 
(37, 'left-main', 'default'), 
(37, 'main', 'mobile_default'), 
(38, 'left-main-right', 'default'), 
(38, 'main', 'mobile_default'), 
(39, 'left-main-right', 'default'), 
(39, 'main', 'mobile_default'), 
(40, 'left-main-right', 'default'), 
(40, 'main', 'mobile_default'), 
(41, 'left-main-right', 'default'), 
(41, 'main', 'mobile_default'), 
(47, 'left-main-right', 'default'), 
(47, 'main', 'mobile_default'), 
(48, 'left-main-right', 'default'), 
(48, 'main', 'mobile_default'), 
(49, 'left-main-right', 'default'), 
(49, 'main', 'mobile_default'), 
(50, 'left-main-right', 'default'), 
(50, 'main', 'mobile_default'), 
(51, 'left-main', 'default'), 
(51, 'main', 'mobile_default'), 
(54, 'left-main-right', 'default'), 
(54, 'main', 'mobile_default'), 
(55, 'left-main-right', 'default'), 
(55, 'main', 'mobile_default'), 
(57, 'left-main-right', 'default'), 
(57, 'main', 'mobile_default'), 
(58, 'left-main-right', 'default'), 
(58, 'main', 'mobile_default'), 
(59, 'left-main-right', 'default'), 
(59, 'main', 'mobile_default'), 
(60, 'left-main', 'default'), 
(60, 'main', 'mobile_default'), 
(61, 'left-main', 'default'), 
(61, 'main', 'mobile_default'), 
(62, 'left-main-right', 'default'), 
(62, 'main', 'mobile_default'), 
(63, 'left-main-right', 'default'), 
(63, 'main', 'mobile_default'), 
(64, 'left-main-right', 'default'), 
(64, 'main', 'mobile_default'), 
(65, 'left-main-right', 'default'), 
(65, 'main', 'mobile_default'), 
(66, 'left-main-right', 'default'), 
(67, 'left-main-right', 'default'), 
(67, 'main', 'mobile_default'), 
(68, 'left-main-right', 'default'), 
(68, 'main', 'mobile_default'), 
(69, 'left-main-right', 'default'), 
(70, 'left-main-right', 'default'), 
(70, 'main', 'mobile_default'), 
(71, 'left-main-right', 'default'), 
(71, 'main', 'mobile_default'), 
(72, 'left-main-right', 'default'), 
(72, 'main', 'mobile_default'), 
(73, 'left-main-right', 'default'), 
(73, 'main', 'mobile_default'), 
(74, 'left-main-right', 'default'), 
(75, 'left-main-right', 'default'), 
(75, 'main', 'mobile_default'), 
(76, 'left-main-right', 'default'), 
(76, 'main', 'mobile_default'), 
(77, 'left-main-right', 'default'), 
(77, 'main', 'mobile_default'), 
(78, 'left-main-right', 'default'), 
(78, 'main', 'mobile_default'), 
(79, 'left-main-right', 'default'), 
(80, 'left-main-right', 'default'), 
(81, 'left-main-right', 'default'), 
(82, 'left-main-right', 'default'), 
(83, 'left-main-right', 'default'), 
(84, 'left-main-right', 'default'), 
(84, 'main', 'mobile_default'), 
(85, 'left-main-right', 'default'), 
(85, 'main', 'mobile_default'), 
(86, 'left-main-right', 'default'), 
(87, 'left-main-right', 'default'), 
(88, 'left-main-right', 'default'), 
(88, 'main', 'mobile_default'), 
(89, 'left-main-right', 'default'), 
(90, 'left-main-right', 'default'), 
(90, 'main', 'mobile_default'), 
(91, 'left-main-right', 'default'), 
(91, 'main', 'mobile_default'), 
(92, 'left-main-right', 'default'), 
(92, 'main', 'mobile_default'), 
(93, 'left-main-right', 'default'), 
(94, 'left-main-right', 'default'), 
(94, 'main', 'mobile_default'), 
(95, 'left-main-right', 'default'), 
(95, 'main', 'mobile_default'), 
(96, 'left-main-right', 'default'), 
(97, 'left-main-right', 'default'), 
(97, 'main', 'mobile_default'), 
(98, 'left-main-right', 'default'), 
(98, 'main', 'mobile_default'), 
(99, 'left-main-right', 'default'), 
(99, 'main', 'mobile_default'), 
(100, 'left-main-right', 'default'), 
(101, 'left-main-right', 'default'), 
(101, 'main', 'mobile_default'), 
(102, 'left-main-right', 'default'), 
(103, 'left-main-right', 'default'), 
(103, 'main', 'mobile_default'), 
(104, 'left-main-right', 'default'), 
(104, 'main', 'mobile_default'), 
(105, 'left-main-right', 'default'), 
(105, 'main', 'mobile_default'), 
(106, 'left-main-right', 'default'), 
(106, 'main', 'mobile_default'), 
(107, 'left-main-right', 'default'), 
(107, 'main', 'mobile_default'), 
(108, 'left-main-right', 'default'), 
(109, 'left-main-right', 'default'), 
(110, 'left-main-right', 'default'), 
(110, 'main', 'mobile_default'), 
(111, 'left-main-right', 'default'), 
(111, 'main', 'mobile_default'), 
(112, 'left-main-right', 'default'), 
(113, 'left-main-right', 'default'), 
(114, 'left-main-right', 'default'), 
(115, 'left-main-right', 'default'), 
(115, 'main', 'mobile_default'), 
(116, 'left-main-right', 'default'), 
(117, 'left-main-right', 'default'), 
(117, 'main', 'mobile_default'), 
(118, 'left-main-right', 'default'), 
(119, 'left-main-right', 'default');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_modules`
--

DROP TABLE IF EXISTS `ytt_vi_modules`;
CREATE TABLE `ytt_vi_modules` (
  `title` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_theme` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  `main_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text  COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admins` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `gid` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_modules`
--

INSERT INTO `ytt_vi_modules` VALUES
('about', 'page', 'about', 'about', 'page', 'Giới thiệu', '', '', 1493308468, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 0), 
('news', 'news', 'news', 'news', 'news', 'Tìm kiếm giải pháp', '', '', 1493308468, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 0), 
('users', 'users', 'users', 'users', 'users', 'Thành viên', '', 'Tài khoản', 1493308468, 1, 1, '', '', '', '', '6', 3, 1, '', 0, 0), 
('contact', 'contact', 'contact', 'contact', 'contact', 'Liên hệ', '', '', 1493308468, 1, 1, '', '', '', '', '6', 4, 1, '', 0, 0), 
('statistics', 'statistics', 'statistics', 'statistics', 'statistics', 'Thống kê', '', '', 1493308468, 1, 1, '', '', '', 'online, statistics', '6', 5, 1, '', 0, 0), 
('voting', 'voting', 'voting', 'voting', 'voting', 'Thăm dò ý kiến', '', '', 1493308468, 1, 1, '', '', '', '', '6', 6, 1, '', 1, 0), 
('banners', 'banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', '', 1493308468, 1, 1, '', '', '', '', '6', 7, 1, '', 0, 0), 
('seek', 'seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', '', 1493308468, 1, 0, '', '', '', '', '6', 8, 1, '', 0, 0), 
('menu', 'menu', 'menu', 'menu', 'menu', 'Menu Site', '', '', 1493308468, 0, 1, '', '', '', '', '6', 9, 1, '', 0, 0), 
('feeds', 'feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', '', 'RSS-feeds', 1493308468, 1, 1, '', '', '', '', '6', 10, 1, '', 0, 0), 
('page', 'page', 'page', 'page', 'page', 'Page', '', '', 1493308468, 1, 1, '', '', '', '', '6', 11, 1, '', 1, 0), 
('comment', 'comment', 'comment', 'comment', 'comment', 'Bình luận', '', 'Quản lý bình luận', 1493308468, 0, 1, '', '', '', '', '6', 12, 1, '', 0, 0), 
('siteterms', 'page', 'siteterms', 'siteterms', 'page', 'Điều khoản sử dụng', '', '', 1493308468, 1, 1, '', '', '', '', '6', 13, 1, '', 1, 0), 
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'freecontent', 'Vài nét về sàn ý tưởng', '', '', 1493308468, 0, 1, '', '', '', '', '6', 14, 1, '', 0, 0), 
('two-step-verification', 'two-step-verification', 'two_step_verification', 'two_step_verification', 'two-step-verification', 'Xác thực hai bước', '', '', 1493308468, 1, 0, '', '', '', '', '6', 15, 1, '', 0, 0), 
('shops', 'shops', 'shops', 'shops', 'shops', 'Thảo luận Ý tưởng', '', '', 1493308887, 1, 1, '', '', '', '', '6', 16, 1, '', 1, 0), 
('slider', 'slider', 'slider', 'slider', 'slider', 'Slider show hình ảnh', '', '', 1493351432, 1, 1, '', '', '', '', '6', 17, 1, '', 1, 0), 
('download', 'download', 'download', 'download', 'download', 'Chia sẻ tệp', '', '', 1493387760, 1, 1, '', '', '', '', '6', 18, 1, '', 1, 0), 
('faq', 'faq', 'faq', 'faq', 'faq', 'Câu hỏi thường gặp', '', '', 1493388175, 1, 1, '', '', '', '', '6', 19, 1, '', 1, 0), 
('weblinks', 'weblinks', 'weblinks', 'weblinks', 'weblinks', 'Weblinks', '', '', 1493388500, 1, 1, '', '', '', '', '6', 20, 0, '', 1, 0), 
('video-clip', 'video-clip', 'video_clip', 'video-clip', 'video-clip', 'Videos', '', '', 1493389357, 1, 1, '', '', '', '', '6', 21, 1, '', 1, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_10`
--

DROP TABLE IF EXISTS `ytt_vi_news_10`;
CREATE TABLE `ytt_vi_news_10` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  AUTO_INCREMENT=18  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_news_10`
--

INSERT INTO `ytt_vi_news_10` VALUES
(6, 10, '10', 0, 1, 'Nguyễn Thế Hùng', 2, 1453192444, 1493313940, 1, 1453192440, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 14, 0, 0, 0, 0, '', 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_11`
--

DROP TABLE IF EXISTS `ytt_vi_news_11`;
CREATE TABLE `ytt_vi_news_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  AUTO_INCREMENT=16  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_news_11`
--

INSERT INTO `ytt_vi_news_11` VALUES
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1453192400, 1453192400, 1, 1453192400, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-PHP', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0), 
(8, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391089, 1445394192, 1, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet', 'Tuyen-dung-chuyen-vien-do-hoa', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0), 
(9, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391090, 1445394193, 1, 1445391060, 0, 2, 'Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về front-end (HTML/CSS/JS)?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0), 
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Công ty cổ phần phát triển nguồn mở Việt Nam là đơn vị chủ quản của phần mềm mã nguồn mở NukeViet - một mã nguồn được tin dùng trong cơ quan nhà nước, đặc biệt là ngành giáo dục. Chúng tôi cần tuyển 05 nhân viên kinh doanh cho lĩnh vực này.', 'tuyen-dung-nvkd.png', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0), 
(14, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1493314050, 1, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0), 
(15, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', 'Công ty cổ phần phát triển nguồn mở Việt Nam tạo cơ hội việc làm và học việc miễn phí cho những ứng viên có đam mê thiết kế web, lập trình PHP… được học tập và rèn luyện cùng đội ngũ lập trình viên phát triển NukeViet.', 'hoc-viec-tai-cong-ty-vinades.jpg', '', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0), 
(10, 11, '11', 0, 1, '', 0, 1322685920, 1493313982, 1, 1322685900, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'ma-nguon-mo-nukeviet-gianh-giai-ba-nhan-tai-dat-viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 0, 1, 0, 0, 0, 0, '', 0), 
(11, 11, '11', 0, 1, '', 0, 1445309676, 1493314076, 1, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 0, 3, 1, 5, 1, 0, '', 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_2`
--

DROP TABLE IF EXISTS `ytt_vi_news_2`;
CREATE TABLE `ytt_vi_news_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  AUTO_INCREMENT=19  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_news_2`
--

INSERT INTO `ytt_vi_news_2` VALUES
(18, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 0, 7, 0, 0, 0, 0, '', 0), 
(1, 2, '2', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1493313927, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0), 
(17, 2, '2', 0, 1, '', 0, 1445391217, 1493314039, 1, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0), 
(16, 2, '2', 0, 1, '', 0, 1445391182, 1493314066, 1, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_admins`
--

DROP TABLE IF EXISTS `ytt_vi_news_admins`;
CREATE TABLE `ytt_vi_news_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`,`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_block`
--

DROP TABLE IF EXISTS `ytt_vi_news_block`;
CREATE TABLE `ytt_vi_news_block` (
  `bid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL,
  UNIQUE KEY `bid` (`bid`,`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_news_block`
--

INSERT INTO `ytt_vi_news_block` VALUES
(1, 1, 1), 
(2, 17, 1), 
(2, 16, 2), 
(2, 15, 3), 
(2, 14, 4), 
(2, 12, 5), 
(2, 11, 6), 
(2, 1, 7), 
(2, 6, 8);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_block_cat`
--

DROP TABLE IF EXISTS `ytt_vi_news_block_cat`;
CREATE TABLE `ytt_vi_news_block_cat` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text  COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  AUTO_INCREMENT=3  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_news_block_cat`
--

INSERT INTO `ytt_vi_news_block_cat` VALUES
(1, 0, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943), 
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', 'Tin mới nhất', 2, '', 1279945725, 1279956445);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_cat`
--

DROP TABLE IF EXISTS `ytt_vi_news_cat`;
CREATE TABLE `ytt_vi_news_cat` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text  COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text  COLLATE utf8mb4_unicode_ci,
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `newday` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text  COLLATE utf8mb4_unicode_ci,
  `admins` text  COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`catid`),
  UNIQUE KEY `alias` (`alias`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM  AUTO_INCREMENT=13  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_news_cat`
--

INSERT INTO `ytt_vi_news_cat` VALUES
(2, 0, 'Giải pháp kinh doanh', '', 'giai-phap-kinh-doanh', '', '', '', 0, 1, 1, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274986705, 1493314149, '6'), 
(10, 0, 'Công nghệ thực phẩm', '', 'cong-nghe-thuc-pham', '', '', '', 0, 2, 2, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987460, 1493314162, '6'), 
(11, 0, 'Công nghệ Thông tin', '', 'cong-nghe-thong-tin', '', '', '', 0, 3, 3, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987538, 1493314177, '6');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_config_post`
--

DROP TABLE IF EXISTS `ytt_vi_news_config_post`;
CREATE TABLE `ytt_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_news_config_post`
--

INSERT INTO `ytt_vi_news_config_post` VALUES
(1, 1, 1, 0, 0), 
(2, 1, 1, 0, 0), 
(3, 1, 1, 0, 0), 
(4, 1, 1, 0, 0), 
(7, 0, 0, 0, 0), 
(5, 0, 0, 0, 0), 
(10, 0, 0, 0, 0), 
(11, 0, 0, 0, 0), 
(12, 0, 0, 0, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_detail`
--

DROP TABLE IF EXISTS `ytt_vi_news_detail`;
CREATE TABLE `ytt_vi_news_detail` (
  `id` int(11) unsigned NOT NULL,
  `titlesite` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodyhtml` longtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `sourcetext` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_news_detail`
--

INSERT INTO `ytt_vi_news_detail` VALUES
(1, '', '', '<p style=\"text-align: justify;\">Để chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet, Ban quản trị NukeViet quyết định thành lập doanh nghiệp chuyên quản NukeViet mang tên Công ty cổ phần Phát triển nguồn mở Việt Nam (Viết tắt là VINADES.,JSC), chính thức ra mắt vào ngày 25-2-2010 (trụ sở tại Hà Nội) nhằm phát triển, phổ biến hệ thống NukeViet tại Việt Nam.<br  /><br  />Theo ông Nguyễn Anh Tú, Chủ tịch HĐQT VINADES, công ty sẽ phát triển bộ mã nguồn NukeViet nhất quán theo con đường mã nguồn mở đã chọn, chuyên nghiệp và quy mô hơn bao giờ hết. Đặc biệt là hoàn toàn miễn phí đúng tinh thần mã nguồn mở quốc tế.<br  /><br  />NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System) thuần Việt từ nền tảng PHP-Nuke và cơ sở dữ liệu MySQL. Người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền web, cho phép người sử dụng có thể dễ dàng xuất bản và quản trị các nội dung của họ lên internet hoặc intranet.<br  /><br  />NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng thêm các module, block... tạo sự dễ dàng cài đặt, quản lý, ngay cả với những người mới tiếp cận với website. Người dùng có thể tìm hiểu thêm thông tin và tải về sản phẩm tại địa chỉ http://nukeviet.vn</p><blockquote><p style=\"text-align: justify;\"><em>Thông tin ra mắt công ty VINADES có thể tìm thấy trên trang 7 báo Hà Nội Mới ra ngày 25/02/2010 (<a href=\"http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm\" target=\"_blank\">xem chi tiết</a>), Bản tin tiếng Anh của đài tiếng nói Việt Nam ngày 26/02/2010 (<a href=\"http://english.vovnews.vn/Home/First-opensource-company-starts-operation/20102/112960.vov\" target=\"_blank\">xem chi tiết</a>); trang 7 báo An ninh Thủ Đô số 2858 ra vào thứ 2 ngày 01/03/2010 và các trang tin tức, báo điện tử khác.</em></p></blockquote>', 'http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm', 2, 0, 1, 1, 1, 0), 
(6, '', '', '<div style=\"text-align: justify;\">Tính đến năm 2015, ước tính có hơn 10.000 website đang sử dụng NukeViet. Nhu cầu triển khai NukeViet không chỉ dừng lại ở các cá nhân, doanh nghiệp, cơ sở giáo dục mà đã lan rộng ra khối chính phủ.</div><div style=\"text-align: justify;\"><br  />Cộng đồng NukeViet cũng đã lớn mạnh hơn trước. Nếu như đầu năm 2010, ngoài Công ty VINADES chỉ có một vài công ty cung cấp dịch vụ cho NukeViet nhưng không chuyên, thì theo thống kê năm 2015 đã có hàng trăm doanh nghiệp đang cung cấp dịch vụ có liên quan đến NukeViet như: đào tạo NukeViet, thiết kế web, phát triển phần mềm, cung cấp giao diện, module... trên nền tảng NukeViet. Đặc biệt có nhiều doanh nghiệp hoàn toàn cung cấp dịch vụ thiết kế web, cung cấp giao diện, module... sử dụng nền tảng NukeViet. Nhiều sản phẩm phái sinh từ NukeViet đã ra đời, NukeViet được phát triển thành nhiều phần mềm quản lý sử dụng trên mạng LAN hay trên internet, được phát triển thành các phần mềm dùng riêng hay sử dụng như một nền tảng để cung cấp dịch vụ online, thậm chí đã được thử nghiệm tích hợp vào trong các thiết bị phần cứng để bán cùng thiết bị (NukeViet Captive Portal - dùng để quản lý người dùng truy cập internet, tích hợp trong thiết bị quản lý wifi)...<br  /><br  />Tuy nhiên, cùng với những cơ hội, cộng đồng NukeViet đang đứng trước một thách thức mới. NukeViet cần tập hợp tất cả các doanh nghiệp, tổ chức và cá nhân đang cung cấp dịch vụ cho NukeViet và liên kết các đơn vị này với nhau để giúp nhau chuyên nghiệp hóa, cùng nhau chia sẻ những cơ hội kinh doanh và trở lên lớn mạnh hơn.<br  /><br  />Nếu cộng đồng NukeViet có 500 công ty siêu nhỏ chỉ 2-3 người và những công ty này đứng riêng rẽ như hiện nay thì NukeViet mãi bé nhỏ và sẽ không làm được việc gì. Nhưng nếu 500 công ty này biết nhau, cùng làm một số việc, cùng tham gia phát triển NukeViet, đó sẽ là sức mạnh rất lớn cho một phần mềm nguồn mở như NukeViet, và đó cũng là cơ hội rất lớn để các công ty nhỏ ấy trở lên chuyên nghiệp và vững mạnh.<br  /><br  />Cho dù bạn là doanh nghiệp hay một nhóm kinh doanh, cho dù bạn đang cung cấp bất kỳ dịch vụ có liên quan trực tiếp đến NukeViet như: đào tạo NukeViet, thiết kế web, phát triển phần mềm, cung cấp giao diện, module... hoặc gián tiếp có liên quan đến NukeViet (ví dụ các công ty hosting, các nhà cung cấp dịch vụ thanh toán điện tử...). Bạn đều là một thành phần quan trọng của NukeViet. Dù bạn là công ty to hay một nhóm nhỏ, hãy đăng ký vào danh sách các đối tác của NukeViet để thiết lập kênh liên lạc với các doanh nghiệp khác trong cộng đồng NukeViet và nhận sự hỗ trợ từ Ban Quản Trị NukeViet cũng như từ các cơ quan nhà nước đang có nhu cầu tìm kiếm các đơn vị cung ứng dịch vụ cho NukeViet.<br  /><br  />Hãy gửi email cho Ban Quản Trị NukeViet về địa chỉ: admin@nukeviet.vn để đăng ký vào danh sách các đơn vị hỗ trợ NukeViet.<br  /><br  />Tiêu đề email: Đăng ký vào danh sách các đơn vị cung cấp dịch vụ dựa trên NukeViet<br  />Nội dung email: Thông tin về đơn vị, dịch vụ cung cấp.<br  /><br  />Hoặc gửi yêu cầu tại đây: <a href=\"http://nukeviet.vn/vi/contact/\" target=\"_blank\">http://nukeviet.vn/vi/contact/</a><br  /><br  />Mọi yêu cầu sẽ được phản hồi trong vòng 24h. Trường hợp không nhận được phản hồi, hãy liên hệ với Ban Quản Trị NukeViet qua các kênh liên lạc khác như:<br  /><br  />- Diễn đàn doanh nghiệp NukeViet: <a href=\"http://forum.nukeviet.vn/viewforum.php?f=4\" target=\"_blank\">http://forum.nukeviet.vn/viewforum.php?f=4</a><br  />- Fanpage NukeViet trên FaceBook: <a href=\"http://fb.com/nukeviet/\" target=\"_blank\">http://fb.com/nukeviet/</a><br  /><br  />Vui lòng truy cập địa chỉ sau để xem danh sách các đơn vị: <a href=\"https://nukeviet.vn/vi/partner/\" target=\"_blank\">https://nukeviet.vn/vi/partner/</a></div>', 'http://vinades.vn/vi/news/thong-cao-bao-chi/Thu-moi-hop-tac-6/', 2, 0, 1, 1, 1, 0), 
(7, '', '', 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html\">Lập trình viên PHP và MySQL.</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html\">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html\">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style=\"font-size:16px;\"><strong>1. Vị trí dự tuyển:</strong></span> Lập trình viên PHP và MySQL<br /><br /><span style=\"font-size:16px;\"><strong>2. Mô tả công việc:</strong></span><ul><li>Phát triển hệ thống NukeViet.</li><li>Phân tích yêu cầu và lập trình riêng cho các dự án cụ thể.</li><li>Thực hiện các công đoạn để dưa website vào hoạt động như upload dữ liệu lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng, trải nghiệm người dùng của sản phẩm trong khi sản phẩm hoạt động.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><span style=\"font-size:16px;\"><strong>3. Yêu cầu:</strong></span><ul><li>Nắm vững kiến thức hướng đối tượng, cấu trúc dữ liệu và giải thuật.</li><li>Có kinh nghiệm về PHP và các hệ cơ sở dữ liệu MySQL.…</li><li>Tư duy lập trình tốt, thiết kế CSDL chuẩn, biết xử lý nhanh các vấn đề khi phát sinh nghiệp vụ mới.</li><li>Sửa được các lỗi, nâng cấp tính năng cho các module đã có. 6. Viết module mới.</li><li>Biết đưa website lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo.</li><li>Đam mê công việc về lập trình web.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt.</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng.</li></ul><br /><span style=\"font-size:16px;\"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style=\"font-size:16px;\"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style=\"font-size:16px;\"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style=\"font-size:16px;\"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (download tại đây: <strong><a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-ky-thuat-vien/\" target=\"_blank\"><u>Mẫu lý lịch ứng viên</u></a></strong>)</strong></em> và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br /><br /><span style=\"font-size:16px;\"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style=\"text-align: justify;\"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-4-85872007 - Fax: +84-4-35500914<br />- Email: <a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a> - Website: <a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></div></blockquote>', 'http://vinades.vn/vi/news/Tuyen-dung/', 2, 0, 1, 1, 1, 0), 
(8, '', '', 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html\">Lập trình viên PHP và MySQL.</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html\">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html\">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style=\"font-size:16px;\"><strong>1. Vị trí dự tuyển:</strong></span> Chuyên viên đồ hoạ.<br /><br /><span style=\"font-size:16px;\"><strong>2. Mô tả công việc:</strong></span><br /><br /><em><strong>Công việc chính:</strong></em><ul><li>Thiết kế layout, banner, logo website theo yêu cầu của dự án.</li><li>Đưa ra sản phẩm sáng tạo dựa trên ý tưởng của khách hàng.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><em><strong>Ngoài ra bạn cần có khả năng thực hiện các công việc sau:</strong></em><ul><li>Cắt và ghép giao diện cho hệ thống.</li><li>Valid CSS, xHTML.</li></ul><br /><span style=\"font-size:16px;\"><strong>3. Yêu cầu:</strong></span><ul><li>Sử dụng thành thạo phần mềm thiết kế: Photoshop ngoài ra cần biết cách sử dụng các phần mềm thiết kế khác là một lợi thế.</li><li>Có kiến thức cơ bản về thiết kế website: Am hiểu các dạng layout, thành phần của một website.</li><li>Có kinh nghiệm, kỹ năng thiết kế giao diện web, logo, banner.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo, tính thẩm mỹ tốt</li><li>Đam mê công việc thiết kế và website.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt</li><li>Am hiểu về Responsive và có thể thiết kế giao diện, layout trên mobile (Boostrap).</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Sử dụng thành thạo HTML5, CSS3 &amp; Javascrip/Jquery và Xtemplate</li><li>Khả năng chuyển PSD sang NukeViet tốt.</li><li>Hiểu rõ và nắm chắc cách làm Theme/Template.</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng</li></ul><br /><span style=\"font-size:16px;\"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style=\"font-size:16px;\"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style=\"font-size:16px;\"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style=\"font-size:16px;\"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (download tại đây: <strong><a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-ky-thuat-vien/\" target=\"_blank\"><u>Mẫu lý lịch ứng viên</u></a></strong>)</strong></em> và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br /><br /><span style=\"font-size:16px;\"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style=\"text-align: justify;\"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-4-85872007 - Fax: +84-4-35500914<br />- Email: <a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a> - Website: <a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></div></blockquote>', '', 2, 0, 1, 1, 1, 0), 
(9, '', '', 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html\">Lập trình viên PHP và MySQL.</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html\">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html\">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style=\"font-size:16px;\"><strong>1. Vị trí dự tuyển:</strong></span> Lập trình viên front-end (HTML/ CSS/ JS)<br /><br /><span style=\"font-size:16px;\"><strong>2. Mô tả công việc:</strong></span><ul><li>Cắt, làm giao diện website từ bản thiết kế (sử dụng Photoshop) trên nền hệ thống NukeViet.</li><li>Tham gia vào việc phát triển Front-End các ứng dụng nền web.</li><li>Thực hiện các công đoạn để dưa website vào hoạt động như upload dữ liệu lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng, trải nghiệm người dùng, thẩm mỹ của sản phẩm trong khi sản phẩm hoạt động Tham mưu, tư vấn về chất lượng, thẩm mỹ, trải nghiệm người dùng về các sản phẩm.</li><li>Đảm bảo website theo các tiêu chuẩn web (W3c, XHTML, CSS 3.0, Tableless, no inline style, … ).</li><li>Đảm bảo website hiển thị đúng trên tất cả các trình duyệt.</li><li>Đảm bảo website theo chuẩn “Responsive Web Design.</li><li>Đảm bảo việc đưa sản phẩm thiết kế đến người dùng cuối cùng một cách chính xác và đẹp.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><span style=\"font-size:16px;\"><strong>3. Yêu cầu:</strong></span><ul><li>Có kiến thức cơ bản về thiết kế website: Am hiểu các dạng layout, thành phần của một website.</li><li>Hiểu rõ và nắm chắc cách làm Theme/Template.</li><li>Sử dụng thành thạo HTML5, CSS3 &amp; Javascrip/Jquery và Xtemplate</li><li>Khả năng chuyển PSD sang NukeViet tốt.</li><li>Biết đưa website lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo, tính thẩm mỹ tốt.</li><li>Đam mê công việc về web.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt.</li><li>Am hiểu về Responsive và có thể thiết kế giao diện, layout trên mobile (Boostrap).</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng.</li></ul><br /><span style=\"font-size:16px;\"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style=\"font-size:16px;\"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style=\"font-size:16px;\"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style=\"font-size:16px;\"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (download tại đây: <strong><a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-ky-thuat-vien/\" target=\"_blank\"><u>Mẫu lý lịch ứng viên</u></a></strong>)</strong></em> và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br /><br /><span style=\"font-size:16px;\"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style=\"text-align: justify;\"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-4-85872007 - Fax: +84-4-35500914<br />- Email: <a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a> - Website: <a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></div></blockquote>', '', 2, 0, 1, 1, 1, 0), 
(10, '', '', 'Cả hội trường như vỡ òa, rộn tiếng vỗ tay, tiếng cười nói chúc mừng các nhà khoa học, các nhóm tác giả đoạt Giải thưởng Nhân tài Đất Việt năm 2011. Năm thứ 7 liên tiếp, Giải thưởng đã phát hiện và tôn vinh nhiều tài năng của đất nước.<div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/01_b7d3f.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Sân khấu trước lễ trao giải.</span></div><div>&nbsp;</div><div align=\"center\">&nbsp;</div><div align=\"left\">Cơ cấu Giải thưởng của Nhân tài Đất Việt 2011 trong lĩnh vực CNTT bao gồm 2 hệ thống giải dành cho “Sản phẩm có tiềm năng ứng dụng” và “Sản phẩm đã ứng dụng rộng rãi trong thực tế”. Mỗi hệ thống giải sẽ có 1 giải Nhất, 1 giải Nhì và 1 giải Ba với trị giá giải thưởng tương đương là 100 triệu đồng, 50 triệu đồng và 30 triệu đồng cùng phần thưởng của các đơn vị tài trợ.</div><div align=\"center\">&nbsp;</div><div align=\"center\"><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/03_f19bd.jpg\" width=\"350\" /></div><div align=\"center\">Nhiều tác giả, nhóm tác giả đến lễ trao giải từ rất sớm.</div></div><p>Giải thưởng Nhân tài Đất Việt 2011 trong lĩnh vực Khoa học Tự nhiên được gọi chính thức là Giải thưởng Khoa học Tự nhiên Việt Nam sẽ có tối đa 6 giải, trị giá 100 triệu đồng/giải dành cho các lĩnh vực: Toán học, Cơ học, Vật lý, Hoá học, Các khoa học về sự sống, Các khoa học về trái đất (gồm cả biển) và môi trường, và các lĩnh vực khoa học liên ngành hoặc đa ngành của hai hoặc nhiều ngành nói trên. Viện Khoa học và Công nghệ Việt Nam thành lập Hội đồng giám khảo gồm các nhà khoa học tự nhiên hàng đầu trong nước để thực hiện việc đánh giá và trao giải.</p><div>Sau thành công của việc trao Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y dược năm 2010, Ban Tổ chức tiếp tục tìm kiếm những chủ nhân xứng đáng cho Giải thưởng này trong năm 2011.</div><div>&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/07_78b85.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam Lê Khả Phiêu tới&nbsp;dự Lễ trao giải.</span></div><div>&nbsp;</div><div>45 phút trước lễ trao giải, không khí tại Cung Văn hóa Hữu nghị Việt - Xô đã trở nên nhộn nhịp. Sảnh phía trước Cung gần như chật kín. Rất đông bạn trẻ yêu thích công nghệ thông tin, sinh viên các trường đại học đã đổ về đây, cùng với đó là những bó hoa tươi tắn sẽ được dành cho các tác giả, nhóm tác giả đoạt giải.</div><div>&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/09_aef87.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Phó Chủ tịch nước CHXHCN Việt Nam Nguyễn Thị Doan.</span></div><div>&nbsp;</div><div>Các vị khách quý cũng đến từ rất sớm. Tới tham dự lễ trao giải năm nay có ông Lê Khả Phiêu, nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam; bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCN Việt Nam; ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam; ông Nguyễn Bắc Son, Bộ trưởng Bộ Thông tin và Truyền thông; ông Đặng Ngọc Tùng, Chủ tịch Tổng Liên đoàn lao động Việt Nam; ông Phạm Văn Linh, Phó trưởng ban Tuyên giáo Trung ương; ông Đỗ Trung Tá, Phái viên của Thủ tướng Chính phủ về CNTT, Chủ tịch Hội đồng Khoa học công nghệ quốc gia; ông Nguyễn Quốc Triệu, nguyên Bộ trưởng Bộ Y tế, Trưởng Ban Bảo vệ Sức khỏe TƯ; bà Cù Thị Hậu, Chủ tịch Hội người cao tuổi Việt Nam; ông Lê Doãn Hợp, nguyên Bộ trưởng Bộ Thông tin Truyền thông, Chủ tịch Hội thông tin truyền thông số…</div><div>&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/08_ba46c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Bộ trưởng Bộ Thông tin và Truyền thông Nguyễn Bắc Son.</span></div><div align=\"center\">&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/06_29592.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Giáo sư - Viện sỹ Nguyễn Văn Hiệu.</span></div><div align=\"center\">&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/04_051f2.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nguyên Bộ trưởng Bộ Y tế Nguyễn Quốc Triệu.</span></div><div align=\"center\">&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/05_c7ea4.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam.</span></div><p>Do tuổi cao, sức yếu hoặc bận công tác không đến tham dự lễ trao giải nhưng Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang cũng gửi lẵng hoa đến chúc mừng lễ trao giải.</p><div>Đúng 20h, Lễ trao giải bắt đầu với bài hát “Nhân tài Đất Việt” do ca sỹ Thái Thùy Linh cùng ca sĩ nhí và nhóm múa biểu diễn. Các nhóm tác giả tham dự Giải thưởng năm 2011 và những tác giả của các năm trước từ từ bước ra sân khấu trong tiếng vỗ tay tán dương của khán giả.</div><div>&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/12_74abf.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\">&nbsp;</div><div align=\"center\"><div><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN15999_3e629.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Tiết mục mở màn Lễ trao giải.</span></div><p>Trước Lễ trao giải Giải thưởng Nhân tài Đất Việt năm 2011, Đại tướng Võ Nguyên Giáp, Chủ tịch danh dự Hội Khuyến học Việt Nam, đã gửi thư chúc mừng, khích lệ Ban tổ chức Giải thưởng cũng như các nhà khoa học, các tác giả tham dự.</p><blockquote><p><em><span style=\"FONT-STYLE: italic\">Hà Nội, ngày 16 tháng 11 năm 2011</span></em></p><div><em>Giải thưởng “Nhân tài đất Việt” do Hội Khuyến học Việt Nam khởi xướng đã bước vào năm thứ bảy (2005 - 2011) với ba lĩnh vực: Công nghệ thông tin, Khoa học tự nhiên và Y dược.</em></div></blockquote><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/thuDaituong1_767f4.jpg\" style=\"MARGIN: 5px\" width=\"400\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Thư của Đại tướng Võ Nguyên Giáp gửi BTC Giải thưởng Nhân tài đất Việt.</span></div><blockquote><p><em>Tôi gửi lời chúc mừng các nhà khoa học và các thí sinh được nhận giải thưởng “Nhân tài đất Việt” năm nay.</em></p><p><em>Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</em></p><p><em>Nhân ngày “Nhà giáo Việt Nam”, chúc Hội Khuyến học Việt nam, chúc các thầy giáo và cô giáo, với tâm huyết và trí tuệ của mình, sẽ đóng góp xứng đáng vào công cuộc đổi mới căn bản và toàn diện nền giáo dục nước nhà, để cho nền giáo dục Việt Nam thực sự là cội nguồn của nguyên khí quốc gia, đảm bảo cho mọi nhân cách và tài năng đất Việt được vun đắp và phát huy vì sự trường tồn, sự phát triển tiến bộ và bền vững của đất nước trong thời đại toàn cầu hóa và hội nhập quốc tế.</em></p><p><em>Chào thân ái,</em></p><p><strong><em>Chủ tịch danh dự Hội Khuyến học Việt Nam</em></strong></p><p><strong><em>Đại tướng Võ Nguyên Giáp</em></strong></p></blockquote><p>Phát biểu khai mạc Lễ trao giải, Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng Ban tổ chức, bày tỏ lời cám ơn chân thành về những tình cảm cao đẹp và sự quan tâm chăm sóc của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang đã và đang dành cho Nhân tài Đất Việt.</p><div>Nhà báo Phạm Huy Hoàn nhấn mạnh, Giải thưởng Nhân tài Đất Việt suốt 7 năm qua đều nhận được sự quan tâm của các vị lãnh đạo Đảng, Nhà nước và của toàn xã hội. Tại Lễ trao giải, Ban tổ chức luôn có vinh dự được đón tiếp&nbsp;các vị lãnh đạo&nbsp; Đảng và Nhà nước đến dự và trực tiếp trao Giải thưởng.</div><div>&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/15_4670c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Trưởng Ban tổ chức Phạm Huy Hoàn phát biểu khai mạc buổi lễ.</span></div><p>Năm 2011, Giải thưởng có 3 lĩnh vực được xét trao giải là CNTT, Khoa học tự nhiên và Y dược. Lĩnh&nbsp; vực CNTT đã đón nhận 204 sản phẩm tham dự từ mọi miền đất nước và cả nước ngoài như thí sinh Nguyễn Thái Bình từ bang California - Hoa Kỳ và một thí sinh ở Pháp cũng đăng ký tham gia.</p><div>“Cùng với lĩnh vực CNTT, năm nay, Hội đồng khoa học của Viện khoa học và công nghệ Việt Nam và Hội đồng khoa học - Bộ Y tế tiếp tục giới thiệu những nhà khoa học xuất&nbsp; sắc, có công trình nghiên cứu đem lại nhiều lợi ích cho xã hội trong lĩnh vực khoa học tự nhiên và lĩnh vực y dược. Đó là những bác sĩ tài năng, những nhà khoa học mẫn tuệ, những người đang ngày đêm thầm lặng cống hiến trí tuệ sáng tạo của mình cho xã hội trong công cuộc xây dựng đất nước.” - nhà báo Phạm Huy Hoàn nói.</div><div>&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/14_6e18f.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng BTC Giải thưởng và ông Phan Hoàng Đức, Phó TGĐ Tập đoàn VNPT nhận lẵng hoa chúc mừng của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang.</span></div><p>Cũng theo Trưởng Ban tổ chức Phạm Huy Hoàn, đến nay, vị Chủ tịch danh dự đầu tiên của Hội Khuyến học Việt Nam, Đại tướng Võ Nguyên Giáp, đã bước qua tuổi 100 nhưng vẫn luôn dõi theo và động viên từng bước phát triển của Giải thưởng Nhân tài Đất Việt. Đại tướng luôn quan tâm chăm sóc Giải thưởng ngay từ khi Giải thưởng&nbsp; mới ra đời cách đây 7 năm.</p><p>Trước lễ trao giải, Đại tướng Võ Nguyên Giáp đã gửi thư chúc mừng, động viên Ban tổ chức. Trong thư, Đại tướng viết: “Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</p><p>Sau phần khai mạc, cả hội trường hồi hội chờ đợi phút vinh danh các nhà khoa học và các tác giả, nhóm tác giả đoạt giải.</p><div><span style=\"FONT-WEIGHT: bold\">* Giải thưởng Khoa học Tự nhiên Việt Nam </span>thuộc về 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ - Viện Vật lý, Viện Khoa học công nghệ Việt Nam với công trình “Nghiên cứu cấu trúc hạt nhân và các phản ứng hạt nhân”.</div><div>&nbsp;</div><div align=\"center\"><div><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn_d4aae.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><p>Hai nhà khoa học đã tiến hành thành công các nghiên cứu về phản ứng hạt nhân với nơtron, phản ứng quang hạt nhân, quang phân hạch và các phản ứng hạt nhân khác có cơ chế phức tạp trên các máy gia tốc như máy phát nơtron, Microtron và các máy gia tốc thẳng của Việt Nam và Quốc tế. Các nghiên cứu này đã góp phần làm sáng tỏ cấu trúc hạt nhân và cơ chế phản ứng hạt nhân, đồng thời cung cấp nhiều số liệu hạt nhân mới có giá trị cho Kho tàng số liệu hạt nhân.</p><p>GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ đã khai thác hiệu quả hai máy gia tốc đầu tiên của Việt Nam là máy phát nơtron NA-3-C và Microtron MT-17 trong nghiên cứu cơ bản, nghiên cứu ứng dụng và đào tạo nhân lực. Trên cơ sở các thiết bị này, hai nhà khoa học đã tiến hành thành công những nghiên cứu cơ bản thực nghiệm đầu tiên về phản ứng hạt nhân ở Việt Nam; nghiên cứu và phát triển các phương pháp phân tích hạt nhân hiện đại và áp dụng thành công ở Việt Nam.</p><div>Bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCNVN và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học.</div><div>&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn2_e2865.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Phó Chủ tịch nước CHXHCNVN Nguyễn Thị Doan và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ.</span></div><p>GS.VS Nguyễn Văn Hiệu chia sẻ: “Cách đây không lâu, Chính phủ đã ký quyết định xây dựng nhà máy điện hạt nhân trong điều kiện đất nước còn nhỏ bé, nghèo khó và vì thế việc đào tạo nhân lực là nhiệm vụ số 1 hiện nay. Rất may, Việt Nam có 2 nhà khoa học cực kỳ tâm huyết và nổi tiếng trong cả nước cũng như trên thế giới. Hội đồng khoa học chúng tôi muốn xướng tên 2 nhà khoa học này để Chính phủ huy động cùng phát triển xây dựng nhà máy điện hạt nhân.”</p><p>GS.VS Hiệu nhấn mạnh, mặc dù điều kiện làm việc của 2 nhà khoa học không được quan tâm, làm việc trên những máy móc cũ kỹ được mua từ năm 1992 nhưng 2 ông vẫn xay mê cống hiến hết mình cho lĩnh Khoa học tự nhiên Việt Nam.</p><p><span style=\"FONT-WEIGHT: bold\">* Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y Dược:</span> 2 giải</p><div><span style=\"FONT-WEIGHT: bold\">1.</span> Nhóm nghiên cứu của Bệnh viện Hữu nghị Việt - Đức với công trình <span style=\"FONT-STYLE: italic\">“Nghiên cứu triển khai ghép gan, thận, tim lấy từ người cho chết não”</span>.</div><div>&nbsp;</div><div align=\"center\"><div><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y_3dca2.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><div>&nbsp;</div><div>Tại bệnh viện Việt Đức, tháng 4/2011, các ca ghép tạng từ nguồn cho là người bệnh chết não được triển khai liên tục. Với 4 người cho chết não hiến tạng, bệnh viện đã ghép tim cho một trường hợp,&nbsp;2 người được ghép gan, 8 người được ghép thận, 2 người được ghép van tim và tất cả các ca ghép này đều thành công, người bệnh được ghép đã có một cuộc sống tốt hơn với tình trạng sức khỏe ổn định.</div><div>&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y2_cb5a1.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nguyên Tổng Bí Ban chấp hành TW Đảng CSVN Lê Khả Phiêu và ông Vũ Văn Tiền, Chủ tịch Hội đồng quản trị Ngân hàng An Bình trao giải thưởng cho nhóm nghiên cứu của BV Hữu nghị Việt - Đức.</span></div><p>Công trong việc ghép tạng từ người cho chết não không chỉ thể hiện năng lực, trình độ, tay nghề của bác sĩ Việt Nam mà nó còn mang một ý nghĩa nhân văn to lớn, mang một thông điệp gửi đến những con người giàu lòng nhân ái với nghĩa cử cao đẹp đã hiến tạng để cứu sống những người bệnh khác.</p><p><span style=\"FONT-WEIGHT: bold\">2.</span> Hội đồng ghép tim Bệnh viện Trung ương Huế với công trình nghiên cứu <span style=\"FONT-STYLE: italic\">“Triển khai ghép tim trên người lấy từ người cho chết não”</span>.</p><div>Đề tài được thực hiện dựa trên ca mổ ghép tim thành công lần đầu tiên ở Việt Nam của chính 100% đội ngũ y, bác sĩ của Bệnh viện Trung ương Huế đầu tháng 3/2011. Bệnh nhân được ghép tim thành công là anh Trần Mậu Đức (26 tuổi, ở phường Phú Hội, TP. Huế).</div><div>&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y3_7768c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Hội đồng ghép tim BV Trung ương Huế nhận Giải thưởng Nhân tài Đất Việt.</span></div><p>Ghép tim từ người cho chết não đến người bị bệnh tim cần được ghép tim phải đảm bảo các yêu cầu: đánh giá chức năng các cơ quan; đánh giá tương hợp miễn dịch và phát hiện nguy cơ tiềm ẩn có thể xảy ra trong và sau khi ghép tim để từ đó có phương thức điều trị thích hợp. Có tới 30 xét nghiệm cận lâm sàng trung và cao cấp tiến hành cho cả người cho tim chết não và người sẽ nhận ghép tim tại hệ thống labo của bệnh viện.</p><p>---------------------</p><p><span style=\"FONT-WEIGHT: bold\">* Giải thưởng Nhân tài đất Việt Lĩnh vực Công nghệ thông tin.</span></p><p><span style=\"FONT-STYLE: italic\">Hệ thống sản phẩm đã ứng dụng thực tế:</span></p><p><span style=\"FONT-STYLE: italic\">Giải Nhất:</span> Không có.</p><p><span style=\"FONT-STYLE: italic\">Giải Nhì:</span> Không có</p><p><span style=\"FONT-STYLE: italic\">Giải Ba:</span> 3 giải, mỗi giải trị giá 30 triệu đồng.</p><div><span style=\"FONT-WEIGHT: bold\">1.</span> <span style=\"FONT-STYLE: italic\">“Bộ cạc xử lý tín hiệu HDTV”</span> của nhóm HD Việt Nam.</div><div>&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/hdtv_13b10.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhóm HDTV Việt Nam lên nhận giải.</span></div><p>Đây là bộ cạc xử lý tín hiệu HDTV đầu tiên tại Việt Nam đạt tiêu chuẩn OpenGear. Bộ thiết bị bao gồm 2 sản phẩm là cạc khuếch đại phân chia tín hiệu HD DA và cạc xử lý tín hiệu HD FX1. Nhờ bộ cạc này mà người sử dụng cũng có thể điều chỉnh mức âm thanh hoặc video để tín hiệu của kênh tuân theo mức chuẩn và không phụ thuộc vào chương trình đầu vào.</p><div><span style=\"FONT-WEIGHT: bold; FONT-STYLE: italic\">2.</span> <span style=\"FONT-STYLE: italic\">“Mã nguồn mở NukeViet”</span> của nhóm tác giả Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC).</div><div>&nbsp;</div><div align=\"center\"><div><img _fl=\"\" align=\"middle\" alt=\"NukeViet nhận giải ba Nhân tài đất Việt 2011\" src=\"/uploads/news/nukeviet-nhantaidatviet2011.jpg\" style=\"margin: 5px; width: 450px; height: 301px;\" /></div></div><p>NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.</p><div><span style=\"FONT-WEIGHT: bold\">3.</span> <span style=\"FONT-STYLE: italic\">“Hệ thống ngôi nhà thông minh homeON”</span> của nhóm Smart home group.</div><div>&nbsp;</div><div align=\"center\"><div><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16132_82014.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><p>Sản phẩm là kết quả từ những nghiên cứu miệt mài nhằm xây dựng một ngôi nhà thông minh, một cuộc sống xanh với tiêu chí: An toàn, tiện nghi, sang trọng và tiết kiệm năng lượng, hưởng ứng lời kêu gọi tiết kiệm năng lượng của Chính phủ.&nbsp;</p><p><strong><span style=\"FONT-STYLE: italic\">* Hệ thống sản phẩm có tiềm năng ứng dụng:</span></strong></p><p><span style=\"FONT-STYLE: italic\">Giải Nhất: </span>Không có.</p><div><span style=\"FONT-STYLE: italic\">Giải Nhì:</span> trị giá 50 triệu đồng: <span style=\"FONT-STYLE: italic\">“Dịch vụ Thông tin và Tri thức du lịch ứng dụng cộng nghệ ngữ nghĩa - iCompanion”</span> của nhóm tác giả SIG.</div><div>&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/nhi_7eee0.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhóm tác giả SIG nhận giải Nhì Nhân tài đất Việt 2011 ở hệ thống sản phẩm có tiềm năng ứng dụng.</span></div><p>ICompanion là hệ thống thông tin đầu tiên ứng dụng công nghệ ngữ nghĩa trong lĩnh vực du lịch - với đặc thù khác biệt là cung cấp các dịch vụ tìm kiếm, gợi ý thông tin “thông minh” hơn, hướng người dùng và kết hợp khai thác các tính năng hiện đại của môi trường di động.</p><p>Đại diện nhóm SIG chia sẻ: “Tinh thần sáng tạo và lòng khát khao muốn được tạo ra các sản phẩm mới có khả năng ứng dụng cao trong thực tiễn luôn có trong lòng của những người trẻ Việt Nam. Cảm ơn ban tổ chức và những nhà tài trợ đã giúp chúng tôi có một sân chơi thú vị để khuyến khích và chắp cánh thực hiện ước mơ của mình. Xin cảm ơn trường ĐH Bách Khoa đã tạo ra một môi trường nghiên cứu và sáng tạo, gắn kết 5 thành viên trong nhóm.”</p><p><span style=\"FONT-STYLE: italic\">Giải Ba:</span> 2 giải, mỗi giải trị giá 30 triệu đồng.</p><div><span style=\"FONT-WEIGHT: bold\">1. </span><span style=\"FONT-STYLE: italic\">“Bộ điều khiển IPNET”</span> của nhóm IPNET</div><div>&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16149_ed58d.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"><span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhà báo Phạm Huy Hoàn, Trưởng Ban Tổ chức Giải thưởng NTĐV, Tổng Biên tập báo điện tử Dân trí và ông Tạ Hữu Thanh - Phó TGĐ Jetstar Pacific trao giải cho nhóm IPNET.</span></div><p>Bằng cách sử dụng kiến thức thiên văn học để tính giờ mặt trời lặn và mọc tại vị trí cần chiếu sáng được sáng định bởi kinh độ, vĩ độ cao độ, hàng ngày sản phẩm sẽ tính lại thời gian cần bật/tắt đèn cho phù hợp với giờ mặt trời lặn/mọc.</p><div><span style=\"FONT-WEIGHT: bold\">2.</span> <span style=\"FONT-STYLE: italic\">“Hệ thống lập kế hoạch xạ trị ung thư quản lý thông tin bệnh nhân trên web - LYNX”</span> của nhóm LYNX.</div><div>&nbsp;</div><div align=\"center\"><div><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/3tiem-nang_32fee.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><p>Đây là loại phần mềm hoàn toàn mới ở Việt Nam, là hệ thống lập kế hoạch và quản lý thông tin của bệnh nhân ung thư qua Internet (LYNX) dựa vào nền tảng Silverlight của Microsoft và kiến thức chuyên ngành Vật lý y học. LYNX giúp ích cho các nhà khoa học, bác sĩ, kỹ sư vật lý, bệnh nhân và mọi thành viên trong việc quản lý và theo dõi hệ thống xạ trị ung thư một cách tổng thể. LYNX có thể được sử dụng thông qua các thiết bị như máy tính cá nhân, máy tính bảng… và các trình duyệt Internet Explorer, Firefox, Chrome…</p><div>Chương trình trao giải đã được truyền hình trực tiếp trên VTV2 - Đài Truyền hình Việt Nam và tường thuật trực&nbsp;tuyến trên báo điện tử Dân trí từ 20h tối 20/11/2011.</div><div>&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0545_c898e.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\">&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0560_c995c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\">&nbsp;</div><div align=\"center\"><img _fl=\"\" align=\"middle\" alt=\"\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16199_36a5c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\">&nbsp;</div><div align=\"center\"><div align=\"center\"><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\">	<tbody>		<tr>			<td>			<div><span style=\"FONT-WEIGHT: bold\"><span style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Khởi xướng từ năm 2005, Giải thưởng Nhân tài Đất Việt đã phát hiện và tôn vinh nhiều tài năng trong lĩnh vực CNTT-TT, Khoa học tự nhiên và Y dược, trở thành một sân chơi bổ ích cho những người yêu thích CNTT. Mỗi năm, Giải thưởng ngày càng thu hút số lượng tác giả và sản phẩm tham gia đông đảo và nhận được sự quan tâm sâu sắc của lãnh đạo Đảng, Nhà nước cũng như công chúng.</span></span></div>			<div><span style=\"FONT-WEIGHT: bold\">&nbsp;</span></div>			<div><span style=\"FONT-WEIGHT: bold\"><span style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Đối tượng tham gia Giải thưởng trong lĩnh vực CNTT là những người Việt Nam ở mọi lứa tuổi, đang sinh sống trong cũng như ngoài nước. Năm 2006, Giải thưởng có sự tham gia của thí sinh đến từ 8 nước trên thế giới và 40 tỉnh thành của Việt Nam. Từ năm 2009, Giải thưởng được mở rộng sang lĩnh vực Khoa học tự nhiên, và năm 2010 là lĩnh vực Y dược, vinh danh những nhà khoa học trong các lĩnh vực này.</span>&nbsp;</span></div>			<div><span style=\"FONT-WEIGHT: bold\">&nbsp;</span></div>			</td>		</tr>	</tbody></table></div></div>', '', 2, 0, 1, 1, 1, 0), 
(11, '', '', '<div style=\"text-align: justify;\">Có hiệu lực từ ngày 20/1/2015, Thông tư này thay thế cho Thông tư 41/2009/TT-BTTTT (Thông tư 41) ngày 30/12/2009 ban hành Danh mục các sản phẩm phần mềm nguồn mở đáp ứng yêu cầu sử dụng trong cơ quan, tổ chức nhà nước.<br  /><br  />Sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước trong Thông tư 41/2009/TT-BTTTT vừa được Bộ TT&amp;TT ban hành, là những&nbsp;sản phẩm đã đáp ứng các tiêu chí về tính năng kỹ thuật cũng như tính mở và bền vững, và NukeViet là một trong số đó.</div><p style=\"text-align: justify;\">Cụ thể, theo Thông tư 20, sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước phải đáp các tiêu chí về chức năng, tính năng kỹ thuật bao gồm: phần mềm có các chức năng, tính năng kỹ thuật phù hợp với các yêu cầu nghiệp vụ hoặc các quy định, hướng dẫn tương ứng về ứng dụng CNTT trong các cơ quan, tổ chức nhà nước; phần mềm đáp ứng được yêu cầu tương thích với hệ thống thông tin, cơ sở dữ liệu hiện có của các cơ quan, tổ chức.</p><p style=\"text-align: justify;\">Bên cạnh đó, các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước còn phải đáp ứng tiêu chí về tính mở và tính bền vững của phần mềm. Cụ thể, phần mềm phải đảm bảo các quyền: tự do sử dụng phần mềm không phải trả phí bản quyền, tự do phân phối lại phần mềm, tự do sửa đổi phần mềm theo nhu cầu sử dụng, tự do phân phối lại phần mềm đã chỉnh sửa (có thể thu phí hoặc miễn phí); phần mềm phải có bản mã nguồn, bản cài đặt được cung cấp miễn phí trên mạng; có điểm ngưỡng thất bại PoF từ 50 điểm trở xuống và điểm mô hình độ chín nguồn mở OSMM từ 60 điểm trở lên.</p><p style=\"text-align: justify;\">Căn cứ những tiêu chuẩn trên, thông tư 20 quy định cụ thể Danh mục 31 sản phẩm thuộc 11 loại phần mềm được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước.&nbsp;NukeViet thuộc danh mục hệ quản trị nội dung nguồn mở. Chi tiết thông tư và danh sách 31 sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước có&nbsp;<a href=\"http://vinades.vn/vi/download/van-ban-luat/Thong-tu-20-2014-TT-BTTTT/\" target=\"_blank\">tại đây</a>.</p><p style=\"text-align: justify;\">Thông tư 20/2014/TT-BTTTT quy định rõ: Các cơ quan, tổ chức nhà nước khi có nhu cầu sử dụng vốn nhà nước để đầu tư xây dựng, mua sắm hoặc thuê sử dụng các loại phần mềm có trong Danh mục hoặc các loại phần mềm trên thị trường đã có sản phẩm phần mềm nguồn mở tương ứng thỏa mãn các tiêu chí trên (quy định tại Điều 3 Thông tư 20) thì phải&nbsp;ưu tiên lựa chọn các sản phẩm phần mềm nguồn mở tương ứng, đồng thời phải thể hiện rõ sự ưu tiên này trong các tài liệu&nbsp;như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p><p style=\"text-align: justify;\">Đồng thời,&nbsp;các cơ quan, tổ chức nhà nước phải đảm bảo không đưa ra các yêu cầu, điều kiện, tính năng kỹ thuật có thể dẫn đến việc loại bỏ các sản phẩm phần mềm nguồn mở&nbsp;trong các tài liệu như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p><p style=\"text-align: justify;\">Như vậy, sau thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục trong đó đưa NukeViet vào danh sách các mã nguồn mở được khuyến khích sử dụng trong giáo dục, thông tư 20/2014/TT-BTTTT đã mở đường cho NukeViet vào sử dụng cho các cơ quan, tổ chức nhà nước. Các đơn vị hỗ trợ triển khai NukeViet cho các cơ quan nhà nước có thể sử dụng quy định này để được ưu tiên triển khai cho các dự án website, cổng thông tin cho các cơ quan, tổ chức nhà nước.<br  /><br  />Thời gian tới, Công ty cổ phần phát triển nguồn mở Việt Nam (<a href=\"http://vinades.vn/\" target=\"_blank\">VINADES.,JSC</a>) - đơn vị chủ quản của NukeViet - sẽ cùng với Ban Quản Trị NukeViet tiếp tục hỗ trợ các doanh nghiệp đào tạo nguồn nhân lực chính quy phát triển NukeViet nhằm cung cấp dịch vụ ngày một tốt hơn cho chính phủ và các cơ quan nhà nước, từng bước xây dựng và hình thành liên minh các doanh nghiệp phát triển NukeViet, đưa sản phẩm phần mềm nguồn mở Việt không những phục vụ tốt thị trường Việt Nam mà còn từng bước tiến ra thị trường khu vực và các nước đang phát triển khác trên thế giới nhờ vào lợi thế phần mềm nguồn mở đang được chính phủ nhiều nước ưu tiên phát triển.</p>', 'mic.gov.vn', 2, 0, 1, 1, 1, 0), 
(12, '', '', '<div style=\"text-align: justify;\">Trong năm 2016, chúng tôi xác định là đơn vị sát cánh cùng các đơn vị giáo dục- là đơn vị xây dựng nhiều website cho ngành giáo dục nhất trên cả nước.<br  />Với phần mềm mã nguồn mở NukeViet hiện có nhiều lợi thế:<br  />+ Được Bộ giáo dục khuyến khích sử dụng.<br  />+ Được bộ thông tin truyền thông chỉ định sử dụng trong khối cơ quan nhà nước.<br  />+Được cục công nghệ thông tin ghi rõ tên sản phẩm NukeViet nên dùng theo hướng dẫn thực hiện CNTT 2015-2016.<br  />Chúng tôi cần các bạn góp phần xây dựng nền giáo dục nước nhà ngày càng phát triển.</div><div>&nbsp;</div><table align=\"left\" border=\"1\" cellpadding=\"20\" cellspacing=\"0\" class=\"table table-striped table-bordered table-hover\" style=\"width:100%;\" width=\"653\">	<tbody>		<tr>			<td style=\"width: 27.66%;\"><strong>Vị trí tuyển dụng:</strong></td>			<td style=\"width: 72.34%;\">Nhân viên kinh doanh</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Chức vụ:</strong></td>			<td style=\"width: 72.34%;\">Nhân viên</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Ngành nghề:</strong></td>			<td style=\"width: 72.34%;\"><strong>Sản phẩm:</strong><br  />			Cổng thông tin, website cho các phòng, sở giáo dục và đào tạo các trường học.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hình thức làm việc:</strong></td>			<td style=\"width: 72.34%;\">Toàn thời gian cố định</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Địa điểm làm việc:</strong></td>			<td style=\"width: 72.34%;\">Văn phòng công ty (Được đi công tác theo hợp đồng đã ký)</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Mức lương:</strong></td>			<td style=\"width: 72.34%;\">&nbsp;Lương cố định + Thưởng vượt doanh số + thưởng theo từng hợp đồng (từ 2-7%).</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Mô tả công việc:</strong></td>			<td style=\"width: 72.34%;\">Chúng tôi có khách hàng mục tiêu và danh sách khách hàng, công việc đòi hỏi ứng viên sử dụng thành thạo vi tính văn phòng, các phần mềm liên quan đến công việc và có laptop để phục vụ công việc.<br  />			- Sales Online, quảng bá ký kết, liên kết, với các đối tác qua INTERNET. Xây dưng mối quan hệ phát triển bền vững với các đối tác.<br  />			- Gọi điện, giới thiệu dịch vụ, sản phẩm của công ty đến đối tác.<br  />			- Xử lý các cuộc gọi của khách hàng liên quan đến, sản phẩm, dịch vụ công ty.<br  />			- Đàm phán, thương thuyết, ký kết hợp đồng với khách hàng đang có nhu cầu thiết kế website , SEO website , PR thương hiệu trên Internet&nbsp;<br  />			- Duy trì và chăm sóc mối quan hệ lâu dài với khách hàng, mở rộng khách hàng tiềm năng nhằm thúc đẩy doanh số bán hàng<br  />			- Hỗ trợ khách hàng khi được yêu cầu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Số lượng cần tuyển:</strong></td>			<td style=\"width: 72.34%;\">05</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Quyền lợi được hưởng:</strong></td>			<td style=\"width: 72.34%;\">- Được đào tạo kĩ năng bán hàng, được công ty hỗ trợ tham gia khóa học bán hàng chuyên nghiệp.<br  />			- Lương cứng: 3.000.000 VNĐ+ hoa hồng dự án (2-7%/năm/hợp đồng). Lương trả qua ATM, được xét tăng lương 3 tháng một lần dựa trên doanh thu.<br  />			- Bậc lương xét trên năng lực bán hàng.<br  />			- Thưởng theo dự án, các ngày lễ tết.<br  />			- Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội.<br  />			- Cơ hội làm việc và gắn bó lâu dài trong công ty, được thưởng cổ phần nếu doanh thu tốt.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Số năm kinh nghiệm:</strong></td>			<td style=\"width: 72.34%;\">Trên 6 tháng</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu bằng cấp:</strong></td>			<td style=\"width: 72.34%;\">Cao đẳng, Đại học</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu giới tính:</strong></td>			<td style=\"width: 72.34%;\">Không yêu cầu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu độ tuổi:</strong></td>			<td style=\"width: 72.34%;\">Không yêu cầu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu khác:</strong></td>			<td style=\"width: 72.34%;\">- Yêu thích và đam mê Internet Marketing, thích online, thương mại điện tử<br  />			- Giọng nói dễ nghe, không nói ngọng.<br  />			- Có khả năng giao tiếp qua điện thoại.<br  />			- Ngoại hình ưa nhìn là một lợi thế<br  />			- Có tính cẩn thận trong công việc, luôn cố gắng học hỏi.<br  />			- Kỹ năng sales online tốt.<br  />			-Trung thực, năng động, nhiệt tình,siêng năng, nhiệt huyết trong công việc.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hồ sơ bao gồm:</strong></td>			<td style=\"width: 72.34%;\"><strong>* Yêu cầu Hồ sơ:</strong><br  />			<strong>Cách thức đăng ký dự tuyển</strong>: Làm Hồ sơ xin việc (file mềm) và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br  />			<br  />			<strong>Nội dung hồ sơ xin việc file mềm gồm</strong>:<br  />			<strong>+ Đơn xin việc:</strong>&nbsp;Theo hướng dẫn bên dưới.<br  />			<strong>+ Thông tin ứng viên:</strong>&nbsp;Theo mẫu của VINADES.,JSC <strong><em>(download tại đây:&nbsp;<a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-kinh-doanh/\">Mẫu lý lịch ứng viên</a>)</em></strong><br  />			<strong>* Hồ sơ xin việc (Bản in thông thường) bao gồm</strong>:<br  />			- Giấy khám sức khoẻ của cơ quan y tế.<br  />			- Bản sao hộ khẩu (có công chứng)<br  />			- Bản sao giấy khai sinh (có công chứng)<br  />			- Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn -bằng chứng chỉ (có công chứng)<br  />			- Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.<br  />			- Thư giới thiệu (nếu có)<br  />			- Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).<br  />			<br  />			<strong>*Hướng dẫn</strong>:<br  />			- Với bản in của hồ sơ ứng tuyển, ứng viên sẽ phải nộp trước cho Ban tuyển dụng hoặc muộn nhất là mang theo khi có lịch phỏng vấn. Bản in sẽ không được trả lại ngay cả khi ứng viên không đạt yêu cầu.<br  />			- Nếu không thể bố trí thời gian phỏng vấn như sắp xếp của -Ban tuyển dụng, thí sinh cần thông báo ngay để được đổi lịch.<br  />			- Nếu có bất cứ thắc mắc gì bạn có thể liên hệ với Ms. Thu qua email: tuyendung@vinades.vn. Có thể gọi điện theo số điện thoại: 01255723353</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hạn nộp hồ sơ:</strong></td>			<td style=\"width: 72.34%;\">Không hạn chế cho tới khi tuyển đủ.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hình thức nộp hồ sơ:</strong></td>			<td style=\"width: 72.34%;\">Qua Email</td>		</tr>		<tr>			<td colspan=\"2\" style=\"width:100.0%;\">			<h3>THÔNG TIN LIÊN HỆ</h3>			</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Điện thoại liên hệ:</strong></td>			<td style=\"width: 72.34%;\">01255723353- Ms. Thu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Địa chỉ liên hệ:</strong></td>			<td style=\"width: 72.34%;\">Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Email liên hệ:</strong></td><td style=\"width: 72.34%;\">tuyendung@vinades.vn</td></tr></tbody></table>', '', 2, 0, 1, 1, 1, 0), 
(14, '', '', '<p style=\"text-align: justify;\">Nếu bạn yêu thích công nghệ, thích kinh doanh hoặc lập trình web và mong muốn trải nghiệm, học hỏi, thậm chí là đi làm ngay từ khi còn ngồi trên ghế nhà trường, hãy tham gia chương trình thực tập sinh tại công ty VINADES.</p><p style=\"text-align: justify;\">Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là đơn vị chịu trách nhiệm chính trong việc phát triển phần mềm NukeViet và có nhiệm vụ hỗ trợ cộng đồng người dùng NukeViet &#91;<u><a href=\"http://vinades.vn/vi/about/history/\" target=\"_blank\">xem thêm giới thiệu về lịch sử hình thành VINADES</a></u>&#93;. Là công ty được thành lập từ cộng đồng phần mềm nguồn mở, hàng năm công ty dành những vị trí đặc biệt cho các bạn sinh viên được học tập, trải nghiệm, làm việc tại công ty.<br  />&nbsp;</p><h2 style=\"text-align: justify;\"><b>C</b><b>ác vị trí thực tập</b></h2><ul>	<li style=\"text-align: justify;\"><strong>Kinh doanh:</strong> Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</li>	<li style=\"text-align: justify;\"><strong>Kỹ thuật:</strong> Chuyên viên đồ họa, Lập trình viên…</li></ul><h2 style=\"text-align: justify;\"><b>Quyền lợi của thực tập sinh</b></h2><ul>	<li style=\"text-align: justify;\">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động.</li>	<li style=\"text-align: justify;\">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, các lập trình viên chính của đội code NukeViet; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày.</li>	<li style=\"text-align: justify;\">Có cơ hội tìm hiểu, phát triển định hướng của bản thân.</li>	<li style=\"text-align: justify;\">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty.</li>	<li style=\"text-align: justify;\">Cơ&nbsp;hội được học việc để trở thành nhân viên chính thức nếu có kết quả thực tập tốt.</li>	<li style=\"text-align: justify;\">Thực tập không hưởng lương nhưng có thể được trả thù lao cho một số công việc được giao theo đơn hàng.</li></ul><h2 style=\"text-align: justify;\"><b>Thời gian làm việc</b></h2><ul>	<li style=\"text-align: justify;\">Toàn thời gian cố định hoặc làm online.</li>	<li style=\"text-align: justify;\">Thời gian làm việc là:&nbsp;8:00 – 17:00, Thứ hai – Thứ sáu</li>	<li style=\"text-align: justify;\">Ngày làm việc và thời gian làm việc có thể thay đổi linh hoạt tùy thuộc vào điều kiện của ứng viên và tình hình thực tế.</li></ul><h2 style=\"text-align: justify;\"><b>Đối tượng và điều kiện ứng tuyển</b></h2><p style=\"text-align: justify;\">Tất cả các bạn sinh viên năm cuối/mới tốt nghiệp các trường CĐ - ĐH đáp ứng được những yêu cầu sau:</p><ul>	<li style=\"text-align: justify;\">Sinh viên khối ngành kinh tế: yêu thích marketing online, mong muốn thực tập trong lĩnh vực kinh doanh phần mềm.</li>	<li style=\"text-align: justify;\">Sinh viên khối ngành kỹ thuật: yêu thích thiết kế, lập trình web.</li></ul><p style=\"text-align: justify;\">Có kỹ năng giao tiếp và tư duy logic tốt, năng động và ham học hỏi.</p><p style=\"text-align: justify;\">Có máy tính xách tay để làm việc.</p><p style=\"text-align: justify;\">Ưu tiên các ứng viên đam mê phần mềm nguồn mở, đặc biệt là các ứng viên đã từng tham gia và có bài viết diễn đàn NukeViet (<a href=\"http://forum.nukeviet.vn/\">forum.nukeviet.vn</a>).</p><h2 style=\"text-align: justify;\"><b>Cách thức ứng tuyển</b></h2><p style=\"text-align: justify;\">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;<a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a>;</p><p style=\"text-align: justify;\">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển thực tập &#91;Bộ phận ứng tuyển&#93;.</p><p style=\"text-align: justify;\">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển thực tập sinh bộ phận đồ họa</p><p style=\"text-align: justify;\">Hồ sơ bản cứng cần chuẩn bị (sẽ gửi sau nếu đạt yêu cầu) gồm:</p><ul>	<li style=\"text-align: justify;\">Giấy khám sức khoẻ của cơ quan y tế</li>	<li style=\"text-align: justify;\">Bản sao giấy khai sinh (có công chứng).</li>	<li style=\"text-align: justify;\">Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp.</li>	<li style=\"text-align: justify;\">Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.</li>	<li style=\"text-align: justify;\">Chứng minh thư (photo không cần công chứng).</li>	<li style=\"text-align: justify;\">Thư giới thiệu (nếu có)</li>	<li style=\"text-align: justify;\">Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</li></ul><p><br  /><strong>Chi tiết vui lòng tham khảo tại:</strong>&nbsp;<a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /><br  />- Tel: +84-4-85872007 - Fax: +84-4-35500914<br  />- Email:&nbsp;<a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a>&nbsp;- Website:&nbsp;<a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></p></blockquote>', '', 2, 0, 1, 1, 1, 0), 
(15, '', '', '<p style=\"text-align: justify;\">Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là đơn vị chịu trách nhiệm chính trong việc phát triển phần mềm NukeViet và có nhiệm vụ hỗ trợ cộng đồng người dùng NukeViet &#91;<u><a href=\"http://vinades.vn/vi/about/history/\" target=\"_blank\">xem thêm giới thiệu về lịch sử hình thành VINADES</a></u>&#93;.</p><p style=\"text-align: justify;\">Nếu bạn yêu thích phần mềm nguồn mở, triết lý của phần mềm tự do nguồn mở hoặc đơn giản là yêu NukeViet, hãy liên hệ ngay để gia nhập công ty VINADES, cùng chúng tôi phát triển NukeViet – Phần mềm nguồn mở Việt Nam – và tạo ra những sản phẩm web tuyệt vời cho cộng đồng.</p><h2 style=\"text-align: justify;\"><b>Các vị trí nhận học việc</b></h2><ul>	<li style=\"text-align: justify;\"><strong>Kinh doanh:</strong> Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</li>	<li style=\"text-align: justify;\"><strong>Kỹ thuật:</strong> Chuyên viên đồ họa, Lập trình viên…</li></ul><h2 style=\"text-align: justify;\"><b>Quyền lợi của học viên</b></h2><ul>	<li style=\"text-align: justify;\">Được hưởng trợ cấp ăn trưa.</li>	<li style=\"text-align: justify;\">Được trợ cấp vé gửi xe.</li>	<li style=\"text-align: justify;\">Được hưởng lương khoán theo từng dự án (nếu có).</li>	<li style=\"text-align: justify;\">Được hỗ trợ học phí tham gia các khóa học nâng cao các kỹ năng (nếu có).</li>	<li style=\"text-align: justify;\">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động.</li>	<li style=\"text-align: justify;\">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, các lập trình viên chính của đội code NukeViet; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày.</li>	<li style=\"text-align: justify;\">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty.</li>	<li style=\"text-align: justify;\">Cơ&nbsp;hội ưu tiên (không cần qua thử việc) trở thành nhân viên chính thức nếu có kết quả học việc tốt.</li></ul><h2 style=\"text-align: justify;\"><b>Thời gian làm việc</b></h2><ul>	<li style=\"text-align: justify;\">Toàn thời gian cố định hoặc làm online.</li>	<li style=\"text-align: justify;\">Thời gian làm việc là:&nbsp;8:00 – 17:00, Thứ hai – Thứ sáu</li>	<li style=\"text-align: justify;\">Ngày làm việc và thời gian làm việc có thể thay đổi linh hoạt tùy thuộc vào điều kiện của ứng viên và tình hình thực tế.</li></ul><h2 style=\"text-align: justify;\"><b>Đối tượng</b></h2><p style=\"text-align: justify;\">Tất cả các bạn sinh viên năm cuối/mới tốt nghiệp các trường CĐ - ĐH đáp ứng được những yêu cầu sau:</p><ul>	<li style=\"text-align: justify;\">Sinh viên khối ngành kinh tế: yêu thích marketing online, mong muốn thực tập trong lĩnh vực kinh doanh phần mềm.</li>	<li style=\"text-align: justify;\">Sinh viên khối ngành kỹ thuật: yêu thích thiết kế, lập trình web.</li></ul><p style=\"text-align: justify;\">Có kỹ năng giao tiếp và tư duy logic tốt, năng động và ham học hỏi.</p><p style=\"text-align: justify;\">Ưu tiên các ứng viên đam mê phần mềm nguồn mở, đặc biệt là các ứng viên đã từng tham gia và có bài viết diễn đàn NukeViet (<a href=\"http://forum.nukeviet.vn/\">forum.nukeviet.vn</a>)</p><h2 style=\"text-align: justify;\"><b>Điều kiện</b></h2><p style=\"text-align: justify;\">Có máy tính xách tay để làm việc.</p><p style=\"text-align: justify;\">Ứng viên sẽ được ký hợp đồng học việc (có thời hạn cụ thể). Nếu được nhận vào làm việc chính thức, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền đào tạo. Chi phí này được tính là 3.000.000 VND</p><p style=\"text-align: justify;\">Nếu được cử đi học, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền học phí.</p><p style=\"text-align: justify;\">Thực hiện theo các quy định khác của công ty...</p><h2 style=\"text-align: justify;\"><b>Cách thức ứng tuyển</b></h2><p style=\"text-align: justify;\">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;<a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a>;</p><p style=\"text-align: justify;\">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển học việc&#91;Bộ phận ứng tuyển&#93;;</p><p style=\"text-align: justify;\">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển học việc bộ phận đồ họa</p><p style=\"text-align: justify;\">Hồ sơ bản cứng cần chuẩn bị (sẽ gửi sau nếu đạt yêu cầu) gồm:</p><ul>	<li style=\"text-align: justify;\">Giấy khám sức khoẻ của cơ quan y tế</li>	<li style=\"text-align: justify;\">Bản sao giấy khai sinh (có công chứng).</li>	<li style=\"text-align: justify;\">Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp.</li>	<li style=\"text-align: justify;\">Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.</li>	<li style=\"text-align: justify;\">Chứng minh thư (photo không cần công chứng).</li>	<li style=\"text-align: justify;\">Thư giới thiệu (nếu có)</li>	<li style=\"text-align: justify;\">Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</li></ul><p style=\"text-align: justify;\"><br  /><strong>Chi tiết vui lòng tham khảo tại:</strong>&nbsp;<a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /><br  />- Tel: +84-4-85872007 - Fax: +84-4-35500914<br  />- Email:&nbsp;<a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a>&nbsp;- Website:&nbsp;<a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></p></blockquote>', '', 2, 0, 1, 1, 1, 0), 
(16, '', '', '<div class=\"details-content clearfix\" id=\"bodytext\"><strong>Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có gì mới?</strong><br  /><br  />Trong các hướng dẫn thực hiện nhiệm vụ CNTT từ năm 2010 đến nay liên tục chỉ đạo việc đẩy mạnh công tác triển khai sử dụng phần mềm nguồn mở trong nhà trường và các cơ quan quản lý giáo dục. Tuy nhiên Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có nhiều thay đổi mạnh mẽ đáng chú ý, đặc biệt việc chỉ đạo triển khai các phần mềm nguồn mở vào trong các cơ sở quản lý giao dục được rõ ràng và cụ thể hơn rất nhiều.<br  /><br  />Một điểm thay đổi đáng chú ý đối với phần mềm nguồn mở, trong đó đã thay hẳn thuật ngữ &quot;phần mềm tự do mã nguồn mở&quot; hoặc &quot;phần mềm mã nguồn mở&quot; thành &quot;phần mềm nguồn mở&quot;, phản ánh xu thế sử dụng thuật ngữ phần mềm nguồn mở đã phổ biến trong cộng đồng nguồn mở thời gian vài năm trở lại đây.<br  /><br  /><strong>NukeViet - Phần mềm nguồn mở Việt - không chỉ được khuyến khích mà đã được hướng dẫn thực thi</strong><br  /><br  />Từ 5 năm trước, thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐTquy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục, NukeViet đã được đưa vào danh sách các mã nguồn mở <strong>được khuyến khích sử dụng trong giáo dục</strong>. Tuy nhiên, việc sử dụng chưa được thực hiện một cách đồng bộ mà chủ yếu làm nhỏ lẻ rải rác tại một số trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo lần này, NukeViet&nbsp; không chỉ được khuyến khích mà đã được hướng dẫn thực thi, không những thế NukeViet còn được đưa vào hầu hết các nhiệm vụ chính, cụ thể:<div><div><div>&nbsp;</div>- <strong>Nhiệm vụ số 5</strong> &quot;<strong>Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục</strong>&quot;, mục 5.1 &quot;Một số nội dung cần bồi dưỡng&quot; có ghi &quot;<strong>Tập huấn sử dụng phần mềm nguồn mở NukeViet.</strong>&quot;<br  />&nbsp;</div>- <strong>Nhiệm vụ số 10 &quot;Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở</strong>&quot; có ghi: &quot;<strong>Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</strong><br  />&nbsp;</div>- Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;<strong>Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</strong><br  />&nbsp;<div>Hiện giờ văn bản này đã được đăng lên website của Bộ GD&amp;ĐT: <a href=\"http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage\" target=\"_blank\">http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage</a></div><p><br  />Hoặc có thể tải về tại đây: <a href=\"http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/\" target=\"_blank\">http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/</a></p><blockquote><p><em>Trên cơ sở hướng dẫn của Bộ GD&amp;ĐT, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&amp;ĐT, Sở GD&amp;ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Các Phòng, Sở GD&amp;ĐT có nhu cầu có thể xem thêm thông tin chi tiết tại đây: <a href=\"http://vinades.vn/vi/news/thong-cao-bao-chi/Ho-tro-trien-khai-dao-tao-va-trien-khai-NukeViet-cho-cac-Phong-So-GD-DT-264/\" target=\"_blank\">Hỗ trợ triển khai đào tạo và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT</a></em></p></blockquote></div>', '', 2, 0, 1, 1, 1, 0), 
(17, '', '', '<div class=\"details-content clearfix\" id=\"bodytext\"><span style=\"font-size:16px;\"><strong>Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet</strong></span><br  /><br  />Công tác hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet sẽ được thực hiện bởi đội ngũ chuyên gia giàu kinh nghiệm về NukeViet được tuyển chọn từ lực lượng lập trình viên, chuyên viên kỹ thuật hiện đang tham gia phát triển và hỗ trợ về NukeViet từ Ban Quản Trị NukeViet và Công ty cổ phần phát triển nguồn mở Việt Nam và các đối tác thuộc Liên minh phần mềm giáo dục nguồn mở NukeViet.<br  /><br  />Với kinh nghiệm tập huấn đã được tổ chức thành công cho nhiều Phòng giáo dục và đào tạo, các chuyên gia về NukeViet sẽ giúp chuyển giao giáo trình, chương trình, kịch bản đào tạo cho các Phòng, Sở GD&amp;ĐT; hỗ trợ các giáo viên và cán bộ quản lý giáo dục sử dụng trong suốt thời gian sau đào tạo.<br  /><br  />Đặc biệt, đối với các đơn vị sử dụng NukeViet làm website và cổng thông tin đồng bộ theo quy mô cấp Phòng và Sở, cán bộ tập huấn của NukeViet sẽ có nhiều chương trình hỗ trợ khác như chương trình thi đua giữa các website sử dụng NukeViet trong cùng đơn vị cấp Phòng, Sở và trên toàn quốc; Chương trình báo cáo và giám sát và xếp hạng website hàng tháng; Chương trình tập huấn nâng cao trình độ sử dụng NukeViet hàng năm cho giáo viên và cán bộ quản lý giáo dục đang thực hiện công tác quản trị các hệ thống sử dụng nền tảng NukeViet.<br  /><br  /><span style=\"font-size:16px;\"><strong>Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT</strong></span><br  /><br  />Nhằm hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT một cách toàn diện, đồng bộ và tiết kiệm, hiện tại, Liên minh phần mềm nguồn mở giáo dục NukeViet chuẩn bị ra mắt. Liên minh này do Công ty cổ phần phát triển nguồn mở Việt Nam đứng dầu và thực hiện việc điều phối công các hỗ trợ và phối hợp giữa các đơn vị trên toàn quốc. Thành viên của liên minh là các doanh nghiệp cung cấp sản phẩm và dịch vụ phần mềm hỗ trợ cho giáo dục (kể cả những đơn vị chỉ tham gia lập trình và những đơn vị chỉ tham gia khai thác thương mại). Liên minh sẽ cùng nhau làm việc để xây dựng một hệ thống phần mềm thống nhất cho giáo dục, có khả năng liên thông và kết nối với nhau, hoàn toàn dựa trên nền tảng phần mềm nguồn mở. Liên minh cũng hỗ trợ và phân phối phần mềm cho các đơn vị làm phần mềm trong ngành giáo dục với mục tiêu là tiết kiệm tối đa chi phí trong khâu thương mại, mang tới cơ hội cho các đơn vị làm phần mềm giáo dục mà không cần phải lo lắng về việc phân phối phần mềm. Các doanh nghiệp quan tâm đến cơ hội kinh doanh bằng phần mềm nguồn mở, muốn tìm hiểu và tham gia liên minh có thể đăng ký tại đây: <a href=\"http://edu.nukeviet.vn/lienminh-dangky.html\" target=\"_blank\">http://edu.nukeviet.vn/lienminh-dangky.html</a><br  /><br  />Liên minh phần mềm nguồn mở giáo dục NukeViet đang cung cấp giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) cung cấp dưới dạng dịch vụ công nghệ thông tin (theo mô hình của <a href=\"http://vinades.vn/vi/download/van-ban-luat/Quyet-dinh-80-ve-thue-dich-vu-CNTT/\" target=\"_blank\">Quyết định số 80/2014/QĐ-TTg của Thủ tướng Chính phủ</a>) có thể hỗ trợ cho các trường, Phòng và Sở GD&amp;ĐT triển khai NukeViet ngay lập tức.<br  /><br  />Giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) có tích hợp website các trường (liên thông 3 cấp: trường - phòng - sở) cho phép tích hợp hàng ngàn website của các trường cùng nhiều dịch vụ khác trên cùng một hệ thống giúp tiết kiệm chi phí đầu tư, chi phí triển khai và bảo trì hệ thống bởi toàn bộ hệ thống được vận hành bằng một phần mềm duy nhất. Ngoài giải pháp cổng thông tin giáo dục tích hợp, Liên minh phần mềm nguồn mở giáo dục NukeViet cũng đang phát triển một số&nbsp;sản phẩm phần mềm dựa trên phần mềm nguồn mở NukeViet và sẽ sớm ra mắt trong thời gian tới.<div><br  />Hiện nay,&nbsp;NukeViet Edu Gate cũng&nbsp;đã được triển khai rộng rãi và nhận được sự ủng hộ của&nbsp;nhiều Phòng, Sở GD&amp;ĐT trên toàn quốc.&nbsp;Các phòng, sở GD&amp;ĐT quan tâm đến giải pháp NukeViet Edu Gate có thể truy cập&nbsp;<a href=\"http://edu.nukeviet.vn/\" target=\"_blank\">http://edu.nukeviet.vn</a>&nbsp;để tìm hiểu thêm hoặc liên hệ:<br  /><br  /><span style=\"font-size:14px;\"><strong>Liên minh phần mềm nguồn mở giáo dục NukeViet</strong></span><br  />Đại diện: <strong>Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC)</strong><br  /><strong>Địa chỉ</strong>: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội<br  /><strong>Email</strong>: contact@vinades.vn, Tel: 04-85872007, <strong>Fax</strong>: 04-35500914,<br  /><strong>Hotline</strong>: 0904762534 (Mr. Hùng), 0936226385 (Ms. Ngọc),&nbsp;<span style=\"color: rgb(38, 38, 38); font-family: arial, sans-serif; font-size: 13px; line-height: 16px;\">0904719186 (Mr. Hậu)</span><br  />Các Phòng GD&amp;ĐT, Sở GD&amp;ĐT có thể đăng ký tìm hiểu, tổ chức hội thảo, tập huấn, triển khai NukeViet trực tiếp tại đây: <a href=\"http://edu.nukeviet.vn/dangky.html\" target=\"_blank\">http://edu.nukeviet.vn/dangky.html</a><br  /><br  /><span style=\"font-size:16px;\"><strong>Tìm hiểu về phương thức chuyển đổi các hệ thống website cổng thông tin sang NukeViet theo mô hình tích hợp liên thông từ trưởng, lên Phòng, Sở GD&amp;ĐT:</strong></span><br  /><br  />Đối với các Phòng, Sở GD&amp;ĐT, trường Nầm non, tiểu học, THCS, THPT... chưa có website, Liên minh phần mềm nguồn mở giáo dục NukeViet sẽ hỗ trợ triển khai NukeViet theo mô hình cổng thông tin liên cấp như quy định tại <a href=\"http://vinades.vn/vi/download/van-ban-luat/Thong-tu-quy-dinh-ve-ve-to-chuc-hoat-dong-su-dung-thu-dien-tu/\" target=\"_blank\">thông tư số <strong>53/2012/TT-BGDĐT</strong> của Bộ GD&amp;ĐT</a> ban hành ngày 20-12-2012 quy định về quy định về về tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử tại sở giáo dục và đào tạo, phòng giáo dục và đào tạo và các cơ sở GDMN, GDPT và GDTX.<br  /><br  />Trường hợp các đơn vị có website và đang sử dụng NukeViet theo dạng rời rạc thì việc chuyển đổi và tích hợp các website NukeViet rời rạc vào NukeViet Edu Gate của Phòng và Sở có thể thực hiện dễ dàng và giữ nguyên toàn bộ dữ liệu.<br  /><br  />Trường hợp các đơn vị có website và nhưng không sử dụng NukeViet cũng có thể chuyển đổi sang sử dụng NukeViet để hợp nhất vào hệ thống cổng thông tin giáo dục cấp Phòng, Sở. Tuy nhiên mức độ và tỉ lệ dữ liệu được chuyển đổi thành công sẽ phụ thuộc vào tình hình thực tế của từng website.</div></div>', '', 2, 0, 1, 1, 1, 0), 
(18, '', '', '<p dir=\"ltr\" style=\"text-align: justify;\">Trải qua hơn 10 năm phát triển, từ một mã nguồn chỉ mang tính cá nhân, NukeViet đã phát triển thành công theo hướng cộng đồng. Năm 2010, NukeViet 3 ra đời đánh dấu một mốc lớn trong quá trình đi lên của NukeViet, phát triển theo hướng chuyên nghiệp với sự hậu thuẫn của Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC). NukeViet 3 đã và được sử dụng rộng rãi trong cộng đồng, từ các cổng thông tin tổ chức, hệ thống giáo dục, cho đến các website cá nhân, thương mại, mang lại các trải nghiệm vượt trội của mã nguồn thương hiệu Việt so với các mã nguồn nổi tiếng khác trên thế giới.<br  /><br  />Năm 2016, NukeViet 4 ra đời được xem là một cuộc cách mạng lớn trong chuỗi sự kiện phát triển NukeViet, cũng như xu thế công nghệ hiện tại. Hệ thống gần như được đổi mới hoàn toàn từ nhân hệ thống đến giao diện, nâng cao đáng kể hiệu suất và trải nghiệm người dùng.<br  /><br  /><span style=\"line-height: 1.6;\"><strong>Dưới đây là một số thay đổi của NukeViet 4.</strong></span><br  /><strong><span style=\"line-height: 1.6;\">Các thay đổi từ nhân hệ thống:</span></strong></p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Các công nghệ mới được áp dụng.</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sử dụng composer để quản lý các thư viện PHP được cài vào hệ thống.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Từng bước áp dụng &nbsp;các tiêu chuẩn viết code PHP theo khuyến nghị của <a href=\"http://www.php-fig.org/psr/\">http://www.php-fig.org/psr/</a></p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sử dụng PDO để thay cho extension MySQL.</p>		</li>	</ul>	</li></ul><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Tăng cường khả năng bảo mật</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sau khi các chuyên giả bảo mật của HP gửi đánh giá, chúng tôi đã tối ưu NukeViet 4.0 để hệ thống an toàn hơn.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Mã hóa các mật khẩu lưu trữ trong hệ thống: Các mật khẩu như FTP, SMTP,... đã được mã hóa, bảo mật thông tin người dùng.</p>		</li>	</ul>	</li></ul><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Tối ưu SEO:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">SEO được xem là một trong những ưu tiên hàng đầu được phát triển trong phiên bản này. NukeViet 4 tập trung tối ưu hóa SEO Onpage mạnh mẽ. Các công cụ hỗ trợ SEO được tập hợp lại qua module “Công cụ SEO”. Các chức năng được thêm mới:</p>		<ul>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Loại bỏ tên module khỏi URL khi không dùng đa ngôn ngữ</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Cho phép đổi đường dẫn module</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng xác thực Google+ (Bản quyền tác giả)</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng ping đến các công cụ tìm kiếm: Submit url mới đến google để việc hiển thị bài viết mới lên kết quả tìm kiếm nhanh chóng hơn.</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Hỗ trợ Meta OG của facebook</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Hỗ trợ chèn Meta GEO qua Cấu hình Meta-Tags</p>			</li>		</ul>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cùng với đó, các module cũng được tối ưu hóa bằng các form hỗ trợ khai báo tiêu đề, mô tả (description), từ khóa (keywods) cho từng khu vực, từng trang. &nbsp;</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Với sự hỗ trợ tối đa này, người quản trị (admin) có thể tùy biến lại website theo phong cách SEO riêng biệt.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Thay đổi giao diện, sử dụng giao diện tuỳ biến</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Giao diện trong NukeViet 4 được làm mới, tương thích với nhiều màn hình hơn.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sử dụng thư viện bootstrap để việc phát triển giao diện thống nhất và dễ dàng hơn.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Hệ thống nhận thông báo:&nbsp;</strong><span style=\"line-height: 1.6;\">Có thể gọi đây là một tiện ích nhỏ, song nó rất hữu dụng để admin tương tác với hệ thống một cách nhanh chóng. Admin có thể nhận thông báo từ hệ thống (hoặc từ module) khi có sự kiện nào đó.</span></p>	</li></ul><p dir=\"ltr\" style=\"text-align: justify; margin-left: 40px;\"><strong>Ví dụ:</strong> Khi có khách gửi liên hệ (qua module contact) đến thì hệ thống xuất hiện biểu tượng thông báo “Có liên hệ mới” ở góc phải, Admin sẽ nhận được ngay lập tức thông báo khi người dùng đang ở Admin control panel (ACP).</p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Thay đổi cơ chế quản lý block:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Nhận thấy việc hiển thị block ở lightbox trong NukeViet 3 dẫn đến một số bất tiện trong quá trình quản lý, NukeViet 4 đã thay thế cách hiển thị này ở dạng cửa sổ popup. Dễ nhận thấy sự thay đổi này khi admin thêm (hoặc sửa) một block nào đó.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">“Cấu hình hiển thị block trên các thiết bị” cũng được đưa vào phần cấu hình block, admin có thể tùy chọn cho phép block hiển thị trên các thiết bị nào (tất cả thiết bị, thiết bị di động, máy tính bảng, thiết bị khác).<span style=\"line-height: 1.6;\">&nbsp;</span></p>		</li>	</ul>	</li></ul><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Thêm ngôn ngữ tiếng Pháp:</strong> website cài đặt mới có sẵn 3 ngôn ngữ mặc định là Việt, Anh và Pháp.</p>	</li></ul><p dir=\"ltr\" style=\"text-align: justify;\"><strong>Các thay đổi của module:</strong></p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module menu:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Phương án quản lý menu được thay đổi hướng tới việc quản lý menu nhanh chóng, tiện lợi nhất cho admin. Admin có thể nạp nhanh menu theo các tùy chọn mà hệ thống cung cấp.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Mẫu menu cũng được thay đổi, đa dạng và hiển thị tốt với các giao diện hiện đại.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module contact (Liên hệ):</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Bổ sung các trường thông tin về bộ phận (Điện thoại, fax, email, các trường liên hệ khác,...).</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Admin có thể trả lời khách nhiều lần, hệ thống lưu lại lịch sử trao đổi đó.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module users (Tài khoản):</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thay thế OpenID bằng thư viện OAuth - hỗ trợ tích hợp đăng nhập qua tài khoản mạng xã hội</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cho phép đăng nhập 1 lần tài khoản người dùng NukeViet với Alfresco, Zimbra, Moodle, Koha</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng tùy biến trường dữ liệu thành viên</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng phân quyền sử dụng module users</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm cấu hình: Số ký tự username, độ phức tạp mật khẩu, tạo mật khảu ngẫu nhiên,....</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cho phép sử dụng tên truy cập, hoặc email để đăng nhập</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module about:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Module about ở NukeViet 3 được đổi tên thành module page</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm các cấu hình hỗ trợ SEO: Ảnh minh họa, chú thích ảnh minh họa, mô tả, từ khóa cho bài viết, hiển thị các công cụ tương tác với các mạng xã hội.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm RSS</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cấu hình phương án hiển thị các bài viết trên trang chính</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module news (Tin tức):</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm phân quyền cho người quản lý module, đến từng chủ đề</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thay đổi phương án lọc từ khóa bài viết, lọc từ khóa theo các từ khóa đã có trong tags thay vì đọc từ từ điển.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Bổ sung các trạng thái bài viết</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm cấu hình mặc định hiển thị ảnh minh họa trên trang xem chi tiết bài viết</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm các công cụ tương tác với mạng xã &nbsp;hội.</p>		</li>	</ul>	</li></ul><p dir=\"ltr\" style=\"text-align: justify;\"><strong>Quản lý Bình luận</strong></p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\">Các bình luận của các module sẽ được tích hợp quản lý tập trung để cấu hình.</p>	</li>	<li dir=\"ltr\" style=\"text-align: justify;\">Khi xây dựng mới module, Chỉ cần nhúng 1 đoạn mã vào. Tránh phải việc copy mã code gây khó khăn cho bảo trì.</li></ul>', '', 2, 0, 1, 1, 1, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_logs`
--

DROP TABLE IF EXISTS `ytt_vi_news_logs`;
CREATE TABLE `ytt_vi_news_logs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_rows`
--

DROP TABLE IF EXISTS `ytt_vi_news_rows`;
CREATE TABLE `ytt_vi_news_rows` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `edittime` (`edittime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`),
  KEY `instant_active` (`instant_active`),
  KEY `instant_creatauto` (`instant_creatauto`)
) ENGINE=MyISAM  AUTO_INCREMENT=19  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_news_rows`
--

INSERT INTO `ytt_vi_news_rows` VALUES
(1, 2, '2', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1493313927, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0), 
(6, 10, '10', 0, 1, 'Nguyễn Thế Hùng', 2, 1453192444, 1493313940, 1, 1453192440, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 14, 0, 0, 0, 0, '', 0), 
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1453192400, 1453192400, 1, 1453192400, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-PHP', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0), 
(8, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391089, 1445394192, 1, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet', 'Tuyen-dung-chuyen-vien-do-hoa', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0), 
(9, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391090, 1445394193, 1, 1445391060, 0, 2, 'Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về front-end (HTML/CSS/JS)?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0), 
(10, 11, '11', 0, 1, '', 0, 1322685920, 1493313982, 1, 1322685900, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'ma-nguon-mo-nukeviet-gianh-giai-ba-nhan-tai-dat-viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 0, 1, 0, 0, 0, 0, '', 0), 
(11, 11, '11', 0, 1, '', 0, 1445309676, 1493314076, 1, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 0, 3, 1, 5, 1, 0, '', 0), 
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Công ty cổ phần phát triển nguồn mở Việt Nam là đơn vị chủ quản của phần mềm mã nguồn mở NukeViet - một mã nguồn được tin dùng trong cơ quan nhà nước, đặc biệt là ngành giáo dục. Chúng tôi cần tuyển 05 nhân viên kinh doanh cho lĩnh vực này.', 'tuyen-dung-nvkd.png', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0), 
(14, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1493314050, 1, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0), 
(15, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', 'Công ty cổ phần phát triển nguồn mở Việt Nam tạo cơ hội việc làm và học việc miễn phí cho những ứng viên có đam mê thiết kế web, lập trình PHP… được học tập và rèn luyện cùng đội ngũ lập trình viên phát triển NukeViet.', 'hoc-viec-tai-cong-ty-vinades.jpg', '', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0), 
(16, 2, '2', 0, 1, '', 0, 1445391182, 1493314066, 1, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0), 
(17, 2, '2', 0, 1, '', 0, 1445391217, 1493314039, 1, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0), 
(18, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 0, 7, 0, 0, 0, 0, '', 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_sources`
--

DROP TABLE IF EXISTS `ytt_vi_news_sources`;
CREATE TABLE `ytt_vi_news_sources` (
  `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`sourceid`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM  AUTO_INCREMENT=6  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_news_sources`
--

INSERT INTO `ytt_vi_news_sources` VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177), 
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787), 
(3, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 3, 1322685396, 1322685396), 
(4, 'Bộ Thông tin và Truyền thông', 'http://http://mic.gov.vn', '', 4, 1445309676, 1445309676);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_tags`
--

DROP TABLE IF EXISTS `ytt_vi_news_tags`;
CREATE TABLE `ytt_vi_news_tags` (
  `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text  COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  AUTO_INCREMENT=43  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_news_tags`
--

INSERT INTO `ytt_vi_news_tags` VALUES
(1, 0, 'nguồn-mở', '', '', 'nguồn mở'), 
(2, 0, 'quen-thuộc', '', '', 'quen thuộc'), 
(3, 0, 'cộng-đồng', '', '', 'cộng đồng'), 
(4, 0, 'việt-nam', '', '', 'việt nam'), 
(5, 0, 'hoạt-động', '', '', 'hoạt động'), 
(6, 0, 'tin-tức', '', '', 'tin tức'), 
(7, 1, 'thương-mại-điện', '', '', 'thương mại điện'), 
(8, 0, 'điện-tử', '', '', 'điện tử'), 
(9, 13, 'nukeviet', '', '', 'nukeviet'), 
(10, 8, 'vinades', '', '', 'vinades'), 
(11, 3, 'lập-trình-viên', '', '', 'lập trình viên'), 
(12, 3, 'chuyên-viên-đồ-họa', '', '', 'chuyên viên đồ họa'), 
(13, 3, 'php', '', '', 'php'), 
(14, 2, 'mysql', '', '', 'mysql'), 
(15, 1, 'nhân-tài-đất-việt-2011', '', '', 'nhân tài đất việt 2011'), 
(16, 9, 'mã-nguồn-mở', '', '', 'mã nguồn mở'), 
(17, 2, 'nukeviet4', '', '', 'nukeviet4'), 
(18, 1, 'mail', '', '', 'mail'), 
(19, 1, 'fpt', '', '', 'fpt'), 
(20, 1, 'smtp', '', '', 'smtp'), 
(21, 1, 'bootstrap', '', '', 'bootstrap'), 
(22, 1, 'block', '', '', 'block'), 
(23, 1, 'modules', '', '', 'modules'), 
(24, 2, 'banner', '', '', 'banner'), 
(25, 1, 'liên-kết', '', '', 'liên kết'), 
(26, 2, 'hosting', '', '', 'hosting'), 
(27, 1, 'hỗ-trợ', '', '', 'hỗ trợ'), 
(28, 1, 'hợp-tác', '', '', 'hợp tác'), 
(29, 1, 'tốc-độ', '', '', 'tốc độ'), 
(30, 2, 'website', '', '', 'website'), 
(31, 1, 'bảo-mật', '', '', 'bảo mật'), 
(32, 4, 'giáo-dục', '', '', 'giáo dục'), 
(33, 1, 'edu-gate', '', '', 'edu gate'), 
(34, 2, 'lập-trình', '', '', 'lập trình'), 
(35, 1, 'logo', '', '', 'logo'), 
(36, 1, 'code', '', '', 'code'), 
(37, 1, 'thực-tập', '', '', 'thực tập'), 
(38, 1, 'kinh-doanh', '', '', 'kinh doanh'), 
(39, 1, 'nhân-viên', '', '', 'nhân viên'), 
(40, 1, 'bộ-gd&đt', '', '', 'Bộ GD&ĐT'), 
(41, 1, 'module', '', '', 'module'), 
(42, 1, 'php-nuke', '', '', 'php-nuke');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_tags_id`
--

DROP TABLE IF EXISTS `ytt_vi_news_tags_id`;
CREATE TABLE `ytt_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65)  COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `id_tid` (`id`,`tid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_news_tags_id`
--

INSERT INTO `ytt_vi_news_tags_id` VALUES
(1, 7, 'thương mại điện'), 
(1, 9, 'nukeviet'), 
(7, 10, 'vinades'), 
(7, 9, 'nukeviet'), 
(7, 11, 'lập trình viên'), 
(7, 12, 'chuyên viên đồ họa'), 
(7, 13, 'php'), 
(7, 14, 'mysql'), 
(10, 15, 'Nhân tài đất Việt 2011'), 
(10, 16, 'mã nguồn mở'), 
(10, 9, 'nukeviet'), 
(18, 17, 'nukeviet4'), 
(18, 9, 'nukeviet'), 
(18, 10, 'vinades'), 
(18, 13, 'php'), 
(18, 14, 'mysql'), 
(18, 18, 'mail'), 
(18, 19, 'fpt'), 
(18, 20, 'smtp'), 
(18, 21, 'bootstrap'), 
(18, 22, 'block'), 
(18, 23, 'modules'), 
(18, 16, 'mã nguồn mở'), 
(6, 16, 'mã nguồn mở'), 
(6, 9, 'nukeviet'), 
(6, 17, 'nukeviet4'), 
(6, 10, 'vinades'), 
(6, 24, 'banner'), 
(6, 25, 'liên kết'), 
(6, 26, 'hosting'), 
(6, 27, 'hỗ trợ'), 
(6, 28, 'hợp tác'), 
(17, 9, 'nukeviet'), 
(17, 32, 'giáo dục'), 
(17, 33, 'edu gate'), 
(15, 16, 'mã nguồn mở'), 
(15, 10, 'vinades'), 
(15, 9, 'nukeviet'), 
(15, 11, 'lập trình viên'), 
(15, 12, 'chuyên viên đồ họa'), 
(16, 9, 'nukeviet'), 
(16, 16, 'mã nguồn mở'), 
(16, 32, 'giáo dục'), 
(8, 10, 'vinades'), 
(8, 34, 'lập trình'), 
(8, 35, 'logo'), 
(8, 24, 'banner'), 
(8, 30, 'website'), 
(8, 36, 'code'), 
(8, 13, 'php'), 
(9, 16, 'mã nguồn mở'), 
(9, 10, 'vinades'), 
(9, 34, 'lập trình'), 
(9, 9, 'nukeviet'), 
(14, 37, 'thực tập'), 
(14, 10, 'vinades'), 
(14, 12, 'chuyên viên đồ họa'), 
(14, 11, 'lập trình viên'), 
(14, 9, 'nukeviet'), 
(14, 16, 'mã nguồn mở'), 
(12, 38, 'kinh doanh'), 
(12, 9, 'nukeviet'), 
(12, 32, 'giáo dục'), 
(12, 39, 'nhân viên'), 
(11, 16, 'mã nguồn mở'), 
(11, 9, 'nukeviet'), 
(11, 40, 'Bộ GD&ĐT'), 
(11, 32, 'giáo dục'), 
(1, 41, 'module'), 
(1, 16, 'mã nguồn mở'), 
(1, 42, 'php-nuke');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_tmp`
--

DROP TABLE IF EXISTS `ytt_vi_news_tmp`;
CREATE TABLE `ytt_vi_news_tmp` (
  `id` mediumint(8) unsigned NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `time_edit` int(11) NOT NULL,
  `time_late` int(11) NOT NULL,
  `ip` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_news_tmp`
--

INSERT INTO `ytt_vi_news_tmp` VALUES
(18, 1, 1493313872, 1493313872, '');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_news_topics`
--

DROP TABLE IF EXISTS `ytt_vi_news_topics`;
CREATE TABLE `ytt_vi_news_topics` (
  `topicid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text  COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`topicid`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_page`
--

DROP TABLE IF EXISTS `ytt_vi_page`;
CREATE TABLE `ytt_vi_page` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text  COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text  COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_page_config`
--

DROP TABLE IF EXISTS `ytt_vi_page_config`;
CREATE TABLE `ytt_vi_page_config` (
  `config_name` varchar(30)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_page_config`
--

INSERT INTO `ytt_vi_page_config` VALUES
('viewtype', '0'), 
('facebookapi', ''), 
('per_page', '20'), 
('news_first', '0'), 
('related_articles', '5'), 
('copy_page', '0');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_referer_stats`
--

DROP TABLE IF EXISTS `ytt_vi_referer_stats`;
CREATE TABLE `ytt_vi_referer_stats` (
  `host` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `host` (`host`),
  KEY `total` (`total`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_searchkeys`
--

DROP TABLE IF EXISTS `ytt_vi_searchkeys`;
CREATE TABLE `ytt_vi_searchkeys` (
  `id` varchar(32)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `id` (`id`),
  KEY `skey` (`skey`),
  KEY `search_engine` (`search_engine`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_siteterms`
--

DROP TABLE IF EXISTS `ytt_vi_siteterms`;
CREATE TABLE `ytt_vi_siteterms` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text  COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text  COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  AUTO_INCREMENT=4  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_siteterms`
--

INSERT INTO `ytt_vi_siteterms` VALUES
(1, 'Chính sách bảo mật (Quyền riêng tư)', 'privacy', '', '', 0, 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn', '<strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Thu thập thông tin</a><br /> <a href=\"#2\">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href=\"#3\">Điều 3: Sử dụng thông tin </a><br /> <a href=\"#4\">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href=\"#5\">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href=\"#6\">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều 1: Thu thập thông tin</h2>  <h3 style=\"text-align: justify;\">1.1. Thu thập tự động:</h3>  <div style=\"text-align: justify;\">Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3 style=\"text-align: justify;\">1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div style=\"text-align: justify;\">Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3 style=\"text-align: justify;\">1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p style=\"text-align: justify;\">Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p style=\"text-align: justify;\">Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3 style=\"text-align: justify;\">1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p style=\"text-align: justify;\">Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div style=\"text-align: justify;\">Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href=\"/users/lostpass/\">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Điều 3: Sử dụng thông tin</h2>  <p style=\"text-align: justify;\">Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div style=\"text-align: justify;\">- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div style=\"text-align: justify;\">- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div style=\"text-align: justify;\">- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div style=\"text-align: justify;\">- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div style=\"text-align: justify;\">- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div style=\"text-align: justify;\">- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div style=\"text-align: justify;\">- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div style=\"text-align: justify;\">Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"5\" name=\"5\"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p style=\"text-align: justify;\">Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"6\" name=\"6\"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p style=\"text-align: justify;\">Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <p style=\"text-align: right;\">Chính sách bảo mật mặc định này được xây dựng cho <a href=\"http://nukeviet.vn\" target=\"_blank\">NukeViet CMS</a>, được tham khảo từ website <a href=\"http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/\">webnhanh.vn</a></p>', '', 0, '4', '', 0, 1, 1, 1493308468, 1493308468, 1, 3, 0), 
(2, 'Điều khoản và điều kiện sử dụng', 'terms-and-conditions', '', '', 0, 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.', '<div style=\"text-align: justify;\">Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href=\"/contact/\">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href=\"/siteterms/terms-and-conditions.html\">Điều khoản và điều kiện</a> sử dụng cũng như <a href=\"/siteterms/privacy.html\">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href=\"#2\">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href=\"#3\">Điều 3: Sử dụng thương hiệu</a><br /> <a href=\"#4\">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href=\"#5\">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href=\"#6\">Điều 6: Từ chối bảo đảm</a><br /> <a href=\"#7\">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href=\"#8\">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p style=\"text-align: justify;\">- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\" target=\"_blank\">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href=\"http://www.nukeviet.vn\" target=\"_blank\">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href=\"http://nukeviet.vn\" target=\"_blank\">http://nukeviet.vn</a>.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p style=\"text-align: justify;\">- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Sử dụng thương hiệu</h2>  <p style=\"text-align: justify;\">- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Các hành vi bị nghiêm cấm</h2>  <p style=\"text-align: justify;\">Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"5\" name=\"5\"></a>Các đường liên kết đến các website khác</h2>  <p style=\"text-align: justify;\">- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"6\" name=\"6\"></a>Từ chối bảo đảm</h2>  <p style=\"text-align: justify;\">NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"7\" name=\"7\"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p style=\"text-align: justify;\">- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"8\" name=\"8\"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div style=\"text-align: justify;\">Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>', '', 0, '4', '', 0, 2, 1, 1493308468, 1493308468, 1, 1, 0), 
(3, 'FAQ&#x002F;Các câu hỏi thường gặp', 'FAQ-Cac-cau-hoi-thuong-gap', '', '', 0, '', 'FAQ/Các câu hỏi thường gặp', 'câu hỏi', 1, '4', '', 0, 3, 1, 1493347648, 1493347648, 1, 0, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_siteterms_config`
--

DROP TABLE IF EXISTS `ytt_vi_siteterms_config`;
CREATE TABLE `ytt_vi_siteterms_config` (
  `config_name` varchar(30)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_siteterms_config`
--

INSERT INTO `ytt_vi_siteterms_config` VALUES
('viewtype', '0'), 
('facebookapi', ''), 
('per_page', '20'), 
('news_first', '0'), 
('related_articles', '5'), 
('copy_page', '0');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_slider_1`
--

DROP TABLE IF EXISTS `ytt_vi_slider_1`;
CREATE TABLE `ytt_vi_slider_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `admin_id` (`admin_id`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`)
) ENGINE=MyISAM  AUTO_INCREMENT=3  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_slider_1`
--

INSERT INTO `ytt_vi_slider_1` VALUES
(1, 1, '1', 1, 1493351704, 1493351911, 1, 1493351704, 0, 2, 'Công nghệ Thông tin', '', 'Công nghệ Thông tin', '2017_04/it.jpg', 1, 0), 
(2, 1, '1', 1, 1493352100, 1493352100, 1, 1493352100, 0, 2, 'Thương mại điện tử', '', 'Thương mại điện tử', '2017_04/iframe1.png', 1, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_slider_admins`
--

DROP TABLE IF EXISTS `ytt_vi_slider_admins`;
CREATE TABLE `ytt_vi_slider_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`,`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_slider_cat`
--

DROP TABLE IF EXISTS `ytt_vi_slider_cat`;
CREATE TABLE `ytt_vi_slider_cat` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admins` text  COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`catid`),
  UNIQUE KEY `alias` (`alias`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_slider_cat`
--

INSERT INTO `ytt_vi_slider_cat` VALUES
(1, 0, 'Công nghệ Thông tin', 'Cong-nghe-Thong-tin', 1, 1, 0, 'viewcat_page_new', 0, '', 1, '', 1493351621, 1493351621, '6');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_slider_config_post`
--

DROP TABLE IF EXISTS `ytt_vi_slider_config_post`;
CREATE TABLE `ytt_vi_slider_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_slider_config_post`
--

INSERT INTO `ytt_vi_slider_config_post` VALUES
(1, 0, 0, 0, 0), 
(2, 0, 0, 0, 0), 
(3, 0, 0, 0, 0), 
(4, 0, 0, 0, 0), 
(7, 0, 0, 0, 0), 
(5, 0, 0, 0, 0), 
(10, 0, 0, 0, 0), 
(11, 0, 0, 0, 0), 
(12, 0, 0, 0, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_slider_rows`
--

DROP TABLE IF EXISTS `ytt_vi_slider_rows`;
CREATE TABLE `ytt_vi_slider_rows` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(250)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `admin_id` (`admin_id`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`)
) ENGINE=MyISAM  AUTO_INCREMENT=3  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_slider_rows`
--

INSERT INTO `ytt_vi_slider_rows` VALUES
(1, 1, '1', 1, 1493351704, 1493351911, 1, 1493351704, 0, 2, 'Công nghệ Thông tin', '', 'Công nghệ Thông tin', '2017_04/it.jpg', 1, 0), 
(2, 1, '1', 1, 1493352100, 1493352100, 1, 1493352100, 0, 2, 'Thương mại điện tử', '', 'Thương mại điện tử', '2017_04/iframe1.png', 1, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_video_clip_clip`
--

DROP TABLE IF EXISTS `ytt_vi_video_clip_clip`;
CREATE TABLE `ytt_vi_video_clip_clip` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodytext` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `internalpath` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `externalpath` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_view` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `comm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `showcover` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Hiển thị/Ẩn ảnh mình họa làm ảnh bìa video',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_video_clip_clip`
--

INSERT INTO `ytt_vi_video_clip_clip` VALUES
(1, 1, 'asdsad', 'asdsad', 'fdsfs', 'fsfds', '', '', 'uploads/video-clip/video/nem_dep.mp4', '', '', 0, 1, 1, 1493389853);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_video_clip_comm`
--

DROP TABLE IF EXISTS `ytt_vi_video_clip_comm`;
CREATE TABLE `ytt_vi_video_clip_comm` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `posttime` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `broken` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ischecked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `posttime` (`userid`,`posttime`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_video_clip_hit`
--

DROP TABLE IF EXISTS `ytt_vi_video_clip_hit`;
CREATE TABLE `ytt_vi_video_clip_hit` (
  `cid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `likehit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `unlikehit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `comment` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `broken` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `view` (`view`),
  KEY `likehit` (`likehit`),
  KEY `unlikehit` (`unlikehit`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_video_clip_hit`
--

INSERT INTO `ytt_vi_video_clip_hit` VALUES
(1, 2, 1, 0, 0, 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_video_clip_topic`
--

DROP TABLE IF EXISTS `ytt_vi_video_clip_topic`;
CREATE TABLE `ytt_vi_video_clip_topic` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(8) unsigned NOT NULL,
  `title` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `img` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `keywords` mediumtext  COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_video_clip_topic`
--

INSERT INTO `ytt_vi_video_clip_topic` VALUES
(1, 0, 'test 1', 'test-1', 'test 1', 1, '', 1, 'test 1');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_voting`
--

DROP TABLE IF EXISTS `ytt_vi_voting`;
CREATE TABLE `ytt_vi_voting` (
  `vid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(250)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT '1',
  `active_captcha` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  UNIQUE KEY `question` (`question`)
) ENGINE=MyISAM  AUTO_INCREMENT=4  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_voting`
--

INSERT INTO `ytt_vi_voting` VALUES
(2, 'Bạn biết gì về NukeViet 4?', '', 1, 0, 1, '6', 1275318563, 0, 1), 
(3, 'Lợi ích của phần mềm nguồn mở là gì?', '', 1, 0, 1, '6', 1275318563, 0, 1);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_voting_rows`
--

DROP TABLE IF EXISTS `ytt_vi_voting_rows`;
CREATE TABLE `ytt_vi_voting_rows` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vid` smallint(5) unsigned NOT NULL,
  `title` varchar(245)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `vid` (`vid`,`title`)
) ENGINE=MyISAM  AUTO_INCREMENT=14  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_voting_rows`
--

INSERT INTO `ytt_vi_voting_rows` VALUES
(5, 2, 'Một bộ sourcecode cho web hoàn toàn mới.', '', 0), 
(6, 2, 'Mã nguồn mở, sử dụng miễn phí.', '', 0), 
(7, 2, 'Sử dụng HTML5, CSS3 và hỗ trợ Ajax', '', 0), 
(8, 2, 'Tất cả các ý kiến trên', '', 0), 
(9, 3, 'Liên tục được cải tiến, sửa đổi bởi cả thế giới.', '', 0), 
(10, 3, 'Được sử dụng miễn phí không mất tiền.', '', 0), 
(11, 3, 'Được tự do khám phá, sửa đổi theo ý thích.', '', 0), 
(12, 3, 'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.', '', 0), 
(13, 3, 'Tất cả các ý kiến trên', '', 0);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_weblinks_cat`
--

DROP TABLE IF EXISTS `ytt_vi_weblinks_cat`;
CREATE TABLE `ytt_vi_weblinks_cat` (
  `catid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `catimage` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text  COLLATE utf8mb4_unicode_ci,
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `keywords` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`catid`),
  UNIQUE KEY `parentid` (`parentid`,`title`)
) ENGINE=MyISAM  AUTO_INCREMENT=2  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_weblinks_cat`
--

INSERT INTO `ytt_vi_weblinks_cat` VALUES
(1, 0, 'chu de 1', '', 'chu-de-1', 'chu de 1', 1, 1, 3, 'câu hỏi 2', 1493388632, 1493388632);


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_weblinks_config`
--

DROP TABLE IF EXISTS `ytt_vi_weblinks_config`;
CREATE TABLE `ytt_vi_weblinks_config` (
  `name` varchar(20)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_weblinks_config`
--

INSERT INTO `ytt_vi_weblinks_config` VALUES
('intro', ''), 
('numcat', '2'), 
('showsub', '1'), 
('numsub', '2'), 
('numinsub', '1'), 
('showcatimage', '0'), 
('per_page', '20'), 
('numsubcat', '2'), 
('shownumsubcat', '1'), 
('sort', 'asc'), 
('showlinkimage', '1'), 
('showdes', '1'), 
('sortoption', 'byid'), 
('imgwidth', '100'), 
('imgheight', '74'), 
('timeout', '1');


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_weblinks_report`
--

DROP TABLE IF EXISTS `ytt_vi_weblinks_report`;
CREATE TABLE `ytt_vi_weblinks_report` (
  `id` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `report_time` int(11) NOT NULL,
  `report_userid` int(11) NOT NULL,
  `report_ip` varchar(16)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_browse_key` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_browse_name` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_os_key` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_os_name` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_note` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;


-- ---------------------------------------


--
-- Table structure for table `ytt_vi_weblinks_rows`
--

DROP TABLE IF EXISTS `ytt_vi_weblinks_rows`;
CREATE TABLE `ytt_vi_weblinks_rows` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(9) NOT NULL,
  `author` varchar(100)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1|1',
  `title` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlimg` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255)  COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text  COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM  AUTO_INCREMENT=3  DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytt_vi_weblinks_rows`
--

INSERT INTO `ytt_vi_weblinks_rows` VALUES
(1, 1, '1|1', 'testing', 'testing', 'http://1232.com', '', '0', '0', '', 'dsfsdfds', 1493388650, 1493388650, 1, 1), 
(2, 1, '1|1', 'testing 2', 'testing-2', 'http://123123.com', '', '0', '0', '', '23w', 1493388666, 1493388666, 0, 1);