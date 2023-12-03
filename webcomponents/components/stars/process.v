module stars
import freeflowuniverse.crystallib.data.actionparser

pub struct Stars {
pub:
	total int //total nr of stars
	stars int //how many are
}


pub struct Star {
pub:
	color string
}

const actor="flowrift"

pub fn get(total int, nr int) !string {
	gray := 'text-gray-300'
	yellow := 'text-yellow-400'

	mut stars := []Star{}

	for i in 0 .. total {
		if i > nr - 1 {
			stars << Star{
				color: gray
			}
		} else {
			stars << Star{
				color: yellow
			}
		}
	}
	t := $tmpl('stars.html')
	return t
}


pub fn process(txt string) !string {
	actions := actionparser.parse_collection(text: txt)!

	if actions.exists_once(actor: stars.actor, name: 'stars') {
		a := actions.get(actor: stars.actor, name: 'stars')!
		mut d := Stars{
			total: a.params.get_int_default("total",5)!
			stars: a.params.get_int_default("stars",3)!
		}
		return process_from_model(d)!
	}
	return ''
}

pub fn process_from_model(d Stars) !string {
	r:=get(d.total,d.stars)!
	return r
}
