#!/usr/bin/env -S v -w -cg -enable-globals run

import freeflowuniverse.webcomponents.components.features
import freeflowuniverse.webcomponents.components.banner
import freeflowuniverse.webcomponents.components.hero
import freeflowuniverse.webcomponents.components.cta
import freeflowuniverse.webcomponents.components.teams
import freeflowuniverse.webcomponents.components.logos
import freeflowuniverse.webcomponents.components.blogs
import freeflowuniverse.webcomponents.components.collections
import freeflowuniverse.webcomponents.components.faqs
import freeflowuniverse.webcomponents.components.navigations
import freeflowuniverse.webcomponents.components.footer
import freeflowuniverse.webcomponents.components.form
import freeflowuniverse.webcomponents.components.signup
import vweb
import freeflowuniverse.herolib.ui.console

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

pub fn (mut app ComponentsApp) index() vweb.Result {
	return app.html($tmpl('./index.html'))
}


app := ComponentsApp{
	components: [
		banner.Banner{},
		navigations.Navigations{},
		hero.Hero{},
		features.Features{},
		cta.CTA{},
		logos.Logos{},
		teams.Teams{},
		blogs.Blogs{},
		collections.Collections{},
		faqs.FAQs{},
		form.Form{},
		signup.Signup{},
		footer.Footer{},
	]
}

console.print_header("generate flowrift html basic website example:")

// for webcomponent in app.components{
// 	console.print_debug(' example data: ${webcomponent.example_data()}')
// }

console.print_header("Go to http://localhost:8082")

vweb.run(&app, 8082)


