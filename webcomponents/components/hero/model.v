module hero

pub struct Hero {
pub:
	subtext        string = 'Very proud to introduce'
	header         string = 'Revolutionary way to build the web'
	description    string = 'This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text but is random.'
	blue_btn_label string = 'Start now'
	blue_btn_url   string = '/#'
	gray_btn_label string = 'Take tour'
	gray_btn_url   string = '/#'
	image          string = 'https://images.unsplash.com/photo-1618004912476-29818d81ae2e?auto=format&q=75&fit=crop&w=1000'
}

pub fn (component Hero) html() string {
	return $tmpl('./templates/hero.html')
}
