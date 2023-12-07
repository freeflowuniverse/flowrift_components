module contact

import freeflowuniverse.crystallib.data.actionparser
import freeflowuniverse.crystallib.data.ourtime
import freeflowuniverse.webcomponents.components.stars

const actor = 'flowrift'

pub fn process(txt string) !string {
	actions := actionparser.parse_collection(text: txt)!

	if actions.exists_once(actor: contact.actor, name: 'form_contact') {
		a := actions.get(actor: contact.actor, name: 'form_contact')!
		mut d := a.params.decode[ContactForm]()!
		return process_from_model(d)!
	}

	return ''
}

pub fn process_from_model(component ContactForm) !string {
	html := component.html()
	println('html: ${html}')
	return html
}
