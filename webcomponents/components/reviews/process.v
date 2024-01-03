module reviews

import freeflowuniverse.crystallib.core.playbook
import freeflowuniverse.crystallib.data.ourtime
import freeflowuniverse.webcomponents.components.stars

const actor = 'flowrift'

pub fn process(txt string) !string {
	mut plbook := playbook.new(text: txt)!

	if plbook.action_exists_once(actor: reviews.actor, name: 'reviews') {
		a := plbook.action_get_by_name(actor: reviews.actor, name: 'reviews')!

		mut mode := a.params.get_default('mode', 'horizontal')!
		mode = mode.to_lower()
		mode_enum := match mode {
			'horizontal' {
				Mode.horizontal
			}
			'vertical' {
				Mode.vertical
			}
			else {
				return error("unknown mode for reviews. '${mode}'")
			}
		}
		stars_tot := a.params.get_int_default('stars_total', 5)!
		stars_avg := a.params.get_int_default('stars_avg', 0)!
		stars_str0 := stars.get(stars_tot, stars_avg)!
		mut d := Reviews{
			stars_total: stars_tot
			stars_avg: stars_avg
			stars_str: stars_str0
			nr_reviews: a.params.get_int_default('nr_reviews', 0)!
			description: a.params.get('description')!
			mode: mode_enum
		}

		for item in plbook.actions_find_by_name(actor: reviews.actor, name: 'review')! {
			item_date := item.params.get_time('date') or { ourtime.OurTime{} } // if no date then empty date
			nrstars := item.params.get_int_default('stars', 5)!
			stars_str := stars.get(d.stars_total, nrstars)!
			d.reviews << Review{
				name: item.params.get('name')!
				stars: nrstars
				description: item.params.get('description')!
				date: item_date
				stars_str: stars_str
			}
		}

		return process_from_model(d)!
	}

	return ''
}

pub fn process_from_model(d Reviews) !string {
	mut r := ''

	if d.mode == .horizontal {
		r = $tmpl('templates/horizontal.html')
	} else if d.mode == .vertical {
		r = $tmpl('templates/vertical.html')
	} else {
		panic('bug')
	}

	return r
}
