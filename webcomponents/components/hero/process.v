module hero

import freeflowuniverse.crystallib.core.playbook

const actor = 'flowrift'

pub fn process(txt string) !string {
	mut plbook := playbook.new(text: txt)!

	if plbook.action_exists_once(actor: hero.actor, name: 'hero') {
		a := plbook.action_get_by_name(actor: hero.actor, name: 'hero')!
		mut d := a.params.decode[Hero]()!
		return process_from_model(d)!
	}
	return ''
}

pub fn process_from_model(d Hero) !string {
	return d.html()
}
