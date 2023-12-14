module image
import freeflowuniverse.crystallib.data.actionparser


const actor="flowrift"

// pub fn get(total int, nr int) !string {
// 	t := $tmpl('images.html')
// 	return t
// }


pub fn process(txt string) !string {
	actions := actionparser.parse_collection(text: txt)!

	if actions.exists_once(actor: images.actor, name: 'images') {
		a := actions.get(actor: images.actor, name: 'images')!
		mut d := Images{
			total: a.params.get_int_default("total",5)!
			images: a.params.get_int_default("images",3)!
		}
		return process_from_model(d)!
	}
	return ''
}

pub fn process_from_model(d Images) !string {
	r:=get(d.total,d.images)!
	return r
}
