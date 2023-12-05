module form

pub struct Form {
pub:
	title       string = 'Get in touch'
	description string = 'This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text but is random or otherwise generated.'
	names       []Data = [
		Data{
			label: 'First name'
			id: 'first-name'
		},
		Data{
			label: 'Last name'
			id: 'last-name'
		},
	]
	data []Data = [
		Data{
			label: 'Company'
			id: 'company'
		},
		Data{
			label: 'Email'
			id: 'email'
		},
		Data{
			label: 'Subject'
			id: 'subject'
		},
	]
	message Data = Data{
		label: 'Message'
		id: 'message'
	}
}

pub struct Data {
pub:
	label string
	id    string
}

pub fn (component Form) html() string {
	return $tmpl('./templates/form.html')
}
