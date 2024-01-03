module banner

import freeflowuniverse.crystallib.core.playbook
// import freeflowuniverse.crystallib.data.ourtime
// import freeflowuniverse.webcomponents.components.stars

const actor = 'flowrift'

pub fn process(txt string) !string {
	mut plbook := playbook.new(text: txt)!

	if plbook.action_exists_once(actor: banner.actor, name: 'banner') {
		a := plbook.action_get_by_name(actor: banner.actor, name: 'banner')!
		mut d := a.params.decode[Banner]()!
		return process_from_model(d)!
	}

	return ''
}

pub fn process_from_model(component Banner) !string {
	return component.html()
}
