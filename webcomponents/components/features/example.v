module features

import freeflowuniverse.herolib.core.texttools

pub fn example_data() string {
	c := '
	!!flowrift.features
		title: My features
		description: Describing my features
		
	!!flowrift.feature
		title: Some Feature
		description: describing my example feature
	'

	return texttools.dedent(c) // important to allways dedent, otherwise playbook will not work
}

pub fn example() !string {
	return process(example_data())!
}
