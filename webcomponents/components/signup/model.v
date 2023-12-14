module signup

pub struct Signup {
pub:
	header       string = 'Start your free trial'
	description  string = 'No Credit Card required'
	button_label string = 'Sign Up'
	button_url   string = 'https://t.me/threefoldnews'
}

pub fn (component Signup) html() string {
	return $tmpl('./templates/signup.html')
}
