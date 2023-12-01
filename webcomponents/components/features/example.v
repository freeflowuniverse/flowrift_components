module features

import freeflowuniverse.crystallib.core.texttools

pub fn example_data() string {
	t := 'This is a section of some simple filler text...'
	c := '
	!!flowrift.features
		title: My features
		description: Describing my features
		
	!!flowrift.feature
		title: Some Feature
		description: describing my example feature
	'

	return texttools.dedent(c) // important to allways dedent, otherwise actionparser will not work
}

pub fn example() !string {
	return process(example_data())!
}
