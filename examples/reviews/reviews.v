import freeflowuniverse.webcomponents.components.reviews
import freeflowuniverse.webcomponents.components.newsletter
import freeflowuniverse.webcomponents

fn do()! {

	//will open html page and show result
	webcomponents.html(
		site_name:"test"
		html_name:"index1"
		markdown:reviews.example_data()
		open:true
	)!
	webcomponents.html(
		site_name:"test"
		html_name:"index"
		markdown:newsletter.example_data()
		open:true
	)!

}

fn main() {
	do() or {panic(err)}
}
