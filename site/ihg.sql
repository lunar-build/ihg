-- MySQL dump 10.16  Distrib 10.2.31-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ihg_local_development
-- ------------------------------------------------------
-- Server version	10.2.31-MariaDB-1:10.2.31+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_2_commentmeta`
--

DROP TABLE IF EXISTS `wp_2_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_2_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_2_commentmeta`
--

LOCK TABLES `wp_2_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_2_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_2_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_2_comments`
--

DROP TABLE IF EXISTS `wp_2_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_2_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_2_comments`
--

LOCK TABLES `wp_2_comments` WRITE;
/*!40000 ALTER TABLE `wp_2_comments` DISABLE KEYS */;
INSERT INTO `wp_2_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','http://ihg.local/','','2020-02-20 12:25:13','2020-02-20 12:25:13','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_2_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_2_links`
--

DROP TABLE IF EXISTS `wp_2_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_2_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_2_links`
--

LOCK TABLES `wp_2_links` WRITE;
/*!40000 ALTER TABLE `wp_2_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_2_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_2_options`
--

DROP TABLE IF EXISTS `wp_2_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_2_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_2_options`
--

LOCK TABLES `wp_2_options` WRITE;
/*!40000 ALTER TABLE `wp_2_options` DISABLE KEYS */;
INSERT INTO `wp_2_options` VALUES (1,'siteurl','http://ihg.local/crowne-plaza','yes'),(2,'home','http://ihg.local/crowne-plaza','yes'),(3,'blogname','Crowne Plaza','yes'),(4,'blogdescription','Just another ihg.local Sites site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','admin@ihg.local','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),(29,'rewrite_rules','a:159:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"events/?$\";s:26:\"index.php?post_type=events\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=events&paged=$matches[1]\";s:9:\"images/?$\";s:26:\"index.php?post_type=images\";s:39:\"images/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=images&feed=$matches[1]\";s:34:\"images/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=images&feed=$matches[1]\";s:26:\"images/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=images&paged=$matches[1]\";s:12:\"resources/?$\";s:29:\"index.php?post_type=resources\";s:42:\"resources/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=resources&feed=$matches[1]\";s:37:\"resources/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=resources&feed=$matches[1]\";s:29:\"resources/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=resources&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:39:\"index.php?events=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:33:\"index.php?events=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?events=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"images/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"images/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"images/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"images/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"images/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"images/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"images/([^/]+)/embed/?$\";s:39:\"index.php?images=$matches[1]&embed=true\";s:27:\"images/([^/]+)/trackback/?$\";s:33:\"index.php?images=$matches[1]&tb=1\";s:47:\"images/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?images=$matches[1]&feed=$matches[2]\";s:42:\"images/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?images=$matches[1]&feed=$matches[2]\";s:35:\"images/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?images=$matches[1]&paged=$matches[2]\";s:42:\"images/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?images=$matches[1]&cpage=$matches[2]\";s:31:\"images/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?images=$matches[1]&page=$matches[2]\";s:23:\"images/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"images/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"images/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"images/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"images/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"images/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"resources/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"resources/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"resources/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"resources/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"resources/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"resources/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"resources/([^/]+)/embed/?$\";s:42:\"index.php?resources=$matches[1]&embed=true\";s:30:\"resources/([^/]+)/trackback/?$\";s:36:\"index.php?resources=$matches[1]&tb=1\";s:50:\"resources/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?resources=$matches[1]&feed=$matches[2]\";s:45:\"resources/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?resources=$matches[1]&feed=$matches[2]\";s:38:\"resources/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?resources=$matches[1]&paged=$matches[2]\";s:45:\"resources/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?resources=$matches[1]&cpage=$matches[2]\";s:34:\"resources/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?resources=$matches[1]&page=$matches[2]\";s:26:\"resources/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"resources/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"resources/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"resources/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"resources/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"resources/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:0:{}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','sage/resources','yes'),(41,'stylesheet','sage/resources','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','44719','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','page','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(81,'uninstall_plugins','a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','2','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'wp_page_for_privacy_policy','0','yes'),(92,'show_comments_cookies_opt_in','1','yes'),(93,'WPLANG','en_GB','yes'),(94,'wp_2_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(95,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(96,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(100,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:14:\"sidebar-footer\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(101,'acf_version','5.7.12','yes'),(102,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'cron','a:4:{i:1582298987;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1582375623;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582375624;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(112,'theme_mods_twentynineteen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1582202836;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),(123,'template_root','/themes','yes'),(124,'stylesheet_root','/themes','yes'),(125,'current_theme','Lunar Base Theme','yes'),(126,'theme_mods_sage/resources','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:18:\"primary_navigation\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes'),(127,'theme_switched','','yes'),(128,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),(129,'fresh_site','0','yes'),(130,'post_count','2','yes');
/*!40000 ALTER TABLE `wp_2_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_2_postmeta`
--

DROP TABLE IF EXISTS `wp_2_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_2_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_2_postmeta`
--

LOCK TABLES `wp_2_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_2_postmeta` DISABLE KEYS */;
INSERT INTO `wp_2_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,4,'_edit_lock','1582204047:1'),(3,5,'_edit_lock','1582208033:1'),(4,7,'_edit_lock','1582208068:1'),(5,8,'_edit_lock','1582208094:1'),(6,9,'_edit_lock','1582208101:1'),(7,10,'_edit_lock','1582208146:1'),(8,11,'_edit_lock','1582208171:1'),(9,12,'_edit_lock','1582208214:1'),(10,1,'_edit_lock','1582288271:1'),(11,13,'_edit_lock','1582208313:1'),(12,15,'_edit_lock','1582208469:1'),(13,16,'_edit_lock','1582208544:1'),(14,17,'_edit_lock','1582208575:1'),(15,21,'_edit_lock','1582208626:1'),(16,22,'_edit_lock','1582208720:1'),(17,23,'_edit_lock','1582209033:1'),(18,26,'_edit_lock','1582209114:1'),(19,29,'_edit_lock','1582209185:1'),(20,30,'_edit_lock','1582209187:1'),(21,31,'_edit_lock','1582209191:1'),(22,32,'_edit_lock','1582209196:1'),(23,33,'_edit_lock','1582209199:1'),(24,34,'_edit_lock','1582209218:1'),(25,35,'_edit_lock','1582209238:1'),(26,36,'_edit_lock','1582209282:1'),(27,37,'_edit_lock','1582209308:1'),(28,38,'_edit_lock','1582209363:1'),(29,39,'_edit_lock','1582209399:1'),(30,41,'_edit_lock','1582209414:1'),(31,42,'_edit_lock','1582209421:1'),(32,43,'_edit_lock','1582209425:1'),(33,44,'_edit_lock','1582209441:1'),(34,45,'_edit_lock','1582209442:1'),(35,48,'_edit_lock','1582209461:1'),(36,48,'_edit_last','1'),(37,48,'_wp_trash_meta_status','publish'),(38,48,'_wp_trash_meta_time','1582209614'),(39,48,'_wp_desired_post_slug','group_5e4e99b563c67'),(40,49,'_wp_trash_meta_status','publish'),(41,49,'_wp_trash_meta_time','1582209614'),(42,49,'_wp_desired_post_slug','field_5e4e9a3548bc2'),(43,54,'_edit_lock','1582209740:1'),(44,55,'_edit_lock','1582209757:1'),(45,56,'_edit_lock','1582209851:1'),(46,57,'_edit_lock','1582209867:1'),(47,58,'_edit_lock','1582209913:1'),(48,60,'_edit_lock','1582209958:1'),(49,61,'_edit_lock','1582209974:1'),(50,62,'_edit_lock','1582209997:1'),(51,64,'_edit_lock','1582210097:1'),(52,65,'_edit_lock','1582210265:1'),(53,66,'_edit_lock','1582210351:1'),(54,67,'_edit_lock','1582210367:1'),(55,68,'_edit_lock','1582210509:1'),(56,70,'_edit_lock','1582210567:1'),(57,72,'_edit_lock','1582210686:1'),(58,75,'_edit_lock','1582210742:1'),(59,76,'_edit_lock','1582211040:1'),(60,78,'_wp_attached_file','2020/02/IHG-Hosting-Architecture.png'),(61,78,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:36:\"2020/02/IHG-Hosting-Architecture.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"IHG-Hosting-Architecture-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"IHG-Hosting-Architecture-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"IHG-Hosting-Architecture-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:36:\"IHG-Hosting-Architecture-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium-small\";a:4:{s:4:\"file\";s:36:\"IHG-Hosting-Architecture-450x338.png\";s:5:\"width\";i:450;s:6:\"height\";i:338;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(62,80,'_edit_last','1'),(63,80,'image_field','78'),(64,80,'_image_field','field_image_image_field'),(65,80,'_edit_lock','1582279063:1'),(66,81,'_edit_lock','1582211335:1'),(67,82,'_edit_lock','1582211352:1'),(68,83,'_edit_lock','1582211371:1'),(69,86,'_edit_lock','1582211599:1'),(70,87,'_edit_lock','1582211788:1'),(71,88,'_menu_item_type','custom'),(72,88,'_menu_item_menu_item_parent','0'),(73,88,'_menu_item_object_id','88'),(74,88,'_menu_item_object','custom'),(75,88,'_menu_item_target',''),(76,88,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(77,88,'_menu_item_xfn',''),(78,88,'_menu_item_url','http://ihg.local/crowne-plaza/'),(79,88,'_menu_item_orphaned','1582211794'),(80,89,'_menu_item_type','post_type'),(81,89,'_menu_item_menu_item_parent','0'),(82,89,'_menu_item_object_id','2'),(83,89,'_menu_item_object','page'),(84,89,'_menu_item_target',''),(85,89,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(86,89,'_menu_item_xfn',''),(87,89,'_menu_item_url',''),(88,89,'_menu_item_orphaned','1582211794'),(89,90,'_menu_item_type','post_type_archive'),(90,90,'_menu_item_menu_item_parent','0'),(91,90,'_menu_item_object_id','-8'),(92,90,'_menu_item_object','images'),(93,90,'_menu_item_target',''),(94,90,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(95,90,'_menu_item_xfn',''),(96,90,'_menu_item_url',''),(97,90,'_menu_item_orphaned','1582211842'),(107,92,'_menu_item_type','post_type'),(108,92,'_menu_item_menu_item_parent','0'),(109,92,'_menu_item_object_id','2'),(110,92,'_menu_item_object','page'),(111,92,'_menu_item_target',''),(112,92,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(113,92,'_menu_item_xfn',''),(114,92,'_menu_item_url',''),(115,92,'_menu_item_orphaned','1582211901'),(116,93,'_menu_item_type','post_type_archive'),(117,93,'_menu_item_menu_item_parent','0'),(118,93,'_menu_item_object_id','-8'),(119,93,'_menu_item_object','images'),(120,93,'_menu_item_target',''),(121,93,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(122,93,'_menu_item_xfn',''),(123,93,'_menu_item_url',''),(125,94,'_edit_lock','1582288727:1'),(126,94,'_edit_last','1'),(127,94,'_wp_page_template','default'),(128,96,'_edit_last','1'),(129,96,'_wp_page_template','default'),(130,96,'_edit_lock','1582211860:1'),(131,98,'_menu_item_type','post_type'),(132,98,'_menu_item_menu_item_parent','0'),(133,98,'_menu_item_object_id','96'),(134,98,'_menu_item_object','page'),(135,98,'_menu_item_target',''),(136,98,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(137,98,'_menu_item_xfn',''),(138,98,'_menu_item_url',''),(140,99,'_menu_item_type','post_type'),(141,99,'_menu_item_menu_item_parent','0'),(142,99,'_menu_item_object_id','94'),(143,99,'_menu_item_object','page'),(144,99,'_menu_item_target',''),(145,99,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(146,99,'_menu_item_xfn',''),(147,99,'_menu_item_url',''),(149,100,'_edit_lock','1582279857:1'),(150,100,'_edit_last','1'),(151,101,'_wp_attached_file','2020/02/s_branding.png'),(152,101,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:220;s:6:\"height\";i:320;s:4:\"file\";s:22:\"2020/02/s_branding.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"s_branding-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"s_branding-206x300.png\";s:5:\"width\";i:206;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(153,100,'image_field','78'),(154,100,'_image_field','field_resources_image_field'),(155,100,'file_Field','101'),(156,100,'_file_Field','field_resources_file_field'),(157,102,'_edit_lock','1582283913:1'),(158,102,'_edit_last','1'),(159,102,'date_time_picker_field','2020-02-22 00:00:00'),(160,102,'_date_time_picker_field','field_event_date_time_picker_field'),(161,102,'Address_0_Line','101a Apple Street'),(162,102,'_Address_0_Line','field_event_address_line'),(163,102,'Address_1_Line','Bristol'),(164,102,'_Address_1_Line','field_event_address_line'),(165,102,'Address_2_Line','BS3 2LP'),(166,102,'_Address_2_Line','field_event_address_line'),(167,102,'Address',''),(168,102,'_Address','field_event_address'),(169,102,'time_picker_field','11:00:00'),(170,102,'_time_picker_field','field_event_time_picker_field'),(171,102,'google_map_field',''),(172,102,'_google_map_field','field_event_google_map_field'),(173,103,'_menu_item_type','post_type_archive'),(174,103,'_menu_item_menu_item_parent','0'),(175,103,'_menu_item_object_id','-12'),(176,103,'_menu_item_object','events'),(177,103,'_menu_item_target',''),(178,103,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(179,103,'_menu_item_xfn',''),(180,103,'_menu_item_url',''),(182,104,'_menu_item_type','post_type_archive'),(183,104,'_menu_item_menu_item_parent','0'),(184,104,'_menu_item_object_id','-20'),(185,104,'_menu_item_object','resources'),(186,104,'_menu_item_target',''),(187,104,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(188,104,'_menu_item_xfn',''),(189,104,'_menu_item_url',''),(191,102,'date','20200222'),(192,102,'_date','field_event_date'),(193,102,'start_time','00:00:00'),(194,102,'_start_time','field_event_start_time'),(195,102,'end_time','06:00:00'),(196,102,'_end_time','field_event_end_time'),(197,102,'doors_open','02:00:00'),(198,102,'_doors_open','field_event_doors_open'),(199,102,'location',''),(200,102,'_location','field_event_location'),(201,80,'image','78'),(202,80,'_image','field_image_image'),(203,100,'thumbnail','101'),(204,100,'_thumbnail','field_resources_thumbnail'),(205,100,'file','78'),(206,100,'_file','field_resources_file'),(207,1,'_edit_last','1'),(210,1,'post_type','Latest News'),(211,1,'_post_type','field_post_post_type'),(212,105,'post_type','In the Media'),(213,105,'_post_type','field_post_post_type'),(216,106,'post_type','Latest News'),(217,106,'_post_type','field_post_post_type'),(218,107,'_edit_lock','1582287852:1'),(219,107,'_edit_last','1'),(222,107,'post_type','In the Media'),(223,107,'_post_type','field_post_post_type'),(224,108,'post_type','In the Media'),(225,108,'_post_type','field_post_post_type'),(226,2,'_edit_lock','1582287760:1'),(227,2,'_edit_last','1'),(228,110,'_wp_trash_meta_status','publish'),(229,110,'_wp_trash_meta_time','1582283655');
/*!40000 ALTER TABLE `wp_2_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_2_posts`
--

DROP TABLE IF EXISTS `wp_2_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_2_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_2_posts`
--

LOCK TABLES `wp_2_posts` WRITE;
/*!40000 ALTER TABLE `wp_2_posts` DISABLE KEYS */;
INSERT INTO `wp_2_posts` VALUES (1,1,'2020-02-20 12:25:13','2020-02-20 12:25:13','Welcome to <a href=\"http://ihg.local/\">ihg.local Sites</a>. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2020-02-21 12:26:48','2020-02-21 12:26:48','',0,'http://ihg.local/crowne-plaza/?p=1',0,'post','',1),(2,1,'2020-02-20 12:25:13','2020-02-20 12:25:13','','Home','','publish','closed','open','','sample-page','','','2020-02-21 11:13:47','2020-02-21 11:13:47','',0,'http://ihg.local/crowne-plaza/?page_id=2',0,'page','',0),(3,1,'2020-02-20 12:47:04','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-20 12:47:04','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=3',0,'post','',0),(4,1,'2020-02-20 12:56:07','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 12:56:07','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=4',0,'events','',0),(5,1,'2020-02-20 14:13:37','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:13:37','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=5',0,'acf-field-group','',0),(6,1,'2020-02-20 14:13:55','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-20 14:13:55','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=6',0,'post','',0),(7,1,'2020-02-20 14:14:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:14:28','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=7',0,'acf-field-group','',0),(8,1,'2020-02-20 14:14:38','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:14:38','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=8',0,'acf-field-group','',0),(9,1,'2020-02-20 14:15:00','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:15:00','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=9',0,'acf-field-group','',0),(10,1,'2020-02-20 14:15:30','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:15:30','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?page_id=10',0,'page','',0),(11,1,'2020-02-20 14:15:55','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:15:55','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?page_id=11',0,'page','',0),(12,1,'2020-02-20 14:16:23','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:16:23','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?page_id=12',0,'page','',0),(13,1,'2020-02-20 14:18:18','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-20 14:18:18','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=13',0,'post','',0),(14,1,'2020-02-20 14:20:02','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-20 14:20:02','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=14',0,'post','',0),(15,1,'2020-02-20 14:20:17','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-20 14:20:17','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=15',0,'post','',0),(16,1,'2020-02-20 14:21:10','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-20 14:21:10','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=16',0,'post','',0),(17,1,'2020-02-20 14:22:24','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-20 14:22:24','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=17',0,'post','',0),(18,1,'2020-02-20 14:23:02','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-20 14:23:02','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=18',0,'post','',0),(19,1,'2020-02-20 14:23:05','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-20 14:23:05','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=19',0,'post','',0),(20,1,'2020-02-20 14:23:08','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-20 14:23:08','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=20',0,'post','',0),(21,1,'2020-02-20 14:23:10','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-20 14:23:10','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=21',0,'post','',0),(22,1,'2020-02-20 14:23:46','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-20 14:23:46','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=22',0,'post','',0),(23,1,'2020-02-20 14:25:22','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:25:22','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=23',0,'events','',0),(24,1,'2020-02-20 14:30:33','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:30:33','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=24',0,'events','',0),(25,1,'2020-02-20 14:30:35','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:30:35','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=25',0,'events','',0),(26,1,'2020-02-20 14:30:37','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:30:37','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=26',0,'events','',0),(27,1,'2020-02-20 14:31:54','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:31:54','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=27',0,'events','',0),(28,1,'2020-02-20 14:32:07','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:32:07','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=28',0,'events','',0),(29,1,'2020-02-20 14:32:18','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:32:18','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=29',0,'acf-field-group','',0),(30,1,'2020-02-20 14:33:05','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:33:05','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=30',0,'acf-field-group','',0),(31,1,'2020-02-20 14:33:10','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:33:10','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=31',0,'acf-field-group','',0),(32,1,'2020-02-20 14:33:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:33:15','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=32',0,'acf-field-group','',0),(33,1,'2020-02-20 14:33:18','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:33:18','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=33',0,'acf-field-group','',0),(34,1,'2020-02-20 14:33:22','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:33:22','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=34',0,'acf-field-group','',0),(35,1,'2020-02-20 14:33:57','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:33:57','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=35',0,'acf-field-group','',0),(36,1,'2020-02-20 14:34:10','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:34:10','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=36',0,'acf-field-group','',0),(37,1,'2020-02-20 14:34:52','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:34:52','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=37',0,'acf-field-group','',0),(38,1,'2020-02-20 14:35:47','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:35:47','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=38',0,'acf-field-group','',0),(39,1,'2020-02-20 14:36:08','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:36:08','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=39',0,'acf-field-group','',0),(40,1,'2020-02-20 14:36:49','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:36:49','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=40',0,'acf-field-group','',0),(41,1,'2020-02-20 14:36:52','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:36:52','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=41',0,'acf-field-group','',0),(42,1,'2020-02-20 14:37:00','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:37:00','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=42',0,'acf-field-group','',0),(43,1,'2020-02-20 14:37:05','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:37:05','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=43',0,'acf-field-group','',0),(44,1,'2020-02-20 14:37:20','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:37:20','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=44',0,'acf-field-group','',0),(45,1,'2020-02-20 14:37:21','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:37:21','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&p=45',0,'acf-field-group','',0),(46,1,'2020-02-20 14:37:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:37:28','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=46',0,'events','',0),(47,1,'2020-02-20 14:37:37','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:37:37','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=47',0,'events','',0),(48,1,'2020-02-20 14:40:01','2020-02-20 14:40:01','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"events\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Test','test','trash','closed','closed','','group_5e4e99b563c67__trashed','','','2020-02-20 14:40:14','2020-02-20 14:40:14','',0,'http://ihg.local/crowne-plaza/?post_type=acf-field-group&#038;p=48',0,'acf-field-group','',0),(49,1,'2020-02-20 14:40:01','2020-02-20 14:40:01','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Test','test','trash','closed','closed','','field_5e4e9a3548bc2__trashed','','','2020-02-20 14:40:14','2020-02-20 14:40:14','',48,'http://ihg.local/crowne-plaza/?post_type=acf-field&#038;p=49',0,'acf-field','',0),(50,1,'2020-02-20 14:40:07','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:40:07','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=50',0,'events','',0),(51,1,'2020-02-20 14:41:26','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:41:26','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=51',0,'events','',0),(52,1,'2020-02-20 14:41:30','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:41:30','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=52',0,'events','',0),(53,1,'2020-02-20 14:41:32','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:41:32','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=53',0,'events','',0),(54,1,'2020-02-20 14:41:34','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:41:34','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=54',0,'events','',0),(55,1,'2020-02-20 14:42:21','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:42:21','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=55',0,'events','',0),(56,1,'2020-02-20 14:42:40','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:42:40','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=56',0,'events','',0),(57,1,'2020-02-20 14:44:11','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:44:11','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=57',0,'events','',0),(58,1,'2020-02-20 14:44:42','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:44:42','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=58',0,'events','',0),(59,1,'2020-02-20 14:45:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:45:15','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=59',0,'events','',0),(60,1,'2020-02-20 14:45:26','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:45:26','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=60',0,'events','',0),(61,1,'2020-02-20 14:45:57','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:45:57','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=61',0,'events','',0),(62,1,'2020-02-20 14:46:21','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:46:21','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=62',0,'events','',0),(63,1,'2020-02-20 14:46:53','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:46:53','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=63',0,'events','',0),(64,1,'2020-02-20 14:47:02','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:47:02','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=64',0,'events','',0),(65,1,'2020-02-20 14:48:17','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:48:17','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=65',0,'events','',0),(66,1,'2020-02-20 14:51:12','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:51:12','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=66',0,'events','',0),(67,1,'2020-02-20 14:52:31','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:52:31','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=67',0,'events','',0),(68,1,'2020-02-20 14:53:01','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:53:01','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=68',0,'events','',0),(69,1,'2020-02-20 14:55:09','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:55:09','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=69',0,'events','',0),(70,1,'2020-02-20 14:55:36','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:55:36','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=70',0,'events','',0),(71,1,'2020-02-20 14:56:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:56:15','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=71',0,'events','',0),(72,1,'2020-02-20 14:56:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:56:28','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=72',0,'events','',0),(73,1,'2020-02-20 14:58:06','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:58:06','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=73',0,'events','',0),(74,1,'2020-02-20 14:58:18','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:58:18','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=74',0,'events','',0),(75,1,'2020-02-20 14:58:22','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:58:22','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=75',0,'events','',0),(76,1,'2020-02-20 14:59:02','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 14:59:02','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=76',0,'events','',0),(77,1,'2020-02-20 15:04:06','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 15:04:06','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=images&p=77',0,'images','',0),(78,1,'2020-02-20 15:04:15','2020-02-20 15:04:15','','IHG Hosting Architecture','','inherit','open','closed','','ihg-hosting-architecture','','','2020-02-20 15:04:15','2020-02-20 15:04:15','',77,'http://ihg.local/app/uploads/sites/2/2020/02/IHG-Hosting-Architecture.png',0,'attachment','image/png',0),(79,1,'2020-02-20 15:04:18','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 15:04:18','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=images&p=79',0,'images','',0),(80,1,'2020-02-20 15:04:34','2020-02-20 15:04:34','','','','publish','closed','closed','','80','','','2020-02-21 09:53:04','2020-02-21 09:53:04','',0,'http://ihg.local/crowne-plaza/?post_type=images&#038;p=80',0,'images','',0),(81,1,'2020-02-20 15:05:43','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 15:05:43','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?page_id=81',0,'page','',0),(82,1,'2020-02-20 15:08:56','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 15:08:56','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=resources&p=82',0,'resources','',0),(83,1,'2020-02-20 15:09:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 15:09:15','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=resources&p=83',0,'resources','',0),(84,1,'2020-02-20 15:09:31','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 15:09:31','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=resources&p=84',0,'resources','',0),(85,1,'2020-02-20 15:09:42','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 15:09:42','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=images&p=85',0,'images','',0),(86,1,'2020-02-20 15:09:48','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-02-20 15:09:48','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?post_type=events&p=86',0,'events','',0),(87,1,'2020-02-20 15:13:19','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-20 15:13:19','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=87',0,'post','',0),(88,1,'2020-02-20 15:16:34','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2020-02-20 15:16:34','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=88',1,'nav_menu_item','',0),(89,1,'2020-02-20 15:16:34','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-02-20 15:16:34','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=89',1,'nav_menu_item','',0),(90,1,'2020-02-20 15:17:22','0000-00-00 00:00:00','Add Images here','','','draft','closed','closed','','','','','2020-02-20 15:17:22','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=90',1,'nav_menu_item','',0),(92,1,'2020-02-20 15:18:21','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-02-20 15:18:21','0000-00-00 00:00:00','',0,'http://ihg.local/crowne-plaza/?p=92',1,'nav_menu_item','',0),(93,1,'2020-02-20 15:18:34','2020-02-20 15:18:34','Add Images here','','','publish','closed','closed','','93','','','2020-02-20 17:01:25','2020-02-20 17:01:25','',0,'http://ihg.local/crowne-plaza/?p=93',3,'nav_menu_item','',0),(94,1,'2020-02-20 15:19:17','2020-02-20 15:19:17','','Latest News','','publish','closed','closed','','latest-news','','','2020-02-20 15:19:17','2020-02-20 15:19:17','',0,'http://ihg.local/crowne-plaza/?page_id=94',0,'page','',0),(95,1,'2020-02-20 15:19:17','2020-02-20 15:19:17','','Latest News','','inherit','closed','closed','','94-revision-v1','','','2020-02-20 15:19:17','2020-02-20 15:19:17','',94,'http://ihg.local/crowne-plaza/2020/02/20/94-revision-v1/',0,'revision','',0),(96,1,'2020-02-20 15:19:27','2020-02-20 15:19:27','','In the Media','','publish','closed','closed','','in-the-media','','','2020-02-20 15:19:27','2020-02-20 15:19:27','',0,'http://ihg.local/crowne-plaza/?page_id=96',0,'page','',0),(97,1,'2020-02-20 15:19:27','2020-02-20 15:19:27','','In the Media','','inherit','closed','closed','','96-revision-v1','','','2020-02-20 15:19:27','2020-02-20 15:19:27','',96,'http://ihg.local/crowne-plaza/2020/02/20/96-revision-v1/',0,'revision','',0),(98,1,'2020-02-20 15:20:36','2020-02-20 15:20:36',' ','','','publish','closed','closed','','98','','','2020-02-20 17:01:25','2020-02-20 17:01:25','',0,'http://ihg.local/crowne-plaza/?p=98',5,'nav_menu_item','',0),(99,1,'2020-02-20 15:20:36','2020-02-20 15:20:36',' ','','','publish','closed','closed','','99','','','2020-02-20 17:01:25','2020-02-20 17:01:25','',0,'http://ihg.local/crowne-plaza/?p=99',1,'nav_menu_item','',0),(100,1,'2020-02-20 15:21:05','2020-02-20 15:21:05','Description.','Test Resource','','publish','closed','closed','','test-resource','','','2020-02-21 10:03:56','2020-02-21 10:03:56','',0,'http://ihg.local/crowne-plaza/?post_type=resources&#038;p=100',0,'resources','',0),(101,1,'2020-02-20 15:20:56','2020-02-20 15:20:56','','s_branding','','inherit','open','closed','','s_branding','','','2020-02-20 15:20:56','2020-02-20 15:20:56','',100,'http://ihg.local/app/uploads/sites/2/2020/02/s_branding.png',0,'attachment','image/png',0),(102,1,'2020-02-20 15:21:51','2020-02-20 15:21:51','Test Description.','Test Event','','publish','closed','closed','','test-event','','','2020-02-21 09:35:17','2020-02-21 09:35:17','',0,'http://ihg.local/crowne-plaza/?post_type=events&#038;p=102',0,'events','',0),(103,1,'2020-02-20 15:22:24','2020-02-20 15:22:24','Add Events here','','','publish','closed','closed','','103','','','2020-02-20 17:01:25','2020-02-20 17:01:25','',0,'http://ihg.local/crowne-plaza/?p=103',2,'nav_menu_item','',0),(104,1,'2020-02-20 15:22:24','2020-02-20 15:22:24','Add Resources here','','','publish','closed','closed','','104','','','2020-02-20 17:01:25','2020-02-20 17:01:25','',0,'http://ihg.local/crowne-plaza/?p=104',4,'nav_menu_item','',0),(105,1,'2020-02-21 10:20:54','2020-02-21 10:20:54','Welcome to <a href=\"http://ihg.local/\">ihg.local Sites</a>. This is your first post. Edit or delete it, then start writing!','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2020-02-21 10:20:54','2020-02-21 10:20:54','',1,'http://ihg.local/crowne-plaza/2020/02/21/1-revision-v1/',0,'revision','',0),(106,1,'2020-02-21 10:21:00','2020-02-21 10:21:00','Welcome to <a href=\"http://ihg.local/\">ihg.local Sites</a>. This is your first post. Edit or delete it, then start writing!','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2020-02-21 10:21:00','2020-02-21 10:21:00','',1,'http://ihg.local/crowne-plaza/2020/02/21/1-revision-v1/',0,'revision','',0),(107,1,'2020-02-21 11:03:21','2020-02-21 11:03:21','Test','In the media test','','publish','open','open','','in-the-media-test','','','2020-02-21 12:26:32','2020-02-21 12:26:32','',0,'http://ihg.local/crowne-plaza/?p=107',0,'post','',0),(108,1,'2020-02-21 11:03:21','2020-02-21 11:03:21','Test','In the media test','','inherit','closed','closed','','107-revision-v1','','','2020-02-21 11:03:21','2020-02-21 11:03:21','',107,'http://ihg.local/crowne-plaza/2020/02/21/107-revision-v1/',0,'revision','',0),(109,1,'2020-02-21 11:13:47','2020-02-21 11:13:47','','Home','','inherit','closed','closed','','2-revision-v1','','','2020-02-21 11:13:47','2020-02-21 11:13:47','',2,'http://ihg.local/crowne-plaza/2020/02/21/2-revision-v1/',0,'revision','',0),(110,1,'2020-02-21 11:14:15','2020-02-21 11:14:15','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:14:15\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:14:15\"\n    }\n}','','','trash','closed','closed','','9853ec76-c275-43ac-8a49-d74633482101','','','2020-02-21 11:14:15','2020-02-21 11:14:15','',0,'http://ihg.local/crowne-plaza/2020/02/21/9853ec76-c275-43ac-8a49-d74633482101/',0,'customize_changeset','',0);
/*!40000 ALTER TABLE `wp_2_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_2_term_relationships`
--

DROP TABLE IF EXISTS `wp_2_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_2_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_2_term_relationships`
--

LOCK TABLES `wp_2_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_2_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_2_term_relationships` VALUES (1,1,0),(1,3,0),(93,2,0),(98,2,0),(99,2,0),(103,2,0),(104,2,0),(107,1,0),(107,4,0);
/*!40000 ALTER TABLE `wp_2_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_2_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_2_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_2_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_2_term_taxonomy`
--

LOCK TABLES `wp_2_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_2_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_2_term_taxonomy` VALUES (1,1,'category','',0,2),(2,2,'nav_menu','',0,5),(3,3,'post_tag','',0,1),(4,4,'post_tag','',0,1);
/*!40000 ALTER TABLE `wp_2_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_2_termmeta`
--

DROP TABLE IF EXISTS `wp_2_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_2_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_2_termmeta`
--

LOCK TABLES `wp_2_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_2_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_2_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_2_terms`
--

DROP TABLE IF EXISTS `wp_2_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_2_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_2_terms`
--

LOCK TABLES `wp_2_terms` WRITE;
/*!40000 ALTER TABLE `wp_2_terms` DISABLE KEYS */;
INSERT INTO `wp_2_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Main Navigation','main-navigation',0),(3,'Latest News','latest',0),(4,'In the Media','in-media',0);
/*!40000 ALTER TABLE `wp_2_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_3_commentmeta`
--

DROP TABLE IF EXISTS `wp_3_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_3_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_3_commentmeta`
--

LOCK TABLES `wp_3_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_3_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_3_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_3_comments`
--

DROP TABLE IF EXISTS `wp_3_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_3_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_3_comments`
--

LOCK TABLES `wp_3_comments` WRITE;
/*!40000 ALTER TABLE `wp_3_comments` DISABLE KEYS */;
INSERT INTO `wp_3_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','http://ihg.local/','','2020-02-20 12:29:36','2020-02-20 12:29:36','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_3_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_3_links`
--

DROP TABLE IF EXISTS `wp_3_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_3_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_3_links`
--

LOCK TABLES `wp_3_links` WRITE;
/*!40000 ALTER TABLE `wp_3_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_3_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_3_options`
--

DROP TABLE IF EXISTS `wp_3_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_3_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_3_options`
--

LOCK TABLES `wp_3_options` WRITE;
/*!40000 ALTER TABLE `wp_3_options` DISABLE KEYS */;
INSERT INTO `wp_3_options` VALUES (1,'siteurl','http://ihg.local/holiday-inn','yes'),(2,'home','http://ihg.local/holiday-inn','yes'),(3,'blogname','Holiday Inn','yes'),(4,'blogdescription','Just another ihg.local Sites site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','admin@ihg.local','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),(29,'rewrite_rules','a:158:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"events/?$\";s:26:\"index.php?post_type=events\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=events&paged=$matches[1]\";s:9:\"images/?$\";s:26:\"index.php?post_type=images\";s:39:\"images/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=images&feed=$matches[1]\";s:34:\"images/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=images&feed=$matches[1]\";s:26:\"images/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=images&paged=$matches[1]\";s:12:\"resources/?$\";s:29:\"index.php?post_type=resources\";s:42:\"resources/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=resources&feed=$matches[1]\";s:37:\"resources/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=resources&feed=$matches[1]\";s:29:\"resources/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=resources&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:39:\"index.php?events=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:33:\"index.php?events=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?events=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"images/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"images/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"images/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"images/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"images/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"images/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"images/([^/]+)/embed/?$\";s:39:\"index.php?images=$matches[1]&embed=true\";s:27:\"images/([^/]+)/trackback/?$\";s:33:\"index.php?images=$matches[1]&tb=1\";s:47:\"images/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?images=$matches[1]&feed=$matches[2]\";s:42:\"images/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?images=$matches[1]&feed=$matches[2]\";s:35:\"images/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?images=$matches[1]&paged=$matches[2]\";s:42:\"images/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?images=$matches[1]&cpage=$matches[2]\";s:31:\"images/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?images=$matches[1]&page=$matches[2]\";s:23:\"images/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"images/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"images/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"images/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"images/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"images/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"resources/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"resources/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"resources/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"resources/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"resources/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"resources/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"resources/([^/]+)/embed/?$\";s:42:\"index.php?resources=$matches[1]&embed=true\";s:30:\"resources/([^/]+)/trackback/?$\";s:36:\"index.php?resources=$matches[1]&tb=1\";s:50:\"resources/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?resources=$matches[1]&feed=$matches[2]\";s:45:\"resources/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?resources=$matches[1]&feed=$matches[2]\";s:38:\"resources/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?resources=$matches[1]&paged=$matches[2]\";s:45:\"resources/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?resources=$matches[1]&cpage=$matches[2]\";s:34:\"resources/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?resources=$matches[1]&page=$matches[2]\";s:26:\"resources/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"resources/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"resources/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"resources/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"resources/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"resources/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:0:{}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','sage/resources','yes'),(41,'stylesheet','sage/resources','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','44719','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','posts','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:0:{}','yes'),(80,'widget_rss','a:0:{}','yes'),(81,'uninstall_plugins','a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','0','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'wp_page_for_privacy_policy','0','yes'),(92,'show_comments_cookies_opt_in','1','yes'),(93,'WPLANG','en_GB','yes'),(94,'wp_3_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(95,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(96,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(100,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:14:\"sidebar-footer\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(101,'acf_version','5.7.12','yes'),(102,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'cron','a:3:{i:1582298995;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1582374823;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(112,'theme_mods_twentynineteen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1582202030;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),(123,'template_root','/themes','yes'),(124,'stylesheet_root','/themes','yes'),(125,'current_theme','Lunar Base Theme','yes'),(126,'theme_mods_sage/resources','a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}}','yes'),(127,'theme_switched','','yes');
/*!40000 ALTER TABLE `wp_3_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_3_postmeta`
--

DROP TABLE IF EXISTS `wp_3_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_3_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_3_postmeta`
--

LOCK TABLES `wp_3_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_3_postmeta` DISABLE KEYS */;
INSERT INTO `wp_3_postmeta` VALUES (1,2,'_wp_page_template','default');
/*!40000 ALTER TABLE `wp_3_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_3_posts`
--

DROP TABLE IF EXISTS `wp_3_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_3_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_3_posts`
--

LOCK TABLES `wp_3_posts` WRITE;
/*!40000 ALTER TABLE `wp_3_posts` DISABLE KEYS */;
INSERT INTO `wp_3_posts` VALUES (1,1,'2020-02-20 12:29:36','2020-02-20 12:29:36','Welcome to <a href=\"http://ihg.local/\">ihg.local Sites</a>. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2020-02-20 12:29:36','2020-02-20 12:29:36','',0,'http://ihg.local/holiday-inn/?p=1',0,'post','',1),(2,1,'2020-02-20 12:29:36','2020-02-20 12:29:36','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://ihg.local/holiday-inn/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-02-20 12:29:36','2020-02-20 12:29:36','',0,'http://ihg.local/holiday-inn/?page_id=2',0,'page','',0),(3,1,'2020-02-20 12:33:43','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-20 12:33:43','0000-00-00 00:00:00','',0,'http://ihg.local/holiday-inn/?p=3',0,'post','',0);
/*!40000 ALTER TABLE `wp_3_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_3_term_relationships`
--

DROP TABLE IF EXISTS `wp_3_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_3_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_3_term_relationships`
--

LOCK TABLES `wp_3_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_3_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_3_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_3_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_3_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_3_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_3_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_3_term_taxonomy`
--

LOCK TABLES `wp_3_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_3_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_3_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_3_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_3_termmeta`
--

DROP TABLE IF EXISTS `wp_3_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_3_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_3_termmeta`
--

LOCK TABLES `wp_3_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_3_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_3_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_3_terms`
--

DROP TABLE IF EXISTS `wp_3_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_3_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_3_terms`
--

LOCK TABLES `wp_3_terms` WRITE;
/*!40000 ALTER TABLE `wp_3_terms` DISABLE KEYS */;
INSERT INTO `wp_3_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_3_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_blog_versions`
--

DROP TABLE IF EXISTS `wp_blog_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_blog_versions` (
  `blog_id` bigint(20) NOT NULL DEFAULT 0,
  `db_version` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`blog_id`),
  KEY `db_version` (`db_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_blog_versions`
--

LOCK TABLES `wp_blog_versions` WRITE;
/*!40000 ALTER TABLE `wp_blog_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_blog_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_blogmeta`
--

DROP TABLE IF EXISTS `wp_blogmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_blogmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `blog_id` (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_blogmeta`
--

LOCK TABLES `wp_blogmeta` WRITE;
/*!40000 ALTER TABLE `wp_blogmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_blogmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_blogs`
--

DROP TABLE IF EXISTS `wp_blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_blogs` (
  `blog_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) NOT NULL DEFAULT 0,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` tinyint(2) NOT NULL DEFAULT 1,
  `archived` tinyint(2) NOT NULL DEFAULT 0,
  `mature` tinyint(2) NOT NULL DEFAULT 0,
  `spam` tinyint(2) NOT NULL DEFAULT 0,
  `deleted` tinyint(2) NOT NULL DEFAULT 0,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`blog_id`),
  KEY `domain` (`domain`(50),`path`(5)),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_blogs`
--

LOCK TABLES `wp_blogs` WRITE;
/*!40000 ALTER TABLE `wp_blogs` DISABLE KEYS */;
INSERT INTO `wp_blogs` VALUES (1,1,'ihg.local','/','2020-02-20 12:16:31','0000-00-00 00:00:00',1,0,0,0,0,0),(2,1,'ihg.local','/crowne-plaza/','2020-02-20 12:25:11','2020-02-21 12:26:48',1,0,0,0,0,0),(3,1,'ihg.local','/holiday-inn/','2020-02-20 12:29:34','2020-02-20 12:29:34',1,0,0,0,0,0);
/*!40000 ALTER TABLE `wp_blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-02-20 12:16:30','2020-02-20 12:16:30','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'_site_transient_timeout_theme_roots','1582202789','no'),(2,'_site_transient_theme_roots','a:10:{s:14:\"sage/resources\";s:7:\"/themes\";s:12:\"twentyeleven\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:13:\"twentyfifteen\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:14:\"twentyfourteen\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:14:\"twentynineteen\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:15:\"twentyseventeen\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:13:\"twentysixteen\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:9:\"twentyten\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:14:\"twentythirteen\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:12:\"twentytwelve\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";}','no'),(3,'siteurl','http://ihg.local/wp','yes'),(4,'home','http://ihg.local/wp','yes'),(5,'blogname','ihg.local','yes'),(6,'blogdescription','Just another WordPress site','yes'),(7,'users_can_register','0','yes'),(8,'admin_email','admin@ihg.local','yes'),(9,'start_of_week','1','yes'),(10,'use_balanceTags','0','yes'),(11,'use_smilies','1','yes'),(12,'require_name_email','1','yes'),(13,'comments_notify','1','yes'),(14,'posts_per_rss','10','yes'),(15,'rss_use_excerpt','0','yes'),(16,'mailserver_url','mail.example.com','yes'),(17,'mailserver_login','login@example.com','yes'),(18,'mailserver_pass','password','yes'),(19,'mailserver_port','110','yes'),(20,'default_category','1','yes'),(21,'default_comment_status','open','yes'),(22,'default_ping_status','open','yes'),(23,'default_pingback_flag','1','yes'),(24,'posts_per_page','10','yes'),(25,'date_format','F j, Y','yes'),(26,'time_format','g:i a','yes'),(27,'links_updated_date_format','F j, Y g:i a','yes'),(28,'comment_moderation','0','yes'),(29,'moderation_notify','1','yes'),(30,'permalink_structure','/%postname%/','yes'),(31,'rewrite_rules','a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes'),(32,'hack_file','0','yes'),(33,'blog_charset','UTF-8','yes'),(34,'moderation_keys','','no'),(35,'active_plugins','a:0:{}','yes'),(36,'category_base','','yes'),(37,'ping_sites','http://rpc.pingomatic.com/','yes'),(38,'comment_max_links','2','yes'),(39,'gmt_offset','0','yes'),(40,'default_email_category','1','yes'),(41,'recently_edited','','no'),(42,'template','twentynineteen','yes'),(43,'stylesheet','twentynineteen','yes'),(44,'comment_whitelist','1','yes'),(45,'blacklist_keys','','no'),(46,'comment_registration','0','yes'),(47,'html_type','text/html','yes'),(48,'use_trackback','0','yes'),(49,'default_role','subscriber','yes'),(50,'db_version','44719','yes'),(51,'uploads_use_yearmonth_folders','1','yes'),(52,'upload_path','','yes'),(53,'blog_public','1','yes'),(54,'default_link_category','2','yes'),(55,'show_on_front','posts','yes'),(56,'tag_base','','yes'),(57,'show_avatars','1','yes'),(58,'avatar_rating','G','yes'),(59,'upload_url_path','','yes'),(60,'thumbnail_size_w','150','yes'),(61,'thumbnail_size_h','150','yes'),(62,'thumbnail_crop','1','yes'),(63,'medium_size_w','300','yes'),(64,'medium_size_h','300','yes'),(65,'avatar_default','mystery','yes'),(66,'large_size_w','1024','yes'),(67,'large_size_h','1024','yes'),(68,'image_default_link_type','none','yes'),(69,'image_default_size','','yes'),(70,'image_default_align','','yes'),(71,'close_comments_for_old_posts','0','yes'),(72,'close_comments_days_old','14','yes'),(73,'thread_comments','1','yes'),(74,'thread_comments_depth','5','yes'),(75,'page_comments','0','yes'),(76,'comments_per_page','50','yes'),(77,'default_comments_page','newest','yes'),(78,'comment_order','asc','yes'),(79,'sticky_posts','a:0:{}','yes'),(80,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(81,'widget_text','a:0:{}','yes'),(82,'widget_rss','a:0:{}','yes'),(83,'uninstall_plugins','a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}','no'),(84,'timezone_string','','yes'),(85,'page_for_posts','0','yes'),(86,'page_on_front','0','yes'),(87,'default_post_format','0','yes'),(88,'link_manager_enabled','0','yes'),(89,'finished_splitting_shared_terms','1','yes'),(90,'site_icon','0','yes'),(91,'medium_large_size_w','768','yes'),(92,'medium_large_size_h','0','yes'),(93,'wp_page_for_privacy_policy','3','yes'),(94,'show_comments_cookies_opt_in','1','yes'),(95,'initial_db_version','44719','yes'),(96,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(97,'fresh_site','1','yes'),(98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(103,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),(104,'upload_space_check_disabled','1','no'),(105,'bedrock_autoloader','a:2:{s:7:\"plugins\";a:0:{}s:5:\"count\";i:0;}','no'),(106,'cron','a:7:{i:1582298191;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1582330591;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1582330701;a:1:{s:21:\"update_network_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1582373791;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582373899;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582373901;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'nonce_key','.HjW8B-Pr~5.r#KBi4M!4[wOrE0468.qyE$L0%6!f]^_zV)h_]~/ D63xA7+.n4[','no'),(114,'nonce_salt','lvzzluD1Z0dP_d:!6dVS:a01[ 0^n/=%|pkloR=O0vlN2~dC3]Hj( Ue:LQ;8k.|','no'),(115,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(116,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(117,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(118,'theme_mods_twentynineteen','a:1:{s:18:\"custom_css_post_id\";i:-1;}','yes'),(119,'auth_key','m ?)}.-xseH?vZ^-Mgl4[S+HC3}W_!#vY.nPUPx/9Q_#m?59QU}@(1SffIg}?(8E','no'),(120,'auth_salt','0C+fiD(Ho)nG+i>0%ezzCwy2aR-W|72xfAX=zWg7cT55x.rQw&lkh,gW~zcG+k5d','no'),(121,'logged_in_key','+/MgB6(D}C/j/IJ%Tz~k=@4Tjcz{0;,besmf7N@lCxFG]{8_,,S$ aaHg2vvjS?9','no'),(122,'logged_in_salt','xV|>gy:9{]q;x=F!}gI+`fn8/OFS(KD,KxFL}s_&Kf+&!<Wp{vCF!={T#oPFFDDZ','no'),(135,'acf_version','5.7.12','yes'),(136,'_transient_timeout_acf_plugin_updates','1582417810','no'),(137,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.7.12\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-02-20 12:16:30','2020-02-20 12:16:30','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-02-20 12:16:30','2020-02-20 12:16:30','',0,'http://ihg.local/?p=1',0,'post','',1),(2,1,'2020-02-20 12:16:30','2020-02-20 12:16:30','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://ihg.local/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-02-20 12:16:30','2020-02-20 12:16:30','',0,'http://ihg.local/?page_id=2',0,'page','',0),(3,1,'2020-02-20 12:16:30','2020-02-20 12:16:30','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://ihg.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2020-02-20 12:16:30','2020-02-20 12:16:30','',0,'http://ihg.local/?page_id=3',0,'page','',0),(4,1,'2020-02-20 12:18:21','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-20 12:18:21','0000-00-00 00:00:00','',0,'http://ihg.local/wp/?p=4',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_registration_log`
--

DROP TABLE IF EXISTS `wp_registration_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_registration_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `IP` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT 0,
  `date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_registration_log`
--

LOCK TABLES `wp_registration_log` WRITE;
/*!40000 ALTER TABLE `wp_registration_log` DISABLE KEYS */;
INSERT INTO `wp_registration_log` VALUES (1,'admin@ihg.local','192.168.50.1',2,'2020-02-20 12:25:13'),(2,'admin@ihg.local','192.168.50.1',3,'2020-02-20 12:29:36');
/*!40000 ALTER TABLE `wp_registration_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_signups`
--

DROP TABLE IF EXISTS `wp_signups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`signup_id`),
  KEY `activation_key` (`activation_key`),
  KEY `user_email` (`user_email`),
  KEY `user_login_email` (`user_login`,`user_email`),
  KEY `domain_path` (`domain`(140),`path`(51))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_signups`
--

LOCK TABLES `wp_signups` WRITE;
/*!40000 ALTER TABLE `wp_signups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_signups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_site`
--

DROP TABLE IF EXISTS `wp_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_site` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`(140),`path`(51))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_site`
--

LOCK TABLES `wp_site` WRITE;
/*!40000 ALTER TABLE `wp_site` DISABLE KEYS */;
INSERT INTO `wp_site` VALUES (1,'ihg.local','/');
/*!40000 ALTER TABLE `wp_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_sitemeta`
--

DROP TABLE IF EXISTS `wp_sitemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_sitemeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_sitemeta`
--

LOCK TABLES `wp_sitemeta` WRITE;
/*!40000 ALTER TABLE `wp_sitemeta` DISABLE KEYS */;
INSERT INTO `wp_sitemeta` VALUES (1,1,'site_name','ihg.local Sites'),(2,1,'admin_email','admin@ihg.local'),(3,1,'admin_user_id','1'),(4,1,'registration','none'),(5,1,'upload_filetypes','jpg jpeg png gif mov avi mpg 3gp 3g2 midi mid pdf doc ppt odt pptx docx pps ppsx xls xlsx key mp3 ogg flac m4a wav mp4 m4v webm ogv flv'),(6,1,'blog_upload_space','100'),(7,1,'fileupload_maxk','1500'),(8,1,'site_admins','a:1:{i:0;s:5:\"admin\";}'),(9,1,'allowedthemes','a:2:{s:14:\"twentynineteen\";b:1;s:14:\"sage/resources\";b:1;}'),(10,1,'illegal_names','a:9:{i:0;s:3:\"www\";i:1;s:3:\"web\";i:2;s:4:\"root\";i:3;s:5:\"admin\";i:4;s:4:\"main\";i:5;s:6:\"invite\";i:6;s:13:\"administrator\";i:7;s:5:\"files\";i:8;s:4:\"blog\";}'),(11,1,'wpmu_upgrade_site','44719'),(12,1,'welcome_email','Howdy USERNAME,\n\nYour new SITE_NAME site has been successfully set up at:\nBLOG_URL\n\nYou can log in to the administrator account with the following information:\n\nUsername: USERNAME\nPassword: PASSWORD\nLog in here: BLOG_URLwp-login.php\n\nWe hope you enjoy your new site. Thanks!\n\n--The Team @ SITE_NAME'),(13,1,'first_post','Welcome to %s. This is your first post. Edit or delete it, then start writing!'),(14,1,'siteurl','http://ihg.local/wp/'),(15,1,'add_new_users','0'),(16,1,'upload_space_check_disabled','1'),(17,1,'subdomain_install',''),(18,1,'global_terms_enabled','0'),(19,1,'ms_files_rewriting','0'),(20,1,'initial_db_version','44719'),(21,1,'active_sitewide_plugins','a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";i:1582201327;s:33:\"classic-editor/classic-editor.php\";i:1582201327;s:31:\"what-the-file/what-the-file.php\";i:1582201327;}'),(22,1,'WPLANG','en_US'),(23,1,'bedrock_autoloader','a:2:{s:7:\"plugins\";a:0:{}s:5:\"count\";i:0;}'),(26,1,'nonce_key','aWFvC#28(6`8|djB|Y1whaJB?,|_+d-IA/CaKdEd@LN}!l,jB}>(CBqPMy vXE&?'),(27,1,'nonce_salt','Om|Ky9&L8~[Z2tl)XPF)9wrcq8bW{!]Ki-<_ycuTjcgR:>,EOceUD)q>@X2*32|f'),(28,1,'auth_key','Qc^$?[aGdq;[T_ K|Y!wpXb)j4U:}d!O*wo)2k-E|1B@=qB9)`pF.&^D`Lh2WOu*'),(29,1,'auth_salt','lS(C?EfV~%g@)FeQ3qZ(]1SsYcpx<,R(_A2QU?+cy0hh|vp9>idA~3LrY#HVAm>{'),(30,1,'logged_in_key','23Ba`(X,^z-V?kM-!!@m4y%c!;r$m 5`@%C?J9p.au{Gs6g$/<Ji<19?Ln>[S&u?'),(31,1,'logged_in_salt','mpG_SVpea;nOjklviZN(hO+nQ{L-@$6!k{+z5%ov}xy_x.=T<u%Dk4Mwzmyp)&wT'),(32,1,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.5-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.5-partial-3.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.5-rollback-3.zip\";}s:7:\"current\";s:5:\"5.2.5\";s:7:\"version\";s:5:\"5.2.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.2.3\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1582288207;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}'),(33,1,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1582288207;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"classic-editor\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2019-02-02 15:00:14\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/classic-editor/1.5/en_GB.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"what-the-file/what-the-file.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/what-the-file\";s:4:\"slug\";s:13:\"what-the-file\";s:6:\"plugin\";s:31:\"what-the-file/what-the-file.php\";s:11:\"new_version\";s:5:\"1.5.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/what-the-file/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/what-the-file.1.5.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-256x256.png?rev=1223609\";s:2:\"1x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-128x128.png?rev=1223609\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/what-the-file/assets/banner-772x250.jpg?rev=685200\";}s:11:\"banners_rtl\";a:0:{}}}}'),(34,1,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1582288208;s:7:\"checked\";a:10:{s:14:\"sage/resources\";s:5:\"1.0.0\";s:12:\"twentyeleven\";s:3:\"3.3\";s:13:\"twentyfifteen\";s:3:\"2.5\";s:14:\"twentyfourteen\";s:3:\"2.7\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:9:\"twentyten\";s:3:\"2.9\";s:14:\"twentythirteen\";s:3:\"2.9\";s:12:\"twentytwelve\";s:3:\"3.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:9:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentyeleven\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"3.3\";s:7:\"updated\";s:19:\"2019-05-08 21:24:46\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyeleven/3.3/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentyfifteen\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"2.5\";s:7:\"updated\";s:19:\"2018-12-13 09:17:46\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/twentyfifteen/2.5/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentyfourteen\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"2.7\";s:7:\"updated\";s:19:\"2018-12-20 21:40:18\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentyfourteen/2.7/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"1.4\";s:7:\"updated\";s:19:\"2019-05-08 21:21:07\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.4/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"2.2\";s:7:\"updated\";s:19:\"2019-01-12 19:53:04\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/2.2/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:5;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentysixteen\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"2.0\";s:7:\"updated\";s:19:\"2018-12-13 09:14:21\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/twentysixteen/2.0/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:6;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:9:\"twentyten\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"2.9\";s:7:\"updated\";s:19:\"2019-02-22 02:56:30\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/twentyten/2.9/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:7;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentythirteen\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"2.9\";s:7:\"updated\";s:19:\"2019-02-22 02:57:20\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentythirteen/2.9/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:8;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentytwelve\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"3.0\";s:7:\"updated\";s:19:\"2019-02-22 02:57:05\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentytwelve/3.0/en_GB.zip\";s:10:\"autoupdate\";b:1;}}}'),(35,1,'_site_transient_timeout_browser_f1e35b847931c161a9e836a35b1b987b','1582805901'),(36,1,'_site_transient_browser_f1e35b847931c161a9e836a35b1b987b','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.106\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}'),(37,1,'_site_transient_timeout_php_check_ebbdd129794cff4a2d0ddea6674dd986','1582805901'),(38,1,'_site_transient_php_check_ebbdd129794cff4a2d0ddea6674dd986','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}'),(41,1,'can_compress_scripts','0'),(42,1,'site_meta_supported','1'),(45,1,'recently_activated','a:0:{}'),(46,1,'whatthefile-install-date','2020-02-20'),(47,1,'blog_count','3'),(48,1,'user_count','1'),(123,1,'_site_transient_timeout_theme_roots','1582295402'),(124,1,'_site_transient_theme_roots','a:10:{s:14:\"sage/resources\";s:7:\"/themes\";s:12:\"twentyeleven\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:13:\"twentyfifteen\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:14:\"twentyfourteen\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:14:\"twentynineteen\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:15:\"twentyseventeen\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:13:\"twentysixteen\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:9:\"twentyten\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:14:\"twentythirteen\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";s:12:\"twentytwelve\";s:51:\"/srv/www/ihg.local/current/web/wp/wp-content/themes\";}');
/*!40000 ALTER TABLE `wp_sitemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(16,1,'source_domain','ihg.local'),(17,1,'primary_blog','1'),(18,1,'session_tokens','a:2:{s:64:\"bea069ca5f7f2f68aaf6b43ab5df4682f3114e72e77f6abfccd9d0d76fd718b9\";a:4:{s:10:\"expiration\";i:1582373862;s:2:\"ip\";s:12:\"192.168.50.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36\";s:5:\"login\";i:1582201062;}s:64:\"3cbcf81ce636fd19b6d468b82ade9edc2ae96ab0ece0e74f6d564880d2574976\";a:4:{s:10:\"expiration\";i:1582373899;s:2:\"ip\";s:12:\"192.168.50.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36\";s:5:\"login\";i:1582201099;}}'),(19,1,'wp_dashboard_quick_press_last_post_id','4'),(20,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"192.168.50.0\";}'),(21,1,'wp_2_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(22,1,'wp_2_user_level','10'),(23,1,'wp_3_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(24,1,'wp_3_user_level','10'),(25,1,'wp_3_dashboard_quick_press_last_post_id','3'),(26,1,'wp_2_dashboard_quick_press_last_post_id','3'),(27,1,'wp_2_user-settings','libraryContent=browse'),(28,1,'wp_2_user-settings-time','1582211053'),(29,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(30,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}'),(31,1,'closedpostboxes_nav-menus','a:0:{}'),(32,1,'nav_menu_recently_edited','2');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `spam` tinyint(2) NOT NULL DEFAULT 0,
  `deleted` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$2y$10$rPk3bxVfnPb59l7dgNsV7.nUQsCD6JGxraQGGZo7ZhZUDiBTWx.qe','admin','admin@ihg.local','','2020-02-20 12:16:30','',0,'admin',0,0);
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-21 14:41:59
