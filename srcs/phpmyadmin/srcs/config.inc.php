<?php
/* vim: set expandtab sw=4 ts=4 sts=4: */
/**
 * phpMyAdmin sample configuration, you can use it as base for
 * manual configuration. For easier setup you can use setup/
 *
 * All directives are explained in documentation in the doc/ folder
 * or at <https://docs.phpmyadmin.net/>.
 *
 * @package PhpMyAdmin
 */
declare(strict_types=1);

/**
 * This is needed for cookie based authentication to encrypt password in
 * cookie. Needs to be 32 chars long.
 */
$cfg['PmaAbsoluteUri'] = './';
$cfg['blowfish_secret'] = 'qtdRoGmbc9{8IZr323xYcSN]0s)r$9b_JUnb{~Xz';

/**
 * Servers configuration
 */
$i = 0;

/**
 * First server
 */
$i++;
/* Authentication type */
$cfg['Servers'][$i]['auth_type'] = 'cookie';
/* Server parameters */
$cfg['Servers'][$i]['host'] = 'mysql';
$cfg['Servers'][$i]['port'] = 3306; 
$cfg['Servers'][$i]['connect_type'] = 'tcp';
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = true;
$cfg['Servers'][$i]['extension'] = 'mysqli';

/** 
 * phpMyAdmin configuration storage settings.
 */

/* User used to manipulate with storage */
$cfg['Servers'][$i]['controlhost'] = '';
$cfg['Servers'][$i]['controlport'] = '';
$cfg['Servers'][$i]['controluser'] = 'root';
$cfg['Servers'][$i]['controlpass'] = '1234';

/* Storage database and tables */
$cfg['Servers'][$i]['pma__bookmark'] = 'pma__bookmark';
$cfg['Servers'][$i]['pma__relation'] = 'pma__relation';
$cfg['Servers'][$i]['pma__table_info'] = 'pma__table_info';
$cfg['Servers'][$i]['pma__table_coords'] = 'pma__table_coords';
$cfg['Servers'][$i]['pma__pdf_pages'] = 'pma__pdf_pages';
$cfg['Servers'][$i]['pma__column_info'] = 'pma__column_info';
$cfg['Servers'][$i]['pma__table_uiprefs'] = 'pma__history';
$cfg['Servers'][$i]['pma__table_uiprefs'] = 'pma__table_uiprefs';
$cfg['Servers'][$i]['pma__tracking'] = 'pma__tracking';
$cfg['Servers'][$i]['pma__userconfig'] = 'pma__userconfig';
$cfg['Servers'][$i]['pma__recent'] = 'pma__recent';
$cfg['Servers'][$i]['pma__users'] = 'pma__users';
$cfg['Servers'][$i]['pma__usergroups'] = 'pma__usergroups';
$cfg['Servers'][$i]['pma__navigationhiding'] = 'pma__navigationhiding';
$cfg['Servers'][$i]['pma__savedsearches'] = 'pma__savedsearches';
$cfg['Servers'][$i]['pma__central_columns'] = 'pma__central_columns';
$cfg['Servers'][$i]['pma__designer_coords'] = 'pma__designer_coords';
$cfg['Servers'][$i]['pma__designer_settings'] = 'pma__designer_settings';
$cfg['Servers'][$i]['pma__export_templates'] = 'pma__export_templates';
$cfg['Servers'][$i]['pma__favorite'] = 'pma__favorite';

/**
 * End of servers configuration
 */

/**
 * Directories for saving/loading files from server
 */
$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';

/**
 * Whether to display icons or text or both icons and text in table row
 * action segment. Value can be either of 'icons', 'text' or 'both'.
 * default = 'both'
 */
//$cfg['RowActionType'] = 'icons';

/**
 * Defines whether a user should be displayed a "show all (records)"
 * button in browse mode or not.
 * default = false
 */
//$cfg['ShowAll'] = true;

/**
 * Number of rows displayed when browsing a result set. If the result
 * set contains more rows, "Previous" and "Next".
 * Possible values: 25, 50, 100, 250, 500
 * default = 25
 */
//$cfg['MaxRows'] = 50;

/**
 * Disallow editing of binary fields
 * valid values are:
 *   false    allow editing
 *   'blob'   allow editing except for BLOB fields
 *   'noblob' disallow editing except for BLOB fields
 *   'all'    disallow editing
 * default = 'blob'
 */
//$cfg['ProtectBinary'] = false;

/**
 * Default language to use, if not browser-defined or user-defined
 * (you find all languages in the locale folder)
 * uncomment the desired line:
 * default = 'en'
 */
//$cfg['DefaultLang'] = 'en';
//$cfg['DefaultLang'] = 'de';

/**
 * How many columns should be used for table display of a database?
 * (a value larger than 1 results in some information being hidden)
 * default = 1
 */
//$cfg['PropertiesNumColumns'] = 2;

/**
 * Set to true if you want DB-based query history.If false, this utilizes
 * JS-routines to display query history (lost by window close)
 *
 * This requires configuration storage enabled, see above.
 * default = false
 */
//$cfg['QueryHistoryDB'] = true;

/**
 * When using DB-based query history, how many entries should be kept?
 * default = 25
 */
//$cfg['QueryHistoryMax'] = 100;

/**
 * Whether or not to query the user before sending the error report to
 * the phpMyAdmin team when a JavaScript error occurs
 *
 * Available options
 * ('ask' | 'always' | 'never')
 * default = 'ask'
 */
//$cfg['SendErrorReports'] = 'always';

/**
 * You can find more configuration options in the documentation
 * in the doc/ folder or at <https://docs.phpmyadmin.net/>.
 */