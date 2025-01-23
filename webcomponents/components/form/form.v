module form

import freeflowuniverse.webcomponents.components {IComponent}

pub struct Form {
pub:
	title string
	id string
	content IComponent
}

pub fn (form Form) html() string {
	return '
	<h2>${form.title}</h2>
	<form id="${form.id}">${form.content.html()}</form>'
}

pub struct IncrementalInput {
pub:
	label string
	typ string
}

pub fn (input IncrementalInput) html() string {
	return($tmpl('templates/incremental.html'))
}