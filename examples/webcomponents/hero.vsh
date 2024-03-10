#!/usr/bin/env -S v -w -cg -enable-globals run
import freeflowuniverse.crystallib.ui.console
import freeflowuniverse.webcomponents.components.hero as webcomponent
import freeflowuniverse.webcomponents


console.print_header("generate flowrift html component:")
console.print_debug(' example data:: ${webcomponent.example_data()}')

webcomponents.html(
	site_name: 'test'
	html_name: 'index'
	markdown: webcomponent.example_data()
	open: true
)!

