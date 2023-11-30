import freeflowuniverse.flowrift.components.reviews
import freeflowuniverse.flowrift

fn do()! {

	//will open html page and show result
	flowrift.html(
		site_name:"test"
		html_name:"index"
		markdown:reviews.example_data()
		open:true
	)!

}

fn main() {
	do() or {panic(err)}
}
