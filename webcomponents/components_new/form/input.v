module form

import freeflowuniverse.webcomponents.components {IComponent}

pub struct Input {
pub:
	id string
	name string
	label string
	placeholder string
	required bool
	typ string
	value string
}

pub fn (input Input) html() string {

	mut tags := []string{}
	if input.typ != '' {
		tags << 'type="${input.typ}"'
	}
	if input.required {
		tags << 'required'
	}
	if input.id != ''{
		tags << 'id="${input.id}"'
	}
	if input.name != '' {
		tags << 'name="${input.name}"'
	}
	if input.placeholder != '' {
		tags << 'name="${input.placeholder}"'
	}

	mut str := if input.typ == 'textarea' {
		'<textarea ${tags.join(' ')}>${input.value}</textarea>'
	} else {
		'<input ${tags.join(' ')}/>'
	}

	if input.label != '' {
		str = '<label for="${input.name}">${input.label}\n${str}</label>'
	}
	
	return str
}

pub struct Dropdown{
pub:
	label string
	items []IComponent
}

pub fn (dropdown Dropdown) html() string {
	items := dropdown.items.map('<li>${it.html()}</li>')
	return '
	<details class="dropdown">
		<summary>${dropdown.label}</summary>
		<ul>${items.join('\n')}</ul>
	</details>
'
}

pub struct Select {
pub:
	name string
	options []Opt
}

pub fn (input Select) html() string {
	options := input.options.map(it.html()).join('\n')
	return '<select name="tag" up-change up-target="#table">\n${options}\n</select>'
}

pub struct Opt {
pub:
	content string
	value string
}

pub fn (option Opt) html() string {
    return '<option value="${option.value}">${option.content}</option>'
}

pub struct SearchBar {
pub:
	route string
}

pub fn (input SearchBar) html() string {
	return $tmpl('templates/search.html')
}