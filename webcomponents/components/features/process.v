module features

import freeflowuniverse.herolib.core.playbook

const actor = 'flowrift'

pub fn process(txt string) !string {
	mut plbook := playbook.new(text: txt)!

	if plbook.action_exists(actor: features.actor, name: 'features') {
		a := plbook.action_get(actor: features.actor, name: 'features')!
		// stars_str0 := stars.get(stars_tot, stars_avg)!
		mut d := Features{
			title: a.params.get_default('title', 'Default title')!
			description: a.params.get('description')!
		}

		for item in plbook.actions_find(actor: features.actor, name: 'review')! {
			// item_date := item.params.get_time('date') or { ourtime.OurTime{} } // if no date then empty date
			// nrstars := item.params.get_int_default('stars', 5)!
			// stars_str := stars.get(d.stars_total, nrstars)!
			d.features << Feature{
				title: item.params.get('title')!
				description: item.params.get('description')!
			}
		}

		return process_from_model(d)!
	}

	return ''
}

pub fn process_from_model(component Features) !string {
	mut r := ''
	r = $tmpl('templates/features.html')
	// if d.mode == .horizontal {
	// 	r = $tmpl('templates/horizontal.html')
	// } else if d.mode == .vertical {
	// 	r = $tmpl('templates/vertical.html')
	// } else {
	// 	panic('bug')
	// }

	return r
}
