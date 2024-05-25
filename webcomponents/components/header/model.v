module header

pub struct Header {
pub mut:
	logo string
	items []IButton
	right []Button
}

interface IHeaderItem {
	html() string
}

interface IButton {
	html() string
}

pub struct LinkButton {
pub:
	label string
	url string
	new_tab bool
}

pub fn (link LinkButton) html() string {
	target := if link.new_tab {
		'target="_blank"'
	} else {''}
	return '<a href="/${link.url}" ${target} class="text-lg leading-6 font-medium text-gray-900 hover:text-gray-500 focus:outline-none focus:text-gray-900 transition ease-in-out duration-150 mt-0">
	${link.label}
</a>'
}

pub struct DropdownButton {
pub:
	label string
	url string
	new_tab bool
	dropdown DropdownMenu

}

pub struct DropdownMenu {
pub:
	label string
	items []Button
	url string
	new_tab bool
}

type Button = ButtonWithDescription | LinkButton | DropdownButton

pub struct ButtonWithDescription {
	label string
	url string
	description string
}

pub fn (menu DropdownMenu) html() string {
	return $tmpl('templates/dropdown_menu.html')
}

pub fn (menu DropdownButton) html() string {
	return 'implement'
}

pub fn (header Header) html() string {
	mut dropdown_buttons := []DropdownButton{}
	for item in header.items {
		if item is DropdownButton {
			dropdown_buttons << item
		}
	}
	// header.items.filter(it is DropdownButton).map(it as DropdownButton)
	home_url := ''
	return $tmpl('templates/header.html')
}