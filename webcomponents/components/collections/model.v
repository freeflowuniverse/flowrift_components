module collections

pub struct Collections {
pub mut:
	title       string       = 'Collections'
	button      string       = 'Show more'
	button_link string       = '#'
	collections []Collection = []Collection{len: 4}
}

pub struct Collection {
pub mut:
	link     string = '#'
	image    string = 'https://images.unsplash.com/photo-1552374196-1ab2a1c593e8?auto=format&q=75&fit=crop&crop=top&w=600&h=700'
	subtitle string = 'Men'
	title    string = 'Business Causual'
}

pub fn (component Collections) html() string {
	return $tmpl('./templates/collections.html')
}
