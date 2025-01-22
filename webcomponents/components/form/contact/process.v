module contact

import freeflowuniverse.herolib.core.playbook
import freeflowuniverse.herolib.data.ourtime
import freeflowuniverse.webcomponents.components.stars

const actor = 'flowrift'

pub fn process(txt string) !string {
	mut plbook := playbook.new(text: txt)!

	if plbook.action_exists(actor: contact.actor, name: 'form_contact') {
		a := plbook.action_get(actor: contact.actor, name: 'form_contact')!
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
