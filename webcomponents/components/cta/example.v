module cta

import freeflowuniverse.herolib.core.texttools

pub fn example_data() string {
	c := "
	!!flowrift.cta
		header: 'Call to Action!'
		subheader: 'Up to 70% off.'
		description: 'This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text.'
		button_label: 'Save now'
		button_url: '/save_now'
		image: 'https://images.unsplash.com/photo-1505846951821-e25bacf2eccd?auto=format&q=75&fit=crop&crop=top&w=1000&h=500'
	"

	return texttools.dedent(c) // important to allways dedent, otherwise playbook will not work
}

pub fn example() !string {
	return process(example_data())!
}
