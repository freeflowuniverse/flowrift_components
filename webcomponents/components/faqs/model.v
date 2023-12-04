module faqs

pub struct FAQs {
pub mut:
	title       string = 'Frequently asked questions'
	description string = 'This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text but is random or otherwise generated.'
	faqs        []FAQ  = []FAQ{len: 6}
}

pub struct FAQ {
pub mut:
	title       string = 'How does the product work?'
	description string = 'This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text.'
}

pub fn (component FAQs) html() string {
	return $tmpl('./templates/faqs.html')
}
