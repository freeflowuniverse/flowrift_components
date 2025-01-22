module navigation

import freeflowuniverse.webcomponents.components {IComponent}

pub struct NavItem {
pub mut:
    href string
    text string
    subtitle string
    class_name ?string
}

pub struct Dropdown {
pub mut:
	label string
	items []NavItem
}

pub fn (dropdown Dropdown) html() string {
    return $tmpl('templates/dropdown.html')
}

pub struct Accordion {
pub mut:
	label string
	items []NavItem
}

pub fn (accordion Accordion) html() string {
    return $tmpl('templates/accordion.html')
}

// pub struct Navbar {
// pub mut:
//     brand NavItem
//     // logo Image
//     items []IComponent
//     user_label string // the label of the user button
// }

pub fn (item NavItem) html() string {
    // return ''
    return '<a href="${item.href}">${item.text}</a>${item.subtitle}'
}

pub struct Sidebar {
pub mut:
    items []IComponent
}

pub fn (sidebar Sidebar) html() string {
    return $tmpl('./templates/sidebar.html')
}
