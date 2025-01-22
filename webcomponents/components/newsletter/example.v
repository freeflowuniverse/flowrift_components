module newsletter

import freeflowuniverse.herolib.core.texttools

pub fn example_data() string {
	c := "
	!!flowrift.newsletter
		description:'Get the latest updates'
		signup:'Sign up for our newsletter'
		legal:'By signing up to our newsletter you agree to our Term of Service and Privacy Policy.'
		image:'https://images.unsplash.com/photo-1604076913837-52ab5629fba9?auto=format&q=75&fit=crop&w=750'
	"
	return texttools.dedent(c) // important to allways dedent, otherwise playbook will not work
}

pub fn example() !string {
	return process(example_data())!
}
