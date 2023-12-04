module blogs

pub struct Blogs {
pub mut:
	title       string = 'Blog'
	description string = 'This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text but is random or otherwise generated.'
	blogs       []Blog = []Blog{len: 4}
}

pub struct Blog {
pub mut:
	image       string = 'https://images.unsplash.com/photo-1593508512255-86ab42a8e620?auto=format&q=75&fit=crop&w=600'
	title       string = 'New trends in Tech'
	description string = 'This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text.'
	link        string = '/'
	author_img  string = 'https://images.unsplash.com/photo-1611898872015-0571a9e38375?auto=format&q=75&fit=crop&w=64'
	author_name string = 'Mike Lane'
	date        string = 'July 19, 2021'
	post_type   string = 'Article'
}

pub fn (component Blogs) html() string {
	return $tmpl('./templates/blogs.html')
}
