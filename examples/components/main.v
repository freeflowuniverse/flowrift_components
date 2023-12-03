import freeflowuniverse.webcomponents.components.features
import freeflowuniverse.webcomponents.components.banner
import freeflowuniverse.webcomponents.components.hero
import vweb

// ComponentsApp is a VWeb application that displays rendered components
pub struct ComponentsApp {
	vweb.Context
pub mut:
	components []IComponent @[vweb_global] // list of components to be rendered
}

// a component is a data structure with a template that has an html() method to render the data structure into an html component
pub interface IComponent {
	html() string
}

pub fn main() {
	app := ComponentsApp{
		components: [
			hero.Hero{},
			features.Features{},
			banner.Banner{},
		]
	}

	vweb.run(&app, 8082)
}

pub fn (mut app ComponentsApp) index() vweb.Result {
	return app.html($tmpl('./index.html'))
}
