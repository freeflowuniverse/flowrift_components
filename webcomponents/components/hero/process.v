module hero

import freeflowuniverse.crystallib.data.actionparser

const actor = 'flowrift'

pub fn process(txt string) !string {
	actions := actionparser.parse_collection(text: txt)!

	if actions.exists_once(actor: hero.actor, name: 'hero') {
		a := actions.get(actor: hero.actor, name: 'hero')!
		mut d := a.params.decode[Hero]()!
		return process_from_model(d)!
	}
	return ''
}

pub fn process_from_model(d Hero) !string {
	return d.html()
}
