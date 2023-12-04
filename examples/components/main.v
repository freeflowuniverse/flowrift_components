import freeflowuniverse.webcomponents.components.features
import freeflowuniverse.webcomponents.components.banner
import freeflowuniverse.webcomponents.components.hero
import freeflowuniverse.webcomponents.components.cta
import freeflowuniverse.webcomponents.components.teams
import freeflowuniverse.webcomponents.components.logos
import freeflowuniverse.webcomponents.components.blogs
import freeflowuniverse.webcomponents.components.collections
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
			banner.Banner{},
			hero.Hero{},
			features.Features{},
			cta.CTA{},
			logos.Logos{},
			teams.Teams{},
			blogs.Blogs{},
			collections.Collections{},
		]
	}

	vweb.run(&app, 8082)
}

pub fn (mut app ComponentsApp) index() vweb.Result {
	return app.html($tmpl('./index.html'))
}
