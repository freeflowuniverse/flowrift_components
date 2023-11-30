module webcomponents

// import freeflowuniverse.flowrift.components.stars
import freeflowuniverse.webcomponents.components.reviews
import freeflowuniverse.webcomponents.components.newsletter
import freeflowuniverse.webcomponents.components.stars
import freeflowuniverse.webcomponents.tailwind

fn do_all(c string) !string {
	mut out_ := []string{}
	// out<<stars.process(c)!
	out_ << reviews.process(c)!
	out_ << stars.process(c)!
	out_ << newsletter.process(c)!

	// remove all empty
	mut out := []string{}
	for i in out_ {
		if i.trim_space() != '' {
			out << i
		}
	}

	if out.len > 1 {
		print_backtrace()
		println(out)
		return error('found more than 1 html processor in \$c')
	}
	if out.len == 0 {
		print_backtrace()
		return error("couldn't find a html processor for \n${c}")
	}

	return out[0]
}

// process actions for a specific component
pub fn html_get(c string) !string {
	htmltxt := do_all(c)!

	return htmltxt
}

@[params]
pub struct TailWindArgs {
pub:
	name string = 'test'
}

pub fn tailwind_new(args TailWindArgs) !tailwind.TailWind {
	mut tw := tailwind.new(name: args.name)!
	return tw
}

@[params]
pub struct HtmlOpenArgs {
pub:
	site_name string = 'test'
	html_name string = 'index'
	markdown  string @[required]
	open      bool
}

// generate the html and open in browser
pub fn html(args HtmlOpenArgs) ! {
	htmltxt := do_all(args.markdown)!

	mut tw := tailwind_new(name: args.site_name)!

	tw.add(name: args.html_name, htmltxt: htmltxt)!

	tw.open()!
}
