import freeflowuniverse.webcomponents.components.features
import freeflowuniverse.webcomponents.components.newsletter
import freeflowuniverse.webcomponents

fn do() ! {
	// will open html page and show result
	webcomponents.html(
		site_name: 'test'
		html_name: 'index1'
		markdown: features.example_data()
		open: true
	)!
}

fn main() {
	do() or { panic(err) }
}
