module cta

import freeflowuniverse.herolib.core.playbook
// import freeflowuniverse.herolib.data.ourtime
// import freeflowuniverse.webcomponents.components.stars

const actor = 'flowrift'

pub fn process(txt string) !string {
	mut plbook := playbook.new(text: txt)!

	if plbook.action_exists(actor: cta.actor, name: 'cta') {
		a := plbook.action_get(actor: cta.actor, name: 'cta')!
		mut d := a.params.decode[CTA]()!
		return process_from_model(d)!
	}

	return ''
}

pub fn process_from_model(component CTA) !string {
	return component.html()
}
