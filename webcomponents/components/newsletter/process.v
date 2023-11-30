module reviews

import freeflowuniverse.crystallib.data.actionparser
import freeflowuniverse.crystallib.data.ourtime
import freeflowuniverse.webcomponents.components.stars

const actor = 'flowrift'

pub fn process(txt string) !string {
	actions := actionparser.parse_collection(text: txt)!

	if actions.exists_once(actor: reviews.actor, name: 'newsletter') {
		a := actions.get(actor: reviews.actor, name: 'newsletter')!
		mut d := NewsLetter{
			description: a.params.get_default('description', 'Get the latest updates')!
			signup : a.params.get_default('signup', 'Sign up for our newsletter')!
			legal : a.params.get_default('legal', "By signing up to our newsletter you agree to our Term of Service and Privacy Policy.")!
			image  : a.params.get('image')!			
		}
		return process_from_model(d)!
	}
	return ''
}

pub fn process_from_model(d Reviews) !string {
	r = $tmpl('templates/newsletter.html')
	return r
}
