module navigations

pub struct Navigations {
pub mut:
	logo         string    = 'Flowrift'
	url          string    = '/'
	button_label string    = 'Contact Sales'
	button_url   string    = '/'
	items        []NavItem = [NavItem{
		url: '/'
		label: 'Home'
	}, NavItem{
		url: '/'
		label: 'Features'
	}, NavItem{
		url: '/'
		label: 'Pricing'
	}, NavItem{
		url: '/'
		label: 'About'
	}]
}

pub struct NavItem {
pub mut:
	url   string
	label string
}

pub fn (component Navigations) html() string {
	return $tmpl('./templates/navigations.html')
}
