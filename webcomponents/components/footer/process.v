module footer

import freeflowuniverse.webcomponents.components.header
import freeflowuniverse.crystallib.core.playbook
import freeflowuniverse.crystallib.data.ourtime
import freeflowuniverse.webcomponents.components.stars

const actor = 'flowrift'

pub fn process(txt string) !string {
	mut plbook := playbook.new(text: txt)!

	if plbook.action_exists(actor: footer.actor, name: 'footer') {
		a := plbook.action_get(actor: footer.actor, name: 'footer')!

		// mut mode := a.params.get_default('mode', 'horizontal')!
		// mode = mode.to_lower()
		// mode_enum := match mode {
		// 	'horizontal' {
		// 		Mode.horizontal
		// 	}
		// 	'vertical' {
		// 		Mode.vertical
		// 	}
		// 	else {
		// 		return error("unknown mode for reviews. '${mode}'")
		// 	}
		// }
		// stars_tot := a.params.get_int_default('stars_total', 5)!
		// stars_avg := a.params.get_int_default('stars_avg', 0)!
		// stars_str0 := stars.get(stars_tot, stars_avg)!
		mut d := Footer{
			 logo: a.params.get_default('logo', '')!
			// stars_avg: stars_avg
			// stars_str: stars_str0
			// nr_reviews: a.params.get_int_default('nr_reviews', 0)!
			// description: a.params.get('description')!
			// mode: mode_enum
		}
		for item in plbook.actions_find(actor: footer.actor, name: 'footer_item')! {
			item_type := item.params.get_default('type', '')! // if no date then empty date
			
			label := item.params.get_default('label', '')!
			if item_type == 'link' {
				d.items << header.LinkButton{
					label: label
					url: item.params.get_default('url', '')!
					new_tab: item.params.get_default_false('new_tab')
				}
			}
		}

		return process_from_model(d)!
	}

	return ''
}

pub fn process_from_model(d Footer) !string {
	r := d.html()
	return r.split_into_lines().filter(it.trim_space() != '').join_lines()
}
