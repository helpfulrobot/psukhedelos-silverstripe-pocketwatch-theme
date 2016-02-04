## Installation ##
You'll probably need to run the gem installs with `sudo`

###CSS/Sass/Compass###

We've chosen to use compass and sass to generate our CSS.  

####Install [Sass](http://sass-lang.com/install)####
`gem install sass`

####Install [Compass](http://compass-style.org/install/)####
`gem install compass`

####Install [Bootstrap-Sass](https://github.com/twbs/bootstrap-sass)####
`gem install bootstrap-sass`

####Install [FontAwesome::Sass](https://github.com/FortAwesome/font-awesome-sass)####
`gem install font-awesome-sass`

####Random Thoughts####
####WorkFlow####
- `compass watch`
	- do this in pocketwatch theme directory ('/themes/pocketwatch')
	- modified `.scss` files will be updated in compiled when changed, so can see results immediately
- `_variables.scss` is where a lot of easy customisation can happen (change colours, etc.)

## Page Types ##
### Gallery ###
#### Gallery Holder ####
#### Gallery Album ####
#### Gallery Item ####
#### Gallery Slice ####
See HomePage Slices

### Contact ###
Contact Forms need to be very specifically set up.  To create our user form, we used the `silverstripe/userforms` module.  
Create three fields

    - `Textfield` Name
    - `Emailfield` Email
    - `Textfield` Message



### Blog ###
#### Blog Post ####
#### Blog Slice ####

### HomePage ###
#### Slices ####
##### Hero Slice #####
##### Gallery Slice #####