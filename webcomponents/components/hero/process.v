module hero

import freeflowuniverse.herolib.core.playbook

const actor = 'flowrift'

pub fn process(txt string) !string {
	mut plbook := playbook.new(text: txt)!

	if plbook.action_exists(actor: hero.actor, name: 'hero') {
		a := plbook.action_get(actor: hero.actor, name: 'hero')!
		mut d := a.params.decode[Hero]()!
		return process_from_model(d)!
	}
	return ''
}

pub fn process_from_model(d Hero) !string {
	return d.html()
}
