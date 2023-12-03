module features

pub struct Features {
pub mut:
	title       string    = 'Features'
	description string    = 'A list of features'
	features    []Feature = []Feature{len: 6}
}

pub struct Feature {
pub mut:
	title       string = 'A feature'
	logo_path   string = '/'
	description string = 'The description of a feature.'
}

pub fn (component Features) html() string {
	return $tmpl('./templates/features.html')
}
