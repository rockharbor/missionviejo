<?php
/**
 * RH Mission Viejo theme
 * 
 * @package rockharbor
 * @subpackage missionviejo
 */
class ChildTheme extends RockharborThemeBase {
		
/**
 * List of options for this theme
 * 
 * @var array
 */
	protected $themeOptions = array(
		'slug' => 'mission_viejo',
		'short_name' => 'Mission Viejo'
	);

/**
 * Theme constructor 
 */
	public function __construct() {
		parent::__construct();
		
		$this->_customShortcodes();
	}

/**
 * Custom shortcodes for RH Mission Viejo 
 */
	private function _customShortcodes() {
		$this->options('365prayer_email', 'bhill@rockharbor.org');
		add_shortcode('365prayer', array($this, 'prayer'));
	}
	
/**
 * Renders the 365 prayer email
 * 
 * @return string
 */
	public function prayer() {
		$this->set('email', $this->options('365prayer_email'));
		return $this->render('365prayer');
	}
}