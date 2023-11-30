module reviews

import freeflowuniverse.crystallib.data.ourtime


pub struct Review {
pub:
    name       string
    date       ourtime.OurTime
    stars      int
    description string
    stars_str  string
}

pub enum Mode{
    horizontal
    vertical
}

pub struct Reviews {
pub mut:
	stars_total int
    stars_avg int
    stars_str  string
    nr_reviews int
	description string
    reviews []Review
    mode Mode    
    
}
