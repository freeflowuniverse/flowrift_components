module tailwind

import freeflowuniverse.herolib.installers.web.tailwind as tailwindinstaller
import freeflowuniverse.herolib.core.pathlib
import freeflowuniverse.herolib.osal

pub struct TailWind {
pub mut:
	name string
	path pathlib.Path
}

@[params]
pub struct AddArgs {
pub:
	name    string = 'index'
	htmltxt string @[required]
}

pub fn (mut tw TailWind) add(args AddArgs) ! {
	htmltext := args.htmltxt
	if htmltext.trim_space() == '' {
		print_backtrace()
		return error('html text needs to be not empty.')
	}
	c_index := $tmpl('templates/index.html')
	mut path_index := tw.path.file_get_new('${args.name}.html')!
	path_index.write(c_index)!
}

@[params]
pub struct TailWindArgs {
pub:
	name string = 'default'
}

// generate the html and open in browser
pub fn new(args TailWindArgs) !TailWind {

	mut p := pathlib.get_dir(path: '/tmp/flowrift/${args.name}', create: true)!
	mut tw := TailWind{
		path: p
		name: args.name
	}

	c_tw := $tmpl('templates/tailwind.config.js')
	mut path_tw := p.file_get_new('tailwind.config.js')!
	path_tw.write(c_tw)!

	c_css := $tmpl('templates/input.css').replace('??', '@')
	mut path_css := p.file_get_new('input.css')!
	path_css.write(c_css)!

	return tw
}

// generate the html and open in browser
pub fn (tw TailWind) compile() ! {
	// source the go path
	cmd := '
		source ${osal.profile_path()!}
		cd ${tw.path.path}
		tailwind -i input.css -o output.css --minify
		'

	osal.exec(cmd: cmd)!
}

// generate the html and open in browser
pub fn (tw TailWind) open() ! {
	tw.compile()!
	osal.exec(cmd: "cd ${tw.path.path} && open index.html")!
}
