module form

import freeflowuniverse.crystallib.core.playbook
import freeflowuniverse.crystallib.data.ourtime
import freeflowuniverse.webcomponents.components.stars

const actor = 'flowrift'

pub fn process(txt string) !string {
	mut plbook := playbook.new(text: txt)!

	if plbook.action_exists_once(actor: form.actor, name: 'form_contact') {
		a := plbook.action_get_by_name(actor: form.actor, name: 'form_contact')!
		mut d := a.params.decode[Form]()!
		return process_from_model(d)!
	}

	return ''
}

pub fn process_from_model(component Form) !string {
	html := component.html()
	println('html: ${html}')
	return html
}
