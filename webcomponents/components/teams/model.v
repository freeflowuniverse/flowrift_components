module teams

pub struct Teams {
pub mut:
	title       string = 'Meet our Team'
	description string = 'This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text but is random or otherwise generated.'
	teams       []Team = []Team{len: 6}
}

pub struct Team {
pub mut:
	name string = 'John McCulling'
	img  string = 'https://images.unsplash.com/photo-1567515004624-219c11d31f2e??auto=format&q=75&fit=crop&w=256'
	job  string = 'Founder / CEO'
}

pub fn (component Teams) html() string {
	return $tmpl('./templates/teams.html')
}
