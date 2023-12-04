# My test markdown content

here we have some markdown and some macros in 3script

## Reviews Macro

if all goes well, the below actions text should be replaced with html

!!flowrift.reviews
    stars_total:5
    description:Customer Reviews
    mode:'horizontal'
    nr_reviews: 80
    stars_avg:4

!!flowrift.review
    name:'John McCulling'
    date:'28/8/2021'
    stars:5
    description:'${t}'

!!flowrift.review
    name:'Someone Else'
    date:'28/8/2021'
    stars:2
    description:'${t}'

!!flowrift.review
    name:'Kate Berg'
    date:'28/8/2021'
    stars:4
    description:'${t}'

!!flowrift.review
    name:'Mr Mumba'
    date:'28/8/2021'
    stars:1
    description:'${t}'	

!!flowrift.review
    name:'Kate Berg'
    date:'28/8/2021'
    stars:4
    description:'${t}'

!!flowrift.review
    name:'Mr Mumba'
    date:'28/8/2021'
    stars:4
    description:'${t}'	

** The above should now be html for reviews component **

