module stars

import freeflowuniverse.crystallib.core.texttools

pub fn example_data() string {
	c := "
	!!flowrift.stars stars:3 total:5		
	"
	return texttools.dedent(c) // important to allways dedent, otherwise playbook will not work
}

pub fn example() !string {
	return process(example_data())!
}
