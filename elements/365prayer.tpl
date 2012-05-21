<form action="<?php echo $theme->info('base_url') . '/action.php'; ?>" method="POST" id="365-prayer">
	<?php
	echo $theme->Html->input('name', array('div' => 'half', 'label' => 'Name'));
	echo $theme->Html->input('email', array('type' => 'email', 'div' => 'half', 'label' => 'Email'));
	echo $theme->Html->tag('label', 'Prayer Date');
	echo '<br />';
	echo $theme->Html->input('prayer_date_month', array(
		'type' => 'select', 
		'label' => false, 
		'options' => array(
			1 => 'January',
			2 => 'February',
			3 => 'March',
			4 => 'April',
			5 => 'May',
			6 => 'June',
			7 => 'July',
			8 => 'August',
			9 => 'September',
			10 => 'October',
			11 => 'November',
			12 => 'December',
		),
		'div' => false,
		'after' => '-'
	));
	echo $theme->Html->input('prayer_date_date', array(
		'type' => 'select', 
		'label' => false, 
		'options' => array(
			1 => '1',
			2 => '2',
			3 => '3',
			4 => '4',
			5 => '5',
			6 => '6',
			7 => '7',
			8 => '8',
			9 => '9',
			10 => '10',
			11 => '11',
			12 => '12',
			13 => '13',
			14 => '14',
			15 => '15',
			16 => '16',
			17 => '17',
			18 => '18',
			19 => '19',
			20 => '20',
			21 => '21',
			22 => '22',
			23 => '23',
			24 => '24',
			25 => '25',
			26 => '26',
			27 => '27',
			28 => '28',
			29 => '29',
			30 => '30',
			31 => '31',
		),
		'div' => false,
		'after' => '-'
	));
	echo $theme->Html->input('prayer_date_year', array(
		'type' => 'select', 
		'label' => false, 
		'options' => array(
			date('Y') => date('Y'),
		),
		'div' => false
	));
	echo '<br />';
	echo $theme->Html->input('action', array('type' => 'hidden', 'value' => 'email'));
	echo $theme->Html->input('type', array('type' => 'hidden', 'value' => '365prayer'));
	echo $theme->Html->captcha();
	echo $theme->Html->input('Subscribe', array('type' => 'submit', 'label' => false, 'div' => 'submit'));
	?>
</form>
