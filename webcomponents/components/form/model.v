module form

pub struct Form {
pub:
	title       string  = 'Get in touch'
	description string  = 'This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text but is random or otherwise generated.'
	inputs      []Input = [
		Input{
			label: 'First name'
			id: 'first-name'
		},
		Input{
			label: 'Last name'
			id: 'last-name'
		},
		Input{
			label: 'Company'
			id: 'company'
		},
		Input{
			label: 'Email'
			id: 'email'
		},
		Input{
			label: 'Subject'
			id: 'subject'
		},
	]
	message Input = Input{
		label: 'Message'
		id: 'message'
	}
}

pub struct Input {
pub:
	label string
	id    string
}

pub fn (component Form) html() string {
	return $tmpl('./templates/form.html')
}
