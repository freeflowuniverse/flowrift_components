module preprocessor

import freeflowuniverse.webcomponents
import freeflowuniverse.webcomponents.components.reviews
import freeflowuniverse.webcomponents.components.header
import freeflowuniverse.webcomponents.components.hero
import freeflowuniverse.webcomponents.components.form.contact
import freeflowuniverse.webcomponents.components.cta
import freeflowuniverse.crystallib.core.pathlib

pub fn preprocess(path_ string) ! {
	mut path := pathlib.get(path_)
	mut list := path.list()!
	for mut file in list.paths {
		if file.is_file() && file.path.all_after_last('.') == 'md' {
			preprocess_file(mut file)!
		}
	}
}

pub fn preprocess_file(mut file pathlib.Path) ! {
	content := file.read()!

	mut macro := '' // the name of the macro being parsed
	mut action_begin := 0 // the line index of where the macro being parsed begins
	mut in_action := false // wether an action is being parsed
	mut processed := []string{} // the processed list of lines

	lines := content.split('\n')
	for i, line_ in lines {
		line := line_.trim_left('\n')

		if in_action {
			if line != '' && i != lines.len - 1 {
				continue
			}
			// means action declaration is over
			match macro {
				'reviews' {
					processed << reviews.process(lines[action_begin..].join('\n'))!
				}
				'header' {
					processed << header.process(lines[action_begin..].join('\n'))!
				}
				'hero' {
					processed << hero.process(lines[action_begin..].join('\n'))!
				}
				'cta' {
					processed << cta.process(lines[action_begin..].join('\n'))!
				}
				'form_contact' {
					processed << contact.process(lines[action_begin..].join('\n'))!
				}
				else {} // do nothing with actions that arent macros
			}
			in_action = false
			continue
		}

		// means declaration
		if line.starts_with('!!flowrift') {
			macro = line.trim_string_left('!!flowrift.').all_before(' ')
			in_action = true
			action_begin = i
			continue
		} else {
			processed << line
		}
	}
	file.write(processed.join('\n'))!
}
