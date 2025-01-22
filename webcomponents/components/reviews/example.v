module reviews

import freeflowuniverse.herolib.core.texttools

pub fn example_data() string {
	t := 'This is a section of some simple filler text...'
	c := "
	!!flowrift.reviews
		stars_total:5
		description:Customer Reviews
		mode:'horizontal'
		nr_reviews: 80
		stars_avg:4
		
	!!flowrift.review
		name:'John McCulling'
		date:'28/8/2021'
		stars:5
		description:'${t}'

	!!flowrift.review
		name:'Someone Else'
		date:'28/8/2021'
		stars:2
		description:'${t}'

	!!flowrift.review
		name:'Kate Berg'
		date:'28/8/2021'
		stars:4
		description:'${t}'

	!!flowrift.review
		name:'Mr Mumba'
		date:'28/8/2021'
		stars:1
		description:'${t}'	

	!!flowrift.review
		name:'Kate Berg'
		date:'28/8/2021'
		stars:4
		description:'${t}'

	!!flowrift.review
		name:'Mr Mumba'
		date:'28/8/2021'
		stars:4
		description:'${t}'	

	"

	return texttools.dedent(c) // important to allways dedent, otherwise playbook will not work
}

pub fn example() !string {
	return process(example_data())!
}
