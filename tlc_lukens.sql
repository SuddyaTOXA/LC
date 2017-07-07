-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 08, 2017 at 12:59 AM
-- Server version: 5.5.50
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tlc_lukens`
--

-- --------------------------------------------------------

--
-- Table structure for table `lc_commentmeta`
--

CREATE TABLE IF NOT EXISTS `lc_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lc_comments`
--

CREATE TABLE IF NOT EXISTS `lc_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lc_comments`
--

INSERT INTO `lc_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-07-06 18:59:51', '2017-07-06 18:59:51', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lc_links`
--

CREATE TABLE IF NOT EXISTS `lc_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lc_options`
--

CREATE TABLE IF NOT EXISTS `lc_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lc_options`
--

INSERT INTO `lc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://lukens', 'yes'),
(2, 'home', 'http://lukens', 'yes'),
(3, 'blogname', 'TLC', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'suddyadred@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:104:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:40:"vc_grid_item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"vc_grid_item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"vc_grid_item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"vc_grid_item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"vc_grid_item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"vc_grid_item/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"vc_grid_item/([^/]+)/embed/?$";s:45:"index.php?vc_grid_item=$matches[1]&embed=true";s:33:"vc_grid_item/([^/]+)/trackback/?$";s:39:"index.php?vc_grid_item=$matches[1]&tb=1";s:41:"vc_grid_item/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?vc_grid_item=$matches[1]&paged=$matches[2]";s:48:"vc_grid_item/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?vc_grid_item=$matches[1]&cpage=$matches[2]";s:37:"vc_grid_item/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?vc_grid_item=$matches[1]&page=$matches[2]";s:29:"vc_grid_item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"vc_grid_item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"vc_grid_item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"vc_grid_item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"vc_grid_item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"vc_grid_item/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'lukens', 'yes'),
(41, 'stylesheet', 'lukens', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'lc_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'cron', 'a:4:{i:1499497192;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1499540405;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1499546210;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(108, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1499368136;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(112, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.8-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1499456557;s:15:"version_checked";s:3:"4.8";s:12:"translations";a:0:{}}', 'no'),
(117, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1499456564;s:7:"checked";a:1:{s:6:"lukens";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(121, 'can_compress_scripts', '1', 'no'),
(130, '_transient_timeout_plugin_slugs', '1499551125', 'no'),
(131, '_transient_plugin_slugs', 'a:12:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:56:"advanced-custom-fields-font-awesome/acf-font-awesome.php";i:2;s:37:"acf-options-page/acf-options-page.php";i:3;s:29:"acf-repeater/acf-repeater.php";i:4;s:36:"contact-form-7/wp-contact-form-7.php";i:5;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:6;s:32:"login-lockdown/loginlockdown.php";i:7;s:37:"tinymce-advanced/tinymce-advanced.php";i:8;s:27:"wp-pagenavi/wp-pagenavi.php";i:9;s:27:"js_composer/js_composer.php";i:10;s:33:"wps-hide-login/wps-hide-login.php";i:11;s:23:"wp-smushit/wp-smush.php";}', 'no'),
(132, 'recently_activated', 'a:9:{s:30:"advanced-custom-fields/acf.php";i:1499464724;s:56:"advanced-custom-fields-font-awesome/acf-font-awesome.php";i:1499464724;s:37:"acf-options-page/acf-options-page.php";i:1499464724;s:29:"acf-repeater/acf-repeater.php";i:1499464724;s:36:"contact-form-7/wp-contact-form-7.php";i:1499464724;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:1499464724;s:37:"tinymce-advanced/tinymce-advanced.php";i:1499464724;s:27:"js_composer/js_composer.php";i:1499464724;s:37:"acf-option-pages/acf-option-pages.php";i:1499435887;}', 'yes'),
(137, 'vc_version', '5.1.1', 'yes'),
(140, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.8";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1499367743;s:7:"version";s:3:"4.8";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(148, 'tadv_settings', 'a:6:{s:7:"options";s:15:"menubar,advlist";s:9:"toolbar_1";s:106:"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo";s:9:"toolbar_2";s:103:"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"plugins";s:104:"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,advlist,wptadv";}', 'yes'),
(149, 'tadv_admin_settings', 'a:1:{s:7:"options";a:0:{}}', 'yes'),
(150, 'tadv_version', '4000', 'yes'),
(151, 'acf_version', '4.4.11', 'yes'),
(152, 'cptui_new_install', 'false', 'yes'),
(153, 'current_theme', 'My Custom Theme', 'yes'),
(154, 'theme_mods_lukens', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:9:"main-menu";i:2;s:11:"footer-menu";i:3;}}', 'yes'),
(155, 'theme_switched', '', 'yes'),
(158, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(182, '_transient_timeout_bfa-api-versions', '1499478200', 'no'),
(183, '_transient_bfa-api-versions', 'O:8:"stdClass":2:{s:8:"versions";a:20:{i:0;s:5:"4.7.0";i:1;s:5:"4.6.3";i:2;s:5:"4.6.2";i:3;s:5:"4.6.1";i:4;s:5:"4.6.0";i:5;s:5:"4.5.0";i:6;s:5:"4.4.0";i:7;s:5:"4.3.0";i:8;s:5:"4.2.0";i:9;s:5:"4.1.0";i:10;s:5:"4.0.3";i:11;s:5:"4.0.1";i:12;s:5:"4.0.0";i:13;s:5:"3.2.1";i:14;s:5:"3.2.0";i:15;s:5:"3.1.1";i:16;s:5:"3.0.2";i:17;s:3:"3.0";i:18;s:3:"2.0";i:19;s:5:"1.0.0";}s:11:"lastversion";s:5:"4.7.0";}', 'no'),
(184, '_transient_timeout_bfa-css', '1502027000', 'no');
INSERT INTO `lc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(185, '_transient_bfa-css', 'a:1:{s:5:"4.7.0";s:31000:"/*!\n *  Font Awesome 4.7.0 by @davegandy - http://fontawesome.io - @fontawesome\n *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)\n */@font-face{font-family:''FontAwesome'';src:url(''../fonts/fontawesome-webfont.eot?v=4.7.0'');src:url(''../fonts/fontawesome-webfont.eot?#iefix&v=4.7.0'') format(''embedded-opentype''),url(''../fonts/fontawesome-webfont.woff2?v=4.7.0'') format(''woff2''),url(''../fonts/fontawesome-webfont.woff?v=4.7.0'') format(''woff''),url(''../fonts/fontawesome-webfont.ttf?v=4.7.0'') format(''truetype''),url(''../fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular'') format(''svg'');font-weight:normal;font-style:normal}.fa{display:inline-block;font:normal normal normal 14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.fa-lg{font-size:1.33333333em;line-height:.75em;vertical-align:-15%}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-fw{width:1.28571429em;text-align:center}.fa-ul{padding-left:0;margin-left:2.14285714em;list-style-type:none}.fa-ul>li{position:relative}.fa-li{position:absolute;left:-2.14285714em;width:2.14285714em;top:.14285714em;text-align:center}.fa-li.fa-lg{left:-1.85714286em}.fa-border{padding:.2em .25em .15em;border:solid .08em #eee;border-radius:.1em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left{margin-right:.3em}.fa.fa-pull-right{margin-left:.3em}.pull-right{float:right}.pull-left{float:left}.fa.pull-left{margin-right:.3em}.fa.pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}.fa-rotate-90{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)";-webkit-transform:scale(-1, 1);-ms-transform:scale(-1, 1);transform:scale(-1, 1)}.fa-flip-vertical{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";-webkit-transform:scale(1, -1);-ms-transform:scale(1, -1);transform:scale(1, -1)}:root .fa-rotate-90,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-flip-horizontal,:root .fa-flip-vertical{filter:none}.fa-stack{position:relative;display:inline-block;width:2em;height:2em;line-height:2em;vertical-align:middle}.fa-stack-1x,.fa-stack-2x{position:absolute;left:0;width:100%;text-align:center}.fa-stack-1x{line-height:inherit}.fa-stack-2x{font-size:2em}.fa-inverse{color:#fff}.fa-glass:before{content:"\\f000"}.fa-music:before{content:"\\f001"}.fa-search:before{content:"\\f002"}.fa-envelope-o:before{content:"\\f003"}.fa-heart:before{content:"\\f004"}.fa-star:before{content:"\\f005"}.fa-star-o:before{content:"\\f006"}.fa-user:before{content:"\\f007"}.fa-film:before{content:"\\f008"}.fa-th-large:before{content:"\\f009"}.fa-th:before{content:"\\f00a"}.fa-th-list:before{content:"\\f00b"}.fa-check:before{content:"\\f00c"}.fa-remove:before,.fa-close:before,.fa-times:before{content:"\\f00d"}.fa-search-plus:before{content:"\\f00e"}.fa-search-minus:before{content:"\\f010"}.fa-power-off:before{content:"\\f011"}.fa-signal:before{content:"\\f012"}.fa-gear:before,.fa-cog:before{content:"\\f013"}.fa-trash-o:before{content:"\\f014"}.fa-home:before{content:"\\f015"}.fa-file-o:before{content:"\\f016"}.fa-clock-o:before{content:"\\f017"}.fa-road:before{content:"\\f018"}.fa-download:before{content:"\\f019"}.fa-arrow-circle-o-down:before{content:"\\f01a"}.fa-arrow-circle-o-up:before{content:"\\f01b"}.fa-inbox:before{content:"\\f01c"}.fa-play-circle-o:before{content:"\\f01d"}.fa-rotate-right:before,.fa-repeat:before{content:"\\f01e"}.fa-refresh:before{content:"\\f021"}.fa-list-alt:before{content:"\\f022"}.fa-lock:before{content:"\\f023"}.fa-flag:before{content:"\\f024"}.fa-headphones:before{content:"\\f025"}.fa-volume-off:before{content:"\\f026"}.fa-volume-down:before{content:"\\f027"}.fa-volume-up:before{content:"\\f028"}.fa-qrcode:before{content:"\\f029"}.fa-barcode:before{content:"\\f02a"}.fa-tag:before{content:"\\f02b"}.fa-tags:before{content:"\\f02c"}.fa-book:before{content:"\\f02d"}.fa-bookmark:before{content:"\\f02e"}.fa-print:before{content:"\\f02f"}.fa-camera:before{content:"\\f030"}.fa-font:before{content:"\\f031"}.fa-bold:before{content:"\\f032"}.fa-italic:before{content:"\\f033"}.fa-text-height:before{content:"\\f034"}.fa-text-width:before{content:"\\f035"}.fa-align-left:before{content:"\\f036"}.fa-align-center:before{content:"\\f037"}.fa-align-right:before{content:"\\f038"}.fa-align-justify:before{content:"\\f039"}.fa-list:before{content:"\\f03a"}.fa-dedent:before,.fa-outdent:before{content:"\\f03b"}.fa-indent:before{content:"\\f03c"}.fa-video-camera:before{content:"\\f03d"}.fa-photo:before,.fa-image:before,.fa-picture-o:before{content:"\\f03e"}.fa-pencil:before{content:"\\f040"}.fa-map-marker:before{content:"\\f041"}.fa-adjust:before{content:"\\f042"}.fa-tint:before{content:"\\f043"}.fa-edit:before,.fa-pencil-square-o:before{content:"\\f044"}.fa-share-square-o:before{content:"\\f045"}.fa-check-square-o:before{content:"\\f046"}.fa-arrows:before{content:"\\f047"}.fa-step-backward:before{content:"\\f048"}.fa-fast-backward:before{content:"\\f049"}.fa-backward:before{content:"\\f04a"}.fa-play:before{content:"\\f04b"}.fa-pause:before{content:"\\f04c"}.fa-stop:before{content:"\\f04d"}.fa-forward:before{content:"\\f04e"}.fa-fast-forward:before{content:"\\f050"}.fa-step-forward:before{content:"\\f051"}.fa-eject:before{content:"\\f052"}.fa-chevron-left:before{content:"\\f053"}.fa-chevron-right:before{content:"\\f054"}.fa-plus-circle:before{content:"\\f055"}.fa-minus-circle:before{content:"\\f056"}.fa-times-circle:before{content:"\\f057"}.fa-check-circle:before{content:"\\f058"}.fa-question-circle:before{content:"\\f059"}.fa-info-circle:before{content:"\\f05a"}.fa-crosshairs:before{content:"\\f05b"}.fa-times-circle-o:before{content:"\\f05c"}.fa-check-circle-o:before{content:"\\f05d"}.fa-ban:before{content:"\\f05e"}.fa-arrow-left:before{content:"\\f060"}.fa-arrow-right:before{content:"\\f061"}.fa-arrow-up:before{content:"\\f062"}.fa-arrow-down:before{content:"\\f063"}.fa-mail-forward:before,.fa-share:before{content:"\\f064"}.fa-expand:before{content:"\\f065"}.fa-compress:before{content:"\\f066"}.fa-plus:before{content:"\\f067"}.fa-minus:before{content:"\\f068"}.fa-asterisk:before{content:"\\f069"}.fa-exclamation-circle:before{content:"\\f06a"}.fa-gift:before{content:"\\f06b"}.fa-leaf:before{content:"\\f06c"}.fa-fire:before{content:"\\f06d"}.fa-eye:before{content:"\\f06e"}.fa-eye-slash:before{content:"\\f070"}.fa-warning:before,.fa-exclamation-triangle:before{content:"\\f071"}.fa-plane:before{content:"\\f072"}.fa-calendar:before{content:"\\f073"}.fa-random:before{content:"\\f074"}.fa-comment:before{content:"\\f075"}.fa-magnet:before{content:"\\f076"}.fa-chevron-up:before{content:"\\f077"}.fa-chevron-down:before{content:"\\f078"}.fa-retweet:before{content:"\\f079"}.fa-shopping-cart:before{content:"\\f07a"}.fa-folder:before{content:"\\f07b"}.fa-folder-open:before{content:"\\f07c"}.fa-arrows-v:before{content:"\\f07d"}.fa-arrows-h:before{content:"\\f07e"}.fa-bar-chart-o:before,.fa-bar-chart:before{content:"\\f080"}.fa-twitter-square:before{content:"\\f081"}.fa-facebook-square:before{content:"\\f082"}.fa-camera-retro:before{content:"\\f083"}.fa-key:before{content:"\\f084"}.fa-gears:before,.fa-cogs:before{content:"\\f085"}.fa-comments:before{content:"\\f086"}.fa-thumbs-o-up:before{content:"\\f087"}.fa-thumbs-o-down:before{content:"\\f088"}.fa-star-half:before{content:"\\f089"}.fa-heart-o:before{content:"\\f08a"}.fa-sign-out:before{content:"\\f08b"}.fa-linkedin-square:before{content:"\\f08c"}.fa-thumb-tack:before{content:"\\f08d"}.fa-external-link:before{content:"\\f08e"}.fa-sign-in:before{content:"\\f090"}.fa-trophy:before{content:"\\f091"}.fa-github-square:before{content:"\\f092"}.fa-upload:before{content:"\\f093"}.fa-lemon-o:before{content:"\\f094"}.fa-phone:before{content:"\\f095"}.fa-square-o:before{content:"\\f096"}.fa-bookmark-o:before{content:"\\f097"}.fa-phone-square:before{content:"\\f098"}.fa-twitter:before{content:"\\f099"}.fa-facebook-f:before,.fa-facebook:before{content:"\\f09a"}.fa-github:before{content:"\\f09b"}.fa-unlock:before{content:"\\f09c"}.fa-credit-card:before{content:"\\f09d"}.fa-feed:before,.fa-rss:before{content:"\\f09e"}.fa-hdd-o:before{content:"\\f0a0"}.fa-bullhorn:before{content:"\\f0a1"}.fa-bell:before{content:"\\f0f3"}.fa-certificate:before{content:"\\f0a3"}.fa-hand-o-right:before{content:"\\f0a4"}.fa-hand-o-left:before{content:"\\f0a5"}.fa-hand-o-up:before{content:"\\f0a6"}.fa-hand-o-down:before{content:"\\f0a7"}.fa-arrow-circle-left:before{content:"\\f0a8"}.fa-arrow-circle-right:before{content:"\\f0a9"}.fa-arrow-circle-up:before{content:"\\f0aa"}.fa-arrow-circle-down:before{content:"\\f0ab"}.fa-globe:before{content:"\\f0ac"}.fa-wrench:before{content:"\\f0ad"}.fa-tasks:before{content:"\\f0ae"}.fa-filter:before{content:"\\f0b0"}.fa-briefcase:before{content:"\\f0b1"}.fa-arrows-alt:before{content:"\\f0b2"}.fa-group:before,.fa-users:before{content:"\\f0c0"}.fa-chain:before,.fa-link:before{content:"\\f0c1"}.fa-cloud:before{content:"\\f0c2"}.fa-flask:before{content:"\\f0c3"}.fa-cut:before,.fa-scissors:before{content:"\\f0c4"}.fa-copy:before,.fa-files-o:before{content:"\\f0c5"}.fa-paperclip:before{content:"\\f0c6"}.fa-save:before,.fa-floppy-o:before{content:"\\f0c7"}.fa-square:before{content:"\\f0c8"}.fa-navicon:before,.fa-reorder:before,.fa-bars:before{content:"\\f0c9"}.fa-list-ul:before{content:"\\f0ca"}.fa-list-ol:before{content:"\\f0cb"}.fa-strikethrough:before{content:"\\f0cc"}.fa-underline:before{content:"\\f0cd"}.fa-table:before{content:"\\f0ce"}.fa-magic:before{content:"\\f0d0"}.fa-truck:before{content:"\\f0d1"}.fa-pinterest:before{content:"\\f0d2"}.fa-pinterest-square:before{content:"\\f0d3"}.fa-google-plus-square:before{content:"\\f0d4"}.fa-google-plus:before{content:"\\f0d5"}.fa-money:before{content:"\\f0d6"}.fa-caret-down:before{content:"\\f0d7"}.fa-caret-up:before{content:"\\f0d8"}.fa-caret-left:before{content:"\\f0d9"}.fa-caret-right:before{content:"\\f0da"}.fa-columns:before{content:"\\f0db"}.fa-unsorted:before,.fa-sort:before{content:"\\f0dc"}.fa-sort-down:before,.fa-sort-desc:before{content:"\\f0dd"}.fa-sort-up:before,.fa-sort-asc:before{content:"\\f0de"}.fa-envelope:before{content:"\\f0e0"}.fa-linkedin:before{content:"\\f0e1"}.fa-rotate-left:before,.fa-undo:before{content:"\\f0e2"}.fa-legal:before,.fa-gavel:before{content:"\\f0e3"}.fa-dashboard:before,.fa-tachometer:before{content:"\\f0e4"}.fa-comment-o:before{content:"\\f0e5"}.fa-comments-o:before{content:"\\f0e6"}.fa-flash:before,.fa-bolt:before{content:"\\f0e7"}.fa-sitemap:before{content:"\\f0e8"}.fa-umbrella:before{content:"\\f0e9"}.fa-paste:before,.fa-clipboard:before{content:"\\f0ea"}.fa-lightbulb-o:before{content:"\\f0eb"}.fa-exchange:before{content:"\\f0ec"}.fa-cloud-download:before{content:"\\f0ed"}.fa-cloud-upload:before{content:"\\f0ee"}.fa-user-md:before{content:"\\f0f0"}.fa-stethoscope:before{content:"\\f0f1"}.fa-suitcase:before{content:"\\f0f2"}.fa-bell-o:before{content:"\\f0a2"}.fa-coffee:before{content:"\\f0f4"}.fa-cutlery:before{content:"\\f0f5"}.fa-file-text-o:before{content:"\\f0f6"}.fa-building-o:before{content:"\\f0f7"}.fa-hospital-o:before{content:"\\f0f8"}.fa-ambulance:before{content:"\\f0f9"}.fa-medkit:before{content:"\\f0fa"}.fa-fighter-jet:before{content:"\\f0fb"}.fa-beer:before{content:"\\f0fc"}.fa-h-square:before{content:"\\f0fd"}.fa-plus-square:before{content:"\\f0fe"}.fa-angle-double-left:before{content:"\\f100"}.fa-angle-double-right:before{content:"\\f101"}.fa-angle-double-up:before{content:"\\f102"}.fa-angle-double-down:before{content:"\\f103"}.fa-angle-left:before{content:"\\f104"}.fa-angle-right:before{content:"\\f105"}.fa-angle-up:before{content:"\\f106"}.fa-angle-down:before{content:"\\f107"}.fa-desktop:before{content:"\\f108"}.fa-laptop:before{content:"\\f109"}.fa-tablet:before{content:"\\f10a"}.fa-mobile-phone:before,.fa-mobile:before{content:"\\f10b"}.fa-circle-o:before{content:"\\f10c"}.fa-quote-left:before{content:"\\f10d"}.fa-quote-right:before{content:"\\f10e"}.fa-spinner:before{content:"\\f110"}.fa-circle:before{content:"\\f111"}.fa-mail-reply:before,.fa-reply:before{content:"\\f112"}.fa-github-alt:before{content:"\\f113"}.fa-folder-o:before{content:"\\f114"}.fa-folder-open-o:before{content:"\\f115"}.fa-smile-o:before{content:"\\f118"}.fa-frown-o:before{content:"\\f119"}.fa-meh-o:before{content:"\\f11a"}.fa-gamepad:before{content:"\\f11b"}.fa-keyboard-o:before{content:"\\f11c"}.fa-flag-o:before{content:"\\f11d"}.fa-flag-checkered:before{content:"\\f11e"}.fa-terminal:before{content:"\\f120"}.fa-code:before{content:"\\f121"}.fa-mail-reply-all:before,.fa-reply-all:before{content:"\\f122"}.fa-star-half-empty:before,.fa-star-half-full:before,.fa-star-half-o:before{content:"\\f123"}.fa-location-arrow:before{content:"\\f124"}.fa-crop:before{content:"\\f125"}.fa-code-fork:before{content:"\\f126"}.fa-unlink:before,.fa-chain-broken:before{content:"\\f127"}.fa-question:before{content:"\\f128"}.fa-info:before{content:"\\f129"}.fa-exclamation:before{content:"\\f12a"}.fa-superscript:before{content:"\\f12b"}.fa-subscript:before{content:"\\f12c"}.fa-eraser:before{content:"\\f12d"}.fa-puzzle-piece:before{content:"\\f12e"}.fa-microphone:before{content:"\\f130"}.fa-microphone-slash:before{content:"\\f131"}.fa-shield:before{content:"\\f132"}.fa-calendar-o:before{content:"\\f133"}.fa-fire-extinguisher:before{content:"\\f134"}.fa-rocket:before{content:"\\f135"}.fa-maxcdn:before{content:"\\f136"}.fa-chevron-circle-left:before{content:"\\f137"}.fa-chevron-circle-right:before{content:"\\f138"}.fa-chevron-circle-up:before{content:"\\f139"}.fa-chevron-circle-down:before{content:"\\f13a"}.fa-html5:before{content:"\\f13b"}.fa-css3:before{content:"\\f13c"}.fa-anchor:before{content:"\\f13d"}.fa-unlock-alt:before{content:"\\f13e"}.fa-bullseye:before{content:"\\f140"}.fa-ellipsis-h:before{content:"\\f141"}.fa-ellipsis-v:before{content:"\\f142"}.fa-rss-square:before{content:"\\f143"}.fa-play-circle:before{content:"\\f144"}.fa-ticket:before{content:"\\f145"}.fa-minus-square:before{content:"\\f146"}.fa-minus-square-o:before{content:"\\f147"}.fa-level-up:before{content:"\\f148"}.fa-level-down:before{content:"\\f149"}.fa-check-square:before{content:"\\f14a"}.fa-pencil-square:before{content:"\\f14b"}.fa-external-link-square:before{content:"\\f14c"}.fa-share-square:before{content:"\\f14d"}.fa-compass:before{content:"\\f14e"}.fa-toggle-down:before,.fa-caret-square-o-down:before{content:"\\f150"}.fa-toggle-up:before,.fa-caret-square-o-up:before{content:"\\f151"}.fa-toggle-right:before,.fa-caret-square-o-right:before{content:"\\f152"}.fa-euro:before,.fa-eur:before{content:"\\f153"}.fa-gbp:before{content:"\\f154"}.fa-dollar:before,.fa-usd:before{content:"\\f155"}.fa-rupee:before,.fa-inr:before{content:"\\f156"}.fa-cny:before,.fa-rmb:before,.fa-yen:before,.fa-jpy:before{content:"\\f157"}.fa-ruble:before,.fa-rouble:before,.fa-rub:before{content:"\\f158"}.fa-won:before,.fa-krw:before{content:"\\f159"}.fa-bitcoin:before,.fa-btc:before{content:"\\f15a"}.fa-file:before{content:"\\f15b"}.fa-file-text:before{content:"\\f15c"}.fa-sort-alpha-asc:before{content:"\\f15d"}.fa-sort-alpha-desc:before{content:"\\f15e"}.fa-sort-amount-asc:before{content:"\\f160"}.fa-sort-amount-desc:before{content:"\\f161"}.fa-sort-numeric-asc:before{content:"\\f162"}.fa-sort-numeric-desc:before{content:"\\f163"}.fa-thumbs-up:before{content:"\\f164"}.fa-thumbs-down:before{content:"\\f165"}.fa-youtube-square:before{content:"\\f166"}.fa-youtube:before{content:"\\f167"}.fa-xing:before{content:"\\f168"}.fa-xing-square:before{content:"\\f169"}.fa-youtube-play:before{content:"\\f16a"}.fa-dropbox:before{content:"\\f16b"}.fa-stack-overflow:before{content:"\\f16c"}.fa-instagram:before{content:"\\f16d"}.fa-flickr:before{content:"\\f16e"}.fa-adn:before{content:"\\f170"}.fa-bitbucket:before{content:"\\f171"}.fa-bitbucket-square:before{content:"\\f172"}.fa-tumblr:before{content:"\\f173"}.fa-tumblr-square:before{content:"\\f174"}.fa-long-arrow-down:before{content:"\\f175"}.fa-long-arrow-up:before{content:"\\f176"}.fa-long-arrow-left:before{content:"\\f177"}.fa-long-arrow-right:before{content:"\\f178"}.fa-apple:before{content:"\\f179"}.fa-windows:before{content:"\\f17a"}.fa-android:before{content:"\\f17b"}.fa-linux:before{content:"\\f17c"}.fa-dribbble:before{content:"\\f17d"}.fa-skype:before{content:"\\f17e"}.fa-foursquare:before{content:"\\f180"}.fa-trello:before{content:"\\f181"}.fa-female:before{content:"\\f182"}.fa-male:before{content:"\\f183"}.fa-gittip:before,.fa-gratipay:before{content:"\\f184"}.fa-sun-o:before{content:"\\f185"}.fa-moon-o:before{content:"\\f186"}.fa-archive:before{content:"\\f187"}.fa-bug:before{content:"\\f188"}.fa-vk:before{content:"\\f189"}.fa-weibo:before{content:"\\f18a"}.fa-renren:before{content:"\\f18b"}.fa-pagelines:before{content:"\\f18c"}.fa-stack-exchange:before{content:"\\f18d"}.fa-arrow-circle-o-right:before{content:"\\f18e"}.fa-arrow-circle-o-left:before{content:"\\f190"}.fa-toggle-left:before,.fa-caret-square-o-left:before{content:"\\f191"}.fa-dot-circle-o:before{content:"\\f192"}.fa-wheelchair:before{content:"\\f193"}.fa-vimeo-square:before{content:"\\f194"}.fa-turkish-lira:before,.fa-try:before{content:"\\f195"}.fa-plus-square-o:before{content:"\\f196"}.fa-space-shuttle:before{content:"\\f197"}.fa-slack:before{content:"\\f198"}.fa-envelope-square:before{content:"\\f199"}.fa-wordpress:before{content:"\\f19a"}.fa-openid:before{content:"\\f19b"}.fa-institution:before,.fa-bank:before,.fa-university:before{content:"\\f19c"}.fa-mortar-board:before,.fa-graduation-cap:before{content:"\\f19d"}.fa-yahoo:before{content:"\\f19e"}.fa-google:before{content:"\\f1a0"}.fa-reddit:before{content:"\\f1a1"}.fa-reddit-square:before{content:"\\f1a2"}.fa-stumbleupon-circle:before{content:"\\f1a3"}.fa-stumbleupon:before{content:"\\f1a4"}.fa-delicious:before{content:"\\f1a5"}.fa-digg:before{content:"\\f1a6"}.fa-pied-piper-pp:before{content:"\\f1a7"}.fa-pied-piper-alt:before{content:"\\f1a8"}.fa-drupal:before{content:"\\f1a9"}.fa-joomla:before{content:"\\f1aa"}.fa-language:before{content:"\\f1ab"}.fa-fax:before{content:"\\f1ac"}.fa-building:before{content:"\\f1ad"}.fa-child:before{content:"\\f1ae"}.fa-paw:before{content:"\\f1b0"}.fa-spoon:before{content:"\\f1b1"}.fa-cube:before{content:"\\f1b2"}.fa-cubes:before{content:"\\f1b3"}.fa-behance:before{content:"\\f1b4"}.fa-behance-square:before{content:"\\f1b5"}.fa-steam:before{content:"\\f1b6"}.fa-steam-square:before{content:"\\f1b7"}.fa-recycle:before{content:"\\f1b8"}.fa-automobile:before,.fa-car:before{content:"\\f1b9"}.fa-cab:before,.fa-taxi:before{content:"\\f1ba"}.fa-tree:before{content:"\\f1bb"}.fa-spotify:before{content:"\\f1bc"}.fa-deviantart:before{content:"\\f1bd"}.fa-soundcloud:before{content:"\\f1be"}.fa-database:before{content:"\\f1c0"}.fa-file-pdf-o:before{content:"\\f1c1"}.fa-file-word-o:before{content:"\\f1c2"}.fa-file-excel-o:before{content:"\\f1c3"}.fa-file-powerpoint-o:before{content:"\\f1c4"}.fa-file-photo-o:before,.fa-file-picture-o:before,.fa-file-image-o:before{content:"\\f1c5"}.fa-file-zip-o:before,.fa-file-archive-o:before{content:"\\f1c6"}.fa-file-sound-o:before,.fa-file-audio-o:before{content:"\\f1c7"}.fa-file-movie-o:before,.fa-file-video-o:before{content:"\\f1c8"}.fa-file-code-o:before{content:"\\f1c9"}.fa-vine:before{content:"\\f1ca"}.fa-codepen:before{content:"\\f1cb"}.fa-jsfiddle:before{content:"\\f1cc"}.fa-life-bouy:before,.fa-life-buoy:before,.fa-life-saver:before,.fa-support:before,.fa-life-ring:before{content:"\\f1cd"}.fa-circle-o-notch:before{content:"\\f1ce"}.fa-ra:before,.fa-resistance:before,.fa-rebel:before{content:"\\f1d0"}.fa-ge:before,.fa-empire:before{content:"\\f1d1"}.fa-git-square:before{content:"\\f1d2"}.fa-git:before{content:"\\f1d3"}.fa-y-combinator-square:before,.fa-yc-square:before,.fa-hacker-news:before{content:"\\f1d4"}.fa-tencent-weibo:before{content:"\\f1d5"}.fa-qq:before{content:"\\f1d6"}.fa-wechat:before,.fa-weixin:before{content:"\\f1d7"}.fa-send:before,.fa-paper-plane:before{content:"\\f1d8"}.fa-send-o:before,.fa-paper-plane-o:before{content:"\\f1d9"}.fa-history:before{content:"\\f1da"}.fa-circle-thin:before{content:"\\f1db"}.fa-header:before{content:"\\f1dc"}.fa-paragraph:before{content:"\\f1dd"}.fa-sliders:before{content:"\\f1de"}.fa-share-alt:before{content:"\\f1e0"}.fa-share-alt-square:before{content:"\\f1e1"}.fa-bomb:before{content:"\\f1e2"}.fa-soccer-ball-o:before,.fa-futbol-o:before{content:"\\f1e3"}.fa-tty:before{content:"\\f1e4"}.fa-binoculars:before{content:"\\f1e5"}.fa-plug:before{content:"\\f1e6"}.fa-slideshare:before{content:"\\f1e7"}.fa-twitch:before{content:"\\f1e8"}.fa-yelp:before{content:"\\f1e9"}.fa-newspaper-o:before{content:"\\f1ea"}.fa-wifi:before{content:"\\f1eb"}.fa-calculator:before{content:"\\f1ec"}.fa-paypal:before{content:"\\f1ed"}.fa-google-wallet:before{content:"\\f1ee"}.fa-cc-visa:before{content:"\\f1f0"}.fa-cc-mastercard:before{content:"\\f1f1"}.fa-cc-discover:before{content:"\\f1f2"}.fa-cc-amex:before{content:"\\f1f3"}.fa-cc-paypal:before{content:"\\f1f4"}.fa-cc-stripe:before{content:"\\f1f5"}.fa-bell-slash:before{content:"\\f1f6"}.fa-bell-slash-o:before{content:"\\f1f7"}.fa-trash:before{content:"\\f1f8"}.fa-copyright:before{content:"\\f1f9"}.fa-at:before{content:"\\f1fa"}.fa-eyedropper:before{content:"\\f1fb"}.fa-paint-brush:before{content:"\\f1fc"}.fa-birthday-cake:before{content:"\\f1fd"}.fa-area-chart:before{content:"\\f1fe"}.fa-pie-chart:before{content:"\\f200"}.fa-line-chart:before{content:"\\f201"}.fa-lastfm:before{content:"\\f202"}.fa-lastfm-square:before{content:"\\f203"}.fa-toggle-off:before{content:"\\f204"}.fa-toggle-on:before{content:"\\f205"}.fa-bicycle:before{content:"\\f206"}.fa-bus:before{content:"\\f207"}.fa-ioxhost:before{content:"\\f208"}.fa-angellist:before{content:"\\f209"}.fa-cc:before{content:"\\f20a"}.fa-shekel:before,.fa-sheqel:before,.fa-ils:before{content:"\\f20b"}.fa-meanpath:before{content:"\\f20c"}.fa-buysellads:before{content:"\\f20d"}.fa-connectdevelop:before{content:"\\f20e"}.fa-dashcube:before{content:"\\f210"}.fa-forumbee:before{content:"\\f211"}.fa-leanpub:before{content:"\\f212"}.fa-sellsy:before{content:"\\f213"}.fa-shirtsinbulk:before{content:"\\f214"}.fa-simplybuilt:before{content:"\\f215"}.fa-skyatlas:before{content:"\\f216"}.fa-cart-plus:before{content:"\\f217"}.fa-cart-arrow-down:before{content:"\\f218"}.fa-diamond:before{content:"\\f219"}.fa-ship:before{content:"\\f21a"}.fa-user-secret:before{content:"\\f21b"}.fa-motorcycle:before{content:"\\f21c"}.fa-street-view:before{content:"\\f21d"}.fa-heartbeat:before{content:"\\f21e"}.fa-venus:before{content:"\\f221"}.fa-mars:before{content:"\\f222"}.fa-mercury:before{content:"\\f223"}.fa-intersex:before,.fa-transgender:before{content:"\\f224"}.fa-transgender-alt:before{content:"\\f225"}.fa-venus-double:before{content:"\\f226"}.fa-mars-double:before{content:"\\f227"}.fa-venus-mars:before{content:"\\f228"}.fa-mars-stroke:before{content:"\\f229"}.fa-mars-stroke-v:before{content:"\\f22a"}.fa-mars-stroke-h:before{content:"\\f22b"}.fa-neuter:before{content:"\\f22c"}.fa-genderless:before{content:"\\f22d"}.fa-facebook-official:before{content:"\\f230"}.fa-pinterest-p:before{content:"\\f231"}.fa-whatsapp:before{content:"\\f232"}.fa-server:before{content:"\\f233"}.fa-user-plus:before{content:"\\f234"}.fa-user-times:before{content:"\\f235"}.fa-hotel:before,.fa-bed:before{content:"\\f236"}.fa-viacoin:before{content:"\\f237"}.fa-train:before{content:"\\f238"}.fa-subway:before{content:"\\f239"}.fa-medium:before{content:"\\f23a"}.fa-yc:before,.fa-y-combinator:before{content:"\\f23b"}.fa-optin-monster:before{content:"\\f23c"}.fa-opencart:before{content:"\\f23d"}.fa-expeditedssl:before{content:"\\f23e"}.fa-battery-4:before,.fa-battery:before,.fa-battery-full:before{content:"\\f240"}.fa-battery-3:before,.fa-battery-three-quarters:before{content:"\\f241"}.fa-battery-2:before,.fa-battery-half:before{content:"\\f242"}.fa-battery-1:before,.fa-battery-quarter:before{content:"\\f243"}.fa-battery-0:before,.fa-battery-empty:before{content:"\\f244"}.fa-mouse-pointer:before{content:"\\f245"}.fa-i-cursor:before{content:"\\f246"}.fa-object-group:before{content:"\\f247"}.fa-object-ungroup:before{content:"\\f248"}.fa-sticky-note:before{content:"\\f249"}.fa-sticky-note-o:before{content:"\\f24a"}.fa-cc-jcb:before{content:"\\f24b"}.fa-cc-diners-club:before{content:"\\f24c"}.fa-clone:before{content:"\\f24d"}.fa-balance-scale:before{content:"\\f24e"}.fa-hourglass-o:before{content:"\\f250"}.fa-hourglass-1:before,.fa-hourglass-start:before{content:"\\f251"}.fa-hourglass-2:before,.fa-hourglass-half:before{content:"\\f252"}.fa-hourglass-3:before,.fa-hourglass-end:before{content:"\\f253"}.fa-hourglass:before{content:"\\f254"}.fa-hand-grab-o:before,.fa-hand-rock-o:before{content:"\\f255"}.fa-hand-stop-o:before,.fa-hand-paper-o:before{content:"\\f256"}.fa-hand-scissors-o:before{content:"\\f257"}.fa-hand-lizard-o:before{content:"\\f258"}.fa-hand-spock-o:before{content:"\\f259"}.fa-hand-pointer-o:before{content:"\\f25a"}.fa-hand-peace-o:before{content:"\\f25b"}.fa-trademark:before{content:"\\f25c"}.fa-registered:before{content:"\\f25d"}.fa-creative-commons:before{content:"\\f25e"}.fa-gg:before{content:"\\f260"}.fa-gg-circle:before{content:"\\f261"}.fa-tripadvisor:before{content:"\\f262"}.fa-odnoklassniki:before{content:"\\f263"}.fa-odnoklassniki-square:before{content:"\\f264"}.fa-get-pocket:before{content:"\\f265"}.fa-wikipedia-w:before{content:"\\f266"}.fa-safari:before{content:"\\f267"}.fa-chrome:before{content:"\\f268"}.fa-firefox:before{content:"\\f269"}.fa-opera:before{content:"\\f26a"}.fa-internet-explorer:before{content:"\\f26b"}.fa-tv:before,.fa-television:before{content:"\\f26c"}.fa-contao:before{content:"\\f26d"}.fa-500px:before{content:"\\f26e"}.fa-amazon:before{content:"\\f270"}.fa-calendar-plus-o:before{content:"\\f271"}.fa-calendar-minus-o:before{content:"\\f272"}.fa-calendar-times-o:before{content:"\\f273"}.fa-calendar-check-o:before{content:"\\f274"}.fa-industry:before{content:"\\f275"}.fa-map-pin:before{content:"\\f276"}.fa-map-signs:before{content:"\\f277"}.fa-map-o:before{content:"\\f278"}.fa-map:before{content:"\\f279"}.fa-commenting:before{content:"\\f27a"}.fa-commenting-o:before{content:"\\f27b"}.fa-houzz:before{content:"\\f27c"}.fa-vimeo:before{content:"\\f27d"}.fa-black-tie:before{content:"\\f27e"}.fa-fonticons:before{content:"\\f280"}.fa-reddit-alien:before{content:"\\f281"}.fa-edge:before{content:"\\f282"}.fa-credit-card-alt:before{content:"\\f283"}.fa-codiepie:before{content:"\\f284"}.fa-modx:before{content:"\\f285"}.fa-fort-awesome:before{content:"\\f286"}.fa-usb:before{content:"\\f287"}.fa-product-hunt:before{content:"\\f288"}.fa-mixcloud:before{content:"\\f289"}.fa-scribd:before{content:"\\f28a"}.fa-pause-circle:before{content:"\\f28b"}.fa-pause-circle-o:before{content:"\\f28c"}.fa-stop-circle:before{content:"\\f28d"}.fa-stop-circle-o:before{content:"\\f28e"}.fa-shopping-bag:before{content:"\\f290"}.fa-shopping-basket:before{content:"\\f291"}.fa-hashtag:before{content:"\\f292"}.fa-bluetooth:before{content:"\\f293"}.fa-bluetooth-b:before{content:"\\f294"}.fa-percent:before{content:"\\f295"}.fa-gitlab:before{content:"\\f296"}.fa-wpbeginner:before{content:"\\f297"}.fa-wpforms:before{content:"\\f298"}.fa-envira:before{content:"\\f299"}.fa-universal-access:before{content:"\\f29a"}.fa-wheelchair-alt:before{content:"\\f29b"}.fa-question-circle-o:before{content:"\\f29c"}.fa-blind:before{content:"\\f29d"}.fa-audio-description:before{content:"\\f29e"}.fa-volume-control-phone:before{content:"\\f2a0"}.fa-braille:before{content:"\\f2a1"}.fa-assistive-listening-systems:before{content:"\\f2a2"}.fa-asl-interpreting:before,.fa-american-sign-language-interpreting:before{content:"\\f2a3"}.fa-deafness:before,.fa-hard-of-hearing:before,.fa-deaf:before{content:"\\f2a4"}.fa-glide:before{content:"\\f2a5"}.fa-glide-g:before{content:"\\f2a6"}.fa-signing:before,.fa-sign-language:before{content:"\\f2a7"}.fa-low-vision:before{content:"\\f2a8"}.fa-viadeo:before{content:"\\f2a9"}.fa-viadeo-square:before{content:"\\f2aa"}.fa-snapchat:before{content:"\\f2ab"}.fa-snapchat-ghost:before{content:"\\f2ac"}.fa-snapchat-square:before{content:"\\f2ad"}.fa-pied-piper:before{content:"\\f2ae"}.fa-first-order:before{content:"\\f2b0"}.fa-yoast:before{content:"\\f2b1"}.fa-themeisle:before{content:"\\f2b2"}.fa-google-plus-circle:before,.fa-google-plus-official:before{content:"\\f2b3"}.fa-fa:before,.fa-font-awesome:before{content:"\\f2b4"}.fa-handshake-o:before{content:"\\f2b5"}.fa-envelope-open:before{content:"\\f2b6"}.fa-envelope-open-o:before{content:"\\f2b7"}.fa-linode:before{content:"\\f2b8"}.fa-address-book:before{content:"\\f2b9"}.fa-address-book-o:before{content:"\\f2ba"}.fa-vcard:before,.fa-address-card:before{content:"\\f2bb"}.fa-vcard-o:before,.fa-address-card-o:before{content:"\\f2bc"}.fa-user-circle:before{content:"\\f2bd"}.fa-user-circle-o:before{content:"\\f2be"}.fa-user-o:before{content:"\\f2c0"}.fa-id-badge:before{content:"\\f2c1"}.fa-drivers-license:before,.fa-id-card:before{content:"\\f2c2"}.fa-drivers-license-o:before,.fa-id-card-o:before{content:"\\f2c3"}.fa-quora:before{content:"\\f2c4"}.fa-free-code-camp:before{content:"\\f2c5"}.fa-telegram:before{content:"\\f2c6"}.fa-thermometer-4:before,.fa-thermometer:before,.fa-thermometer-full:before{content:"\\f2c7"}.fa-thermometer-3:before,.fa-thermometer-three-quarters:before{content:"\\f2c8"}.fa-thermometer-2:before,.fa-thermometer-half:before{content:"\\f2c9"}.fa-thermometer-1:before,.fa-thermometer-quarter:before{content:"\\f2ca"}.fa-thermometer-0:before,.fa-thermometer-empty:before{content:"\\f2cb"}.fa-shower:before{content:"\\f2cc"}.fa-bathtub:before,.fa-s15:before,.fa-bath:before{content:"\\f2cd"}.fa-podcast:before{content:"\\f2ce"}.fa-window-maximize:before{content:"\\f2d0"}.fa-window-minimize:before{content:"\\f2d1"}.fa-window-restore:before{content:"\\f2d2"}.fa-times-rectangle:before,.fa-window-close:before{content:"\\f2d3"}.fa-times-rectangle-o:before,.fa-window-close-o:before{content:"\\f2d4"}.fa-bandcamp:before{content:"\\f2d5"}.fa-grav:before{content:"\\f2d6"}.fa-etsy:before{content:"\\f2d7"}.fa-imdb:before{content:"\\f2d8"}.fa-ravelry:before{content:"\\f2d9"}.fa-eercast:before{content:"\\f2da"}.fa-microchip:before{content:"\\f2db"}.fa-snowflake-o:before{content:"\\f2dc"}.fa-superpowers:before{content:"\\f2dd"}.fa-wpexplorer:before{content:"\\f2de"}.fa-meetup:before{content:"\\f2e0"}.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0, 0, 0, 0);border:0}.sr-only-focusable:active,.sr-only-focusable:focus{position:static;width:auto;height:auto;margin:0;overflow:visible;clip:auto}\n";}', 'no'),
(188, 'options_footer_logo', '43', 'no'),
(189, '_options_footer_logo', 'field_595f8c9363570', 'no'),
(190, 'options_contacts', '3', 'no'),
(191, '_options_contacts', 'field_595f8cc763571', 'no'),
(192, 'options_copyright', 'Copyright © The Lukens Company. All rights reserved.', 'no'),
(193, '_options_copyright', 'field_595f8ed563574', 'no'),
(194, 'options_social_links', '5', 'no'),
(195, '_options_social_links', 'field_595f8f0063575', 'no'),
(196, 'options_contacts_0_address', '2800 S. Shirlington Rd, Ste 900 </br>\r\nArlington, VA 22206', 'no'),
(197, '_options_contacts_0_address', 'field_595f8d0463572', 'no'),
(198, 'options_contacts_0_phone', '703-845-8484', 'no'),
(199, '_options_contacts_0_phone', 'field_595f8e5e63573', 'no'),
(200, 'options_contacts_1_address', '837 Traction Ave., Ste 404 </br>\r\nLos Angeles, CA 90013', 'no'),
(201, '_options_contacts_1_address', 'field_595f8d0463572', 'no'),
(202, 'options_contacts_1_phone', '213-625-8484', 'no'),
(203, '_options_contacts_1_phone', 'field_595f8e5e63573', 'no'),
(204, 'options_contacts_2_address', '34 Radcliffe Street, Ste C </br>\r\nCharleston, SC 29403\r\n', 'no'),
(205, '_options_contacts_2_address', 'field_595f8d0463572', 'no'),
(206, 'options_contacts_2_phone', '843-723-7290', 'no'),
(207, '_options_contacts_2_phone', 'field_595f8e5e63573', 'no'),
(208, 'options_social_links_0_icon', 'fa-facebook', 'no'),
(209, '_options_social_links_0_icon', 'field_595f8f3463576', 'no'),
(210, 'options_social_links_0_link', '#', 'no'),
(211, '_options_social_links_0_link', 'field_595f905bb63cd', 'no'),
(212, 'options_social_links_1_icon', 'fa-twitter', 'no'),
(213, '_options_social_links_1_icon', 'field_595f8f3463576', 'no'),
(214, 'options_social_links_1_link', '#', 'no'),
(215, '_options_social_links_1_link', 'field_595f905bb63cd', 'no'),
(216, 'options_social_links_2_icon', 'fa-instagram', 'no'),
(217, '_options_social_links_2_icon', 'field_595f8f3463576', 'no'),
(218, 'options_social_links_2_link', '#', 'no'),
(219, '_options_social_links_2_link', 'field_595f905bb63cd', 'no'),
(220, 'options_social_links_3_icon', 'fa-linkedin', 'no'),
(221, '_options_social_links_3_icon', 'field_595f8f3463576', 'no'),
(222, 'options_social_links_3_link', '#', 'no'),
(223, '_options_social_links_3_link', 'field_595f905bb63cd', 'no'),
(224, 'options_social_links_4_icon', 'fa-behance', 'no'),
(225, '_options_social_links_4_icon', 'field_595f8f3463576', 'no'),
(226, 'options_social_links_4_link', '#', 'no'),
(227, '_options_social_links_4_link', 'field_595f905bb63cd', 'no'),
(228, 'options_logo', '42', 'no'),
(229, '_options_logo', 'field_595f9582d9f86', 'no'),
(232, '_site_transient_timeout_theme_roots', '1499458358', 'no'),
(233, '_site_transient_theme_roots', 'a:1:{s:6:"lukens";s:7:"/themes";}', 'no'),
(234, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1499464717;s:7:"checked";a:12:{s:30:"advanced-custom-fields/acf.php";s:6:"4.4.11";s:56:"advanced-custom-fields-font-awesome/acf-font-awesome.php";s:5:"1.7.3";s:37:"acf-options-page/acf-options-page.php";s:5:"1.2.0";s:29:"acf-repeater/acf-repeater.php";s:5:"1.1.1";s:36:"contact-form-7/wp-contact-form-7.php";s:3:"4.8";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.5.4";s:32:"login-lockdown/loginlockdown.php";s:6:"v1.7.1";s:37:"tinymce-advanced/tinymce-advanced.php";s:5:"4.6.3";s:27:"wp-pagenavi/wp-pagenavi.php";s:4:"2.92";s:27:"js_composer/js_composer.php";s:5:"5.1.1";s:33:"wps-hide-login/wps-hide-login.php";s:5:"1.1.7";s:23:"wp-smushit/wp-smush.php";s:5:"2.7.1";}s:8:"response";a:1:{s:27:"js_composer/js_composer.php";O:8:"stdClass":5:{s:4:"slug";s:11:"js_composer";s:11:"new_version";s:3:"5.2";s:3:"url";s:0:"";s:7:"package";b:0;s:4:"name";s:24:"WPBakery Visual Composer";}}s:12:"translations";a:0:{}s:9:"no_update";a:9:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.11";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.11.zip";}s:56:"advanced-custom-fields-font-awesome/acf-font-awesome.php";O:8:"stdClass":6:{s:2:"id";s:49:"w.org/plugins/advanced-custom-fields-font-awesome";s:4:"slug";s:35:"advanced-custom-fields-font-awesome";s:6:"plugin";s:56:"advanced-custom-fields-font-awesome/acf-font-awesome.php";s:11:"new_version";s:5:"1.7.3";s:3:"url";s:66:"https://wordpress.org/plugins/advanced-custom-fields-font-awesome/";s:7:"package";s:78:"https://downloads.wordpress.org/plugin/advanced-custom-fields-font-awesome.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.8";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.8.zip";}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":6:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.5.4";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.4.zip";}s:32:"login-lockdown/loginlockdown.php";O:8:"stdClass":6:{s:2:"id";s:28:"w.org/plugins/login-lockdown";s:4:"slug";s:14:"login-lockdown";s:6:"plugin";s:32:"login-lockdown/loginlockdown.php";s:11:"new_version";s:6:"v1.7.1";s:3:"url";s:45:"https://wordpress.org/plugins/login-lockdown/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/login-lockdown.1.7.1.zip";}s:37:"tinymce-advanced/tinymce-advanced.php";O:8:"stdClass":6:{s:2:"id";s:30:"w.org/plugins/tinymce-advanced";s:4:"slug";s:16:"tinymce-advanced";s:6:"plugin";s:37:"tinymce-advanced/tinymce-advanced.php";s:11:"new_version";s:5:"4.6.3";s:3:"url";s:47:"https://wordpress.org/plugins/tinymce-advanced/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/tinymce-advanced.4.6.3.zip";}s:27:"wp-pagenavi/wp-pagenavi.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/wp-pagenavi";s:4:"slug";s:11:"wp-pagenavi";s:6:"plugin";s:27:"wp-pagenavi/wp-pagenavi.php";s:11:"new_version";s:4:"2.92";s:3:"url";s:42:"https://wordpress.org/plugins/wp-pagenavi/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/wp-pagenavi.2.92.zip";}s:33:"wps-hide-login/wps-hide-login.php";O:8:"stdClass":6:{s:2:"id";s:28:"w.org/plugins/wps-hide-login";s:4:"slug";s:14:"wps-hide-login";s:6:"plugin";s:33:"wps-hide-login/wps-hide-login.php";s:11:"new_version";s:5:"1.1.7";s:3:"url";s:45:"https://wordpress.org/plugins/wps-hide-login/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wps-hide-login.1.1.7.zip";}s:23:"wp-smushit/wp-smush.php";O:8:"stdClass":6:{s:2:"id";s:24:"w.org/plugins/wp-smushit";s:4:"slug";s:10:"wp-smushit";s:6:"plugin";s:23:"wp-smushit/wp-smush.php";s:11:"new_version";s:5:"2.7.1";s:3:"url";s:41:"https://wordpress.org/plugins/wp-smushit/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/wp-smushit.2.7.1.zip";}}}', 'no'),
(235, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1499499829', 'no'),
(236, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:0:{}}', 'no'),
(237, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1499499831', 'no'),
(238, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1499499831', 'no'),
(239, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1499456631', 'no'),
(240, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1499499832', 'no'),
(241, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1499499833', 'no'),
(242, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1499456633', 'no'),
(243, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1499499833', 'no'),
(244, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2017/07/the-month-in-wordpress-june-2017/''>The Month in WordPress: June 2017</a></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wptavern.com/lets-encrypt-passes-100-million-certificates-issued-will-offer-wildcard-certificates-in-january-2018''>WPTavern: Let’s Encrypt Passes 100 Million Certificates Issued, Will Offer Wildcard Certificates in January 2018</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/wangguard-plugin-author-shuts-down-splog-hunting-service-due-to-trauma-and-death-threats''>WPTavern: WangGuard Plugin Author Shuts Down Splog Hunting Service Due to Trauma and Death Threats</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/wordsesh-asia-now-in-planning-for-2018-wordcamp-asia-targeted-for-2019''>WPTavern: WordSesh Asia Now in Planning for 2018, WordCamp Asia Targeted for 2019</a></li></ul></div>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `lc_postmeta`
--

CREATE TABLE IF NOT EXISTS `lc_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lc_postmeta`
--

INSERT INTO `lc_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 5, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(5, 5, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(6, 5, '_mail', 'a:8:{s:7:"subject";s:20:"TLC "[your-subject]"";s:6:"sender";s:30:"[your-name] <wordpress@lukens>";s:4:"body";s:155:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on TLC (http://lukens)";s:9:"recipient";s:20:"suddyadred@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(7, 5, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:20:"TLC "[your-subject]"";s:6:"sender";s:22:"TLC <wordpress@lukens>";s:4:"body";s:97:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on TLC (http://lukens)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:30:"Reply-To: suddyadred@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(8, 5, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(9, 5, '_additional_settings', NULL),
(10, 5, '_locale', 'en_US'),
(11, 6, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(12, 6, '_edit_last', '1'),
(13, 6, '_wp_page_template', 'default'),
(14, 6, '_wpb_vc_js_status', 'false'),
(15, 6, '_edit_lock', '1499428979:1'),
(16, 8, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(17, 8, '_edit_last', '1'),
(18, 8, '_wp_page_template', 'default'),
(19, 8, '_wpb_vc_js_status', 'false'),
(20, 8, '_edit_lock', '1499373388:1'),
(21, 10, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(22, 10, '_edit_last', '1'),
(23, 10, '_wp_page_template', 'default'),
(24, 10, '_wpb_vc_js_status', 'false'),
(25, 10, '_edit_lock', '1499373541:1'),
(26, 12, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(27, 12, '_edit_last', '1'),
(28, 12, '_wp_page_template', 'default'),
(29, 12, '_wpb_vc_js_status', 'false'),
(30, 12, '_edit_lock', '1499373429:1'),
(31, 14, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(32, 15, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(33, 14, '_edit_last', '1'),
(34, 14, '_wp_page_template', 'default'),
(35, 14, '_wpb_vc_js_status', 'false'),
(36, 14, '_edit_lock', '1499373470:1'),
(37, 15, '_edit_last', '1'),
(38, 15, '_wp_page_template', 'default'),
(39, 15, '_wpb_vc_js_status', 'false'),
(40, 15, '_edit_lock', '1499373488:1'),
(41, 18, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(42, 18, '_edit_last', '1'),
(43, 18, '_wp_page_template', 'default'),
(44, 18, '_wpb_vc_js_status', 'false'),
(45, 18, '_edit_lock', '1499373491:1'),
(46, 20, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(47, 20, '_menu_item_type', 'post_type'),
(48, 20, '_menu_item_menu_item_parent', '0'),
(49, 20, '_menu_item_object_id', '18'),
(50, 20, '_menu_item_object', 'page'),
(51, 20, '_menu_item_target', ''),
(52, 20, '_menu_item_classes', 'a:1:{i:0;s:13:"btn-political";}'),
(53, 20, '_menu_item_xfn', ''),
(54, 20, '_menu_item_url', ''),
(56, 21, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(57, 21, '_menu_item_type', 'post_type'),
(58, 21, '_menu_item_menu_item_parent', '0'),
(59, 21, '_menu_item_object_id', '15'),
(60, 21, '_menu_item_object', 'page'),
(61, 21, '_menu_item_target', ''),
(62, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 21, '_menu_item_xfn', ''),
(64, 21, '_menu_item_url', ''),
(66, 22, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(67, 22, '_menu_item_type', 'post_type'),
(68, 22, '_menu_item_menu_item_parent', '0'),
(69, 22, '_menu_item_object_id', '14'),
(70, 22, '_menu_item_object', 'page'),
(71, 22, '_menu_item_target', ''),
(72, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 22, '_menu_item_xfn', ''),
(74, 22, '_menu_item_url', ''),
(76, 23, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(77, 23, '_menu_item_type', 'post_type'),
(78, 23, '_menu_item_menu_item_parent', '0'),
(79, 23, '_menu_item_object_id', '12'),
(80, 23, '_menu_item_object', 'page'),
(81, 23, '_menu_item_target', ''),
(82, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 23, '_menu_item_xfn', ''),
(84, 23, '_menu_item_url', ''),
(86, 24, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(87, 24, '_menu_item_type', 'post_type'),
(88, 24, '_menu_item_menu_item_parent', '0'),
(89, 24, '_menu_item_object_id', '10'),
(90, 24, '_menu_item_object', 'page'),
(91, 24, '_menu_item_target', ''),
(92, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(93, 24, '_menu_item_xfn', ''),
(94, 24, '_menu_item_url', ''),
(96, 25, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(97, 25, '_menu_item_type', 'post_type'),
(98, 25, '_menu_item_menu_item_parent', '0'),
(99, 25, '_menu_item_object_id', '8'),
(100, 25, '_menu_item_object', 'page'),
(101, 25, '_menu_item_target', ''),
(102, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(103, 25, '_menu_item_xfn', ''),
(104, 25, '_menu_item_url', ''),
(106, 26, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(107, 26, '_menu_item_type', 'post_type'),
(108, 26, '_menu_item_menu_item_parent', '0'),
(109, 26, '_menu_item_object_id', '6'),
(110, 26, '_menu_item_object', 'page'),
(111, 26, '_menu_item_target', ''),
(112, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(113, 26, '_menu_item_xfn', ''),
(114, 26, '_menu_item_url', ''),
(115, 26, '_menu_item_orphaned', '1499373651'),
(116, 27, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(117, 27, '_edit_last', '1'),
(118, 27, '_wp_page_template', 'default'),
(119, 27, '_wpb_vc_js_status', 'false'),
(120, 27, '_edit_lock', '1499373710:1'),
(121, 29, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(122, 29, '_menu_item_type', 'post_type'),
(123, 29, '_menu_item_menu_item_parent', '0'),
(124, 29, '_menu_item_object_id', '27'),
(125, 29, '_menu_item_object', 'page'),
(126, 29, '_menu_item_target', ''),
(127, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(128, 29, '_menu_item_xfn', ''),
(129, 29, '_menu_item_url', ''),
(131, 30, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(132, 30, '_menu_item_type', 'post_type'),
(133, 30, '_menu_item_menu_item_parent', '0'),
(134, 30, '_menu_item_object_id', '18'),
(135, 30, '_menu_item_object', 'page'),
(136, 30, '_menu_item_target', ''),
(137, 30, '_menu_item_classes', 'a:1:{i:0;s:13:"btn-political";}'),
(138, 30, '_menu_item_xfn', ''),
(139, 30, '_menu_item_url', ''),
(141, 31, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(142, 31, '_menu_item_type', 'post_type'),
(143, 31, '_menu_item_menu_item_parent', '0'),
(144, 31, '_menu_item_object_id', '15'),
(145, 31, '_menu_item_object', 'page'),
(146, 31, '_menu_item_target', ''),
(147, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(148, 31, '_menu_item_xfn', ''),
(149, 31, '_menu_item_url', ''),
(151, 32, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(152, 32, '_menu_item_type', 'post_type'),
(153, 32, '_menu_item_menu_item_parent', '0'),
(154, 32, '_menu_item_object_id', '14'),
(155, 32, '_menu_item_object', 'page'),
(156, 32, '_menu_item_target', ''),
(157, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(158, 32, '_menu_item_xfn', ''),
(159, 32, '_menu_item_url', ''),
(161, 33, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(162, 33, '_menu_item_type', 'post_type'),
(163, 33, '_menu_item_menu_item_parent', '0'),
(164, 33, '_menu_item_object_id', '12'),
(165, 33, '_menu_item_object', 'page'),
(166, 33, '_menu_item_target', ''),
(167, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(168, 33, '_menu_item_xfn', ''),
(169, 33, '_menu_item_url', ''),
(171, 34, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(172, 34, '_menu_item_type', 'post_type'),
(173, 34, '_menu_item_menu_item_parent', '0'),
(174, 34, '_menu_item_object_id', '10'),
(175, 34, '_menu_item_object', 'page'),
(176, 34, '_menu_item_target', ''),
(177, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(178, 34, '_menu_item_xfn', ''),
(179, 34, '_menu_item_url', ''),
(181, 35, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(182, 35, '_menu_item_type', 'post_type'),
(183, 35, '_menu_item_menu_item_parent', '0'),
(184, 35, '_menu_item_object_id', '8'),
(185, 35, '_menu_item_object', 'page'),
(186, 35, '_menu_item_target', ''),
(187, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(188, 35, '_menu_item_xfn', ''),
(189, 35, '_menu_item_url', ''),
(190, 36, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(191, 36, '_menu_item_type', 'post_type'),
(192, 36, '_menu_item_menu_item_parent', '25'),
(193, 36, '_menu_item_object_id', '2'),
(194, 36, '_menu_item_object', 'page'),
(195, 36, '_menu_item_target', ''),
(196, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(197, 36, '_menu_item_xfn', ''),
(198, 36, '_menu_item_url', ''),
(200, 37, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(201, 37, '_menu_item_type', 'post_type'),
(202, 37, '_menu_item_menu_item_parent', '25'),
(203, 37, '_menu_item_object_id', '2'),
(204, 37, '_menu_item_object', 'page'),
(205, 37, '_menu_item_target', ''),
(206, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(207, 37, '_menu_item_xfn', ''),
(208, 37, '_menu_item_url', ''),
(210, 38, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(211, 38, '_menu_item_type', 'post_type'),
(212, 38, '_menu_item_menu_item_parent', '25'),
(213, 38, '_menu_item_object_id', '2'),
(214, 38, '_menu_item_object', 'page'),
(215, 38, '_menu_item_target', ''),
(216, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(217, 38, '_menu_item_xfn', ''),
(218, 38, '_menu_item_url', ''),
(220, 39, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(221, 39, '_edit_last', '1'),
(222, 39, 'field_595f8c746356f', 'a:8:{s:3:"key";s:19:"field_595f8c746356f";s:5:"label";s:6:"Footer";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(223, 39, 'field_595f8c9363570', 'a:11:{s:3:"key";s:19:"field_595f8c9363570";s:5:"label";s:11:"Footer logo";s:4:"name";s:11:"footer_logo";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(224, 39, 'field_595f8cc763571', 'a:13:{s:3:"key";s:19:"field_595f8cc763571";s:5:"label";s:8:"Contacts";s:4:"name";s:8:"contacts";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:2:{i:0;a:14:{s:3:"key";s:19:"field_595f8d0463572";s:5:"label";s:7:"Address";s:4:"name";s:7:"address";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"3";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}i:1;a:15:{s:3:"key";s:19:"field_595f8e5e63573";s:5:"label";s:5:"Phone";s:4:"name";s:5:"phone";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}}s:7:"row_min";s:0:"";s:9:"row_limit";s:0:"";s:6:"layout";s:3:"row";s:12:"button_label";s:7:"Add Row";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(225, 39, 'field_595f8ed563574', 'a:11:{s:3:"key";s:19:"field_595f8ed563574";s:5:"label";s:9:"Copyright";s:4:"name";s:9:"copyright";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:2:"no";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(226, 39, 'field_595f8f0063575', 'a:13:{s:3:"key";s:19:"field_595f8f0063575";s:5:"label";s:12:"Social links";s:4:"name";s:12:"social_links";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:2:{i:0;a:13:{s:3:"key";s:19:"field_595f8f3463576";s:5:"label";s:4:"Icon";s:4:"name";s:4:"icon";s:4:"type";s:12:"font-awesome";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:12:"column_width";s:2:"30";s:13:"default_value";s:4:"null";s:11:"save_format";s:5:"class";s:10:"allow_null";s:1:"0";s:10:"enqueue_fa";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}i:1;a:15:{s:3:"key";s:19:"field_595f905bb63cd";s:5:"label";s:4:"Link";s:4:"name";s:4:"link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:12:"column_width";s:2:"70";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}}s:7:"row_min";s:0:"";s:9:"row_limit";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(228, 39, 'position', 'normal'),
(229, 39, 'layout', 'no_box'),
(230, 39, 'hide_on_screen', ''),
(231, 39, '_edit_lock', '1499457697:1'),
(232, 40, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(233, 40, '_edit_last', '1'),
(234, 40, '_edit_lock', '1499435724:1'),
(235, 41, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(238, 42, '_wp_attached_file', '2017/07/logo.png'),
(239, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:394;s:6:"height";i:38;s:4:"file";s:16:"2017/07/logo.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x38.png";s:5:"width";i:150;s:6:"height";i:38;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"logo-300x29.png";s:5:"width";i:300;s:6:"height";i:29;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(240, 43, '_wp_attached_file', '2017/07/logo_white.png'),
(241, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:394;s:6:"height";i:38;s:4:"file";s:22:"2017/07/logo_white.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"logo_white-150x38.png";s:5:"width";i:150;s:6:"height";i:38;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"logo_white-300x29.png";s:5:"width";i:300;s:6:"height";i:29;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(244, 39, 'field_595f956bd9f85', 'a:8:{s:3:"key";s:19:"field_595f956bd9f85";s:5:"label";s:6:"Header";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(245, 39, 'field_595f9582d9f86', 'a:11:{s:3:"key";s:19:"field_595f9582d9f86";s:5:"label";s:4:"Logo";s:4:"name";s:4:"logo";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(248, 39, 'rule', 'a:5:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:11:"acf-options";s:8:"order_no";i:0;s:8:"group_no";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `lc_posts`
--

CREATE TABLE IF NOT EXISTS `lc_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lc_posts`
--

INSERT INTO `lc_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-07-06 18:59:51', '2017-07-06 18:59:51', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-07-06 18:59:51', '2017-07-06 18:59:51', '', 0, 'http://lukens/?p=1', 0, 'post', '', 1),
(2, 1, '2017-07-06 18:59:51', '2017-07-06 18:59:51', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://lukens/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-07-06 18:59:51', '2017-07-06 18:59:51', '', 0, 'http://lukens/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-07-06 19:00:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-07-06 19:00:06', '0000-00-00 00:00:00', '', 0, 'http://lukens/?p=3', 0, 'post', '', 0),
(5, 1, '2017-07-06 19:02:23', '2017-07-06 19:02:23', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nTLC "[your-subject]"\n[your-name] <wordpress@lukens>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on TLC (http://lukens)\nsuddyadred@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nTLC "[your-subject]"\nTLC <wordpress@lukens>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on TLC (http://lukens)\n[your-email]\nReply-To: suddyadred@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-07-06 19:02:23', '2017-07-06 19:02:23', '', 0, 'http://lukens/?post_type=wpcf7_contact_form&p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2017-07-06 20:36:59', '2017-07-06 20:36:59', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-07-06 20:36:59', '2017-07-06 20:36:59', '', 0, 'http://lukens/home/', 0, 'page', '', 0),
(7, 1, '2017-07-06 20:36:59', '2017-07-06 20:36:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-07-06 20:36:59', '2017-07-06 20:36:59', '', 6, 'http://lukens/2017/07/06/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-07-06 20:37:32', '2017-07-06 20:37:32', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2017-07-06 20:37:32', '2017-07-06 20:37:32', '', 0, 'http://lukens/services/', 0, 'page', '', 0),
(9, 1, '2017-07-06 20:37:32', '2017-07-06 20:37:32', '', 'Services', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-07-06 20:37:32', '2017-07-06 20:37:32', '', 8, 'http://lukens/2017/07/06/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-07-06 20:38:59', '2017-07-06 20:38:59', '', 'Case studies', '', 'publish', 'closed', 'closed', '', 'case-studies', '', '', '2017-07-06 20:38:59', '2017-07-06 20:38:59', '', 0, 'http://lukens/case-studies/', 0, 'page', '', 0),
(11, 1, '2017-07-06 20:38:59', '2017-07-06 20:38:59', '', 'Case studies', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-07-06 20:38:59', '2017-07-06 20:38:59', '', 10, 'http://lukens/2017/07/06/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-07-06 20:39:25', '2017-07-06 20:39:25', '', 'The latest', '', 'publish', 'closed', 'closed', '', 'the-latest', '', '', '2017-07-06 20:39:25', '2017-07-06 20:39:25', '', 0, 'http://lukens/the-latest/', 0, 'page', '', 0),
(13, 1, '2017-07-06 20:39:25', '2017-07-06 20:39:25', '', 'The latest', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-07-06 20:39:25', '2017-07-06 20:39:25', '', 12, 'http://lukens/2017/07/06/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-07-06 20:40:00', '2017-07-06 20:40:00', '', 'Leadership', '', 'publish', 'closed', 'closed', '', 'leadership', '', '', '2017-07-06 20:40:00', '2017-07-06 20:40:00', '', 0, 'http://lukens/leadership/', 0, 'page', '', 0),
(15, 1, '2017-07-06 20:40:09', '2017-07-06 20:40:09', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-07-06 20:40:09', '2017-07-06 20:40:09', '', 0, 'http://lukens/contact/', 0, 'page', '', 0),
(16, 1, '2017-07-06 20:40:00', '2017-07-06 20:40:00', '', 'Leadership', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-07-06 20:40:00', '2017-07-06 20:40:00', '', 14, 'http://lukens/2017/07/06/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-07-06 20:40:09', '2017-07-06 20:40:09', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-07-06 20:40:09', '2017-07-06 20:40:09', '', 15, 'http://lukens/2017/07/06/15-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-07-06 20:40:20', '2017-07-06 20:40:20', '', 'Political', '', 'publish', 'closed', 'closed', '', 'political', '', '', '2017-07-06 20:40:20', '2017-07-06 20:40:20', '', 0, 'http://lukens/political/', 0, 'page', '', 0),
(19, 1, '2017-07-06 20:40:20', '2017-07-06 20:40:20', '', 'Political', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2017-07-06 20:40:20', '2017-07-06 20:40:20', '', 18, 'http://lukens/2017/07/06/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2017-07-06 20:41:32', '2017-07-06 20:41:32', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2017-07-07 06:52:51', '2017-07-07 06:52:51', '', 0, 'http://lukens/2017/07/06/20/', 9, 'nav_menu_item', '', 0),
(21, 1, '2017-07-06 20:41:32', '2017-07-06 20:41:32', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2017-07-07 06:52:51', '2017-07-07 06:52:51', '', 0, 'http://lukens/2017/07/06/21/', 8, 'nav_menu_item', '', 0),
(22, 1, '2017-07-06 20:41:32', '2017-07-06 20:41:32', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2017-07-07 06:52:51', '2017-07-07 06:52:51', '', 0, 'http://lukens/2017/07/06/22/', 7, 'nav_menu_item', '', 0),
(23, 1, '2017-07-06 20:41:32', '2017-07-06 20:41:32', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2017-07-07 06:52:51', '2017-07-07 06:52:51', '', 0, 'http://lukens/2017/07/06/23/', 6, 'nav_menu_item', '', 0),
(24, 1, '2017-07-06 20:41:32', '2017-07-06 20:41:32', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2017-07-07 06:52:51', '2017-07-07 06:52:51', '', 0, 'http://lukens/2017/07/06/24/', 5, 'nav_menu_item', '', 0),
(25, 1, '2017-07-06 20:41:32', '2017-07-06 20:41:32', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2017-07-07 06:52:51', '2017-07-07 06:52:51', '', 0, 'http://lukens/2017/07/06/25/', 1, 'nav_menu_item', '', 0),
(26, 1, '2017-07-06 20:40:51', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-07-06 20:40:51', '0000-00-00 00:00:00', '', 0, 'http://lukens/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2017-07-06 20:44:05', '2017-07-06 20:44:05', '', 'Join the team', '', 'publish', 'closed', 'closed', '', 'join-the-team', '', '', '2017-07-06 20:44:05', '2017-07-06 20:44:05', '', 0, 'http://lukens/join-the-team/', 0, 'page', '', 0),
(28, 1, '2017-07-06 20:44:05', '2017-07-06 20:44:05', '', 'Join the team', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-07-06 20:44:05', '2017-07-06 20:44:05', '', 27, 'http://lukens/2017/07/06/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-07-06 20:45:17', '2017-07-06 20:45:17', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2017-07-07 06:25:28', '2017-07-07 06:25:28', '', 0, 'http://lukens/2017/07/06/29/', 6, 'nav_menu_item', '', 0),
(30, 1, '2017-07-06 20:45:17', '2017-07-06 20:45:17', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2017-07-07 06:25:28', '2017-07-07 06:25:28', '', 0, 'http://lukens/2017/07/06/30/', 7, 'nav_menu_item', '', 0),
(31, 1, '2017-07-06 20:45:16', '2017-07-06 20:45:16', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2017-07-07 06:25:28', '2017-07-07 06:25:28', '', 0, 'http://lukens/2017/07/06/31/', 5, 'nav_menu_item', '', 0),
(32, 1, '2017-07-06 20:45:16', '2017-07-06 20:45:16', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2017-07-07 06:25:28', '2017-07-07 06:25:28', '', 0, 'http://lukens/2017/07/06/32/', 4, 'nav_menu_item', '', 0),
(33, 1, '2017-07-06 20:45:16', '2017-07-06 20:45:16', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2017-07-07 06:25:28', '2017-07-07 06:25:28', '', 0, 'http://lukens/2017/07/06/33/', 3, 'nav_menu_item', '', 0),
(34, 1, '2017-07-06 20:45:16', '2017-07-06 20:45:16', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2017-07-07 06:25:28', '2017-07-07 06:25:28', '', 0, 'http://lukens/2017/07/06/34/', 2, 'nav_menu_item', '', 0),
(35, 1, '2017-07-06 20:45:16', '2017-07-06 20:45:16', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2017-07-07 06:25:28', '2017-07-07 06:25:28', '', 0, 'http://lukens/2017/07/06/35/', 1, 'nav_menu_item', '', 0),
(36, 1, '2017-07-07 06:52:51', '2017-07-07 06:52:51', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2017-07-07 06:52:51', '2017-07-07 06:52:51', '', 0, 'http://lukens/2017/07/07/36/', 2, 'nav_menu_item', '', 0),
(37, 1, '2017-07-07 06:52:51', '2017-07-07 06:52:51', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2017-07-07 06:52:51', '2017-07-07 06:52:51', '', 0, 'http://lukens/2017/07/07/37/', 3, 'nav_menu_item', '', 0),
(38, 1, '2017-07-07 06:52:51', '2017-07-07 06:52:51', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2017-07-07 06:52:51', '2017-07-07 06:52:51', '', 0, 'http://lukens/2017/07/07/38/', 4, 'nav_menu_item', '', 0),
(39, 1, '2017-07-07 13:40:28', '2017-07-07 13:40:28', '', 'Theme Options', '', 'publish', 'closed', 'closed', '', 'acf_theme-options', '', '', '2017-07-07 14:10:22', '2017-07-07 14:10:22', '', 0, 'http://lukens/?acf=acf_theme-options', 0, 'acf', '', 0),
(40, 1, '2017-07-07 13:41:49', '2017-07-07 13:41:49', '', 'Option Page', '', 'publish', 'closed', 'closed', '', 'option-page', '', '', '2017-07-07 13:41:49', '2017-07-07 13:41:49', '', 0, 'http://lukens/?acf_option_page=option-page', 0, 'acf_option_page', '', 0),
(41, 1, '2017-07-07 13:42:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-07-07 13:42:21', '0000-00-00 00:00:00', '', 0, 'http://lukens/?post_type=acf_option_page&p=41', 0, 'acf_option_page', '', 0),
(42, 1, '2017-07-07 14:00:45', '2017-07-07 14:00:45', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2017-07-07 14:00:45', '2017-07-07 14:00:45', '', 0, 'http://lukens/wp-content/uploads/2017/07/logo.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2017-07-07 14:00:47', '2017-07-07 14:00:47', '', 'logo_white', '', 'inherit', 'open', 'closed', '', 'logo_white', '', '', '2017-07-07 14:00:47', '2017-07-07 14:00:47', '', 0, 'http://lukens/wp-content/uploads/2017/07/logo_white.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lc_termmeta`
--

CREATE TABLE IF NOT EXISTS `lc_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lc_terms`
--

CREATE TABLE IF NOT EXISTS `lc_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lc_terms`
--

INSERT INTO `lc_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lc_term_relationships`
--

CREATE TABLE IF NOT EXISTS `lc_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lc_term_relationships`
--

INSERT INTO `lc_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(29, 3, 0),
(30, 3, 0),
(31, 3, 0),
(32, 3, 0),
(33, 3, 0),
(34, 3, 0),
(35, 3, 0),
(36, 2, 0),
(37, 2, 0),
(38, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lc_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `lc_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lc_term_taxonomy`
--

INSERT INTO `lc_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 9),
(3, 3, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `lc_usermeta`
--

CREATE TABLE IF NOT EXISTS `lc_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lc_usermeta`
--

INSERT INTO `lc_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'lukens-admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'lc_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'lc_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', 'vc_pointers_backend_editor'),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"58c19d7651094a4698e70ea923f403427d69e83e5d247e07a78f749af96865bf";a:4:{s:10:"expiration";i:1500577204;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:5:"login";i:1499367604;}}'),
(16, 1, 'lc_user-settings', 'editor=html&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=350px&edit_element_vcUIPanelTop=108px&libraryContent=browse'),
(17, 1, 'lc_user-settings-time', '1499367600'),
(18, 1, 'lc_dashboard_quick_press_last_post_id', '3'),
(19, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:29:"add-post-type-acf_option_page";i:1;s:12:"add-post_tag";}'),
(22, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Table structure for table `lc_users`
--

CREATE TABLE IF NOT EXISTS `lc_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lc_users`
--

INSERT INTO `lc_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'lukens-admin', '$P$Bx5QUuy01Eo0Tsb/nbKBD14iMI4ta/0', 'lukens-admin', 'suddyadred@gmail.com', '', '2017-07-06 18:59:51', '', 0, 'lukens-admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lc_commentmeta`
--
ALTER TABLE `lc_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `lc_comments`
--
ALTER TABLE `lc_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `lc_links`
--
ALTER TABLE `lc_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `lc_options`
--
ALTER TABLE `lc_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `lc_postmeta`
--
ALTER TABLE `lc_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `lc_posts`
--
ALTER TABLE `lc_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `lc_termmeta`
--
ALTER TABLE `lc_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `lc_terms`
--
ALTER TABLE `lc_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `lc_term_relationships`
--
ALTER TABLE `lc_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `lc_term_taxonomy`
--
ALTER TABLE `lc_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `lc_usermeta`
--
ALTER TABLE `lc_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `lc_users`
--
ALTER TABLE `lc_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lc_commentmeta`
--
ALTER TABLE `lc_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lc_comments`
--
ALTER TABLE `lc_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lc_links`
--
ALTER TABLE `lc_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lc_options`
--
ALTER TABLE `lc_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `lc_postmeta`
--
ALTER TABLE `lc_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT for table `lc_posts`
--
ALTER TABLE `lc_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `lc_termmeta`
--
ALTER TABLE `lc_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lc_terms`
--
ALTER TABLE `lc_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lc_term_taxonomy`
--
ALTER TABLE `lc_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lc_usermeta`
--
ALTER TABLE `lc_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `lc_users`
--
ALTER TABLE `lc_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
