module form

import freeflowuniverse.crystallib.core.texttools

pub fn example_data() string {
	c := "
	!!flowrift.form_contact
		title: 'My Form'
		description: 'This is a form that demonstrates and example.'
		post_url: 'https://denismukwege2023.com/index.php/contact'
	"

	return texttools.dedent(c) // important to allways dedent, otherwise playbook will not work
}

pub fn example() !string {
	return process(example_data())!
}
