module banner

pub struct Banner {
pub:
	text         string = 'This is a section of some simple filler text, also known as placeholder text.'
	button_label string = 'Learn more'
	button_url   string = '/learn_more'
}

pub fn (component Banner) html() string {
	return $tmpl('./templates/banner.html')
}
