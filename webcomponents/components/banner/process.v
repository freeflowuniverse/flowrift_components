module banner

import freeflowuniverse.crystallib.data.actionparser
import freeflowuniverse.crystallib.data.ourtime
import freeflowuniverse.webcomponents.components.stars

const actor = 'flowrift'

pub fn process(txt string) !string {
	actions := actionparser.parse_collection(text: txt)!

	if actions.exists_once(actor: banner.actor, name: 'banner') {
		a := actions.get(actor: banner.actor, name: 'banner')!
		mut d := a.params.decode[Banner]()!
		return process_from_model(d)!
	}

	return ''
}

pub fn process_from_model(component Banner) !string {
	return component.html()
}
