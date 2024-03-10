module image

import freeflowuniverse.crystallib.core.playbook
import freeflowuniverse.crystallib.core.pathlib

pub struct Image {
pub mut:
	name  string
	path  string
	color string
}

@[params]
pub struct ImageNewArgs {
pub mut:
	name string
	path string // can be url or path where image is (or might be, will do some fuzy matching)
}

pub fn new(args ImageNewArgs) !Image {
	mut i := Image{
		path: args.path
	}

	return r
}

pub fn (mut i Image) path_location() string {
	return i.path
}
