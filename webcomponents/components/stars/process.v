module stars

pub struct Star {
pub:
	color string
}

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
