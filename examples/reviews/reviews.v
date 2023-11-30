import freeflowuniverse.webcomponents.components.reviews
import freeflowuniverse.webcomponents

fn do()! {

	//will open html page and show result
	webcomponents.html(
		site_name:"test"
		html_name:"index"
		markdown:reviews.example_data()
		open:true
	)!

}

fn main() {
	do() or {panic(err)}
}
