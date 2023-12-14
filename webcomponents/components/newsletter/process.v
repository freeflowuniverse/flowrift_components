module newsletter

import freeflowuniverse.crystallib.data.actionparser
// import freeflowuniverse.webcomponents.components.image

const actor = 'flowrift'

pub fn process(txt string) !string {
	actions := actionparser.parse_collection(text: txt)!

	// image_path:=a.params.get('image')!
	// mut image:=image.new(path:image_path)!

	// if actions.exists_once(actor: newsletter.actor, name: 'newsletter') {
	// 	a := actions.get(actor: newsletter.actor, name: 'newsletter')!
	// 	mut d := NewsLetter{
	// 		description: a.params.get_default('description', 'Get the latest updates')!
	// 		signup : a.params.get_default('signup', 'Sign up for our newsletter')!
	// 		legal : a.params.get_default('legal', "By signing up to our newsletter you agree to our Term of Service and Privacy Policy.")!
	// 		image  : image.path_location()		
	// 	}
	// 	return process_from_model(d)!
	// }
	return ''
}

pub fn process_from_model(d NewsLetter) !string {
	r := $tmpl('templates/newsletter.html')
	return r
}
