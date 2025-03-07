module banner

import freeflowuniverse.herolib.core.texttools

pub fn example_data() string {
	c := "
	!!flowrift.banner
		text: 'This is the text of the banner'
		button_label: 'Click me!'
		button_url: '/redirect'
	"

	return texttools.dedent(c) // important to allways dedent, otherwise playbook will not work
}

pub fn example() !string {
	return process(example_data())!
}
