module cta

pub struct CTA {
pub:
	header       string = 'Summer Sale'
	subheader    string = 'Up to 70% off.'
	description  string = 'This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text.This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text.This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text.This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text.This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text.This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text.'
	button_label string = 'Save now'
	button_url   string = '/save_now'
	image        string = 'https://images.unsplash.com/photo-1505846951821-e25bacf2eccd?auto=format&q=75&fit=crop&crop=top&w=1000&h=500'
}

pub fn (component CTA) html() string {
	return $tmpl('./templates/cta.html')
}
