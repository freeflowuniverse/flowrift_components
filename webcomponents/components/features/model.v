module features

pub struct Features {
pub mut:
	title       string
	description string
	features    []Feature
}

pub struct Feature {
pub mut:
	title       string
	logo_path   string
	description string
}

pub fn (component Features) html() string {
	return $tmpl('./templates/features.html')
}

pub fn main() {
	component := Features{
		title: 'My features'
		features: [
			Feature{
				title: 'Example featuer'
			},
		]
	}
}
