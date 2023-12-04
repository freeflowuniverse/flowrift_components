module cta

import freeflowuniverse.crystallib.data.actionparser
import freeflowuniverse.crystallib.data.ourtime
import freeflowuniverse.webcomponents.components.stars

const actor = 'flowrift'

pub fn process(txt string) !string {
	actions := actionparser.parse_collection(text: txt)!

	if actions.exists_once(actor: cta.actor, name: 'cta') {
		a := actions.get(actor: cta.actor, name: 'cta')!
		mut d := a.params.decode[CTA]()!
		return process_from_model(d)!
	}

	return ''
}

pub fn process_from_model(component CTA) !string {
	return component.html()
}
