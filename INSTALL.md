##INSTALL of amber-example-skel

### The Git Part

#### Clone this repo using git

Remember to use the --recurive option to clone the git submodules

    git clone --recursive https:\\github.com\tomrake\amber-example-skel my_location

--
### Install amber part


Amber is located at vendor/amber directory and the directions for installing Amber are in the [Amber README](https://github.com/amber-smalltalk/amber/blob/master/README.md).
#### Go to your project location:

    cd my_location

#### Go to the amber directory

    cd vendor\amber

#### Install Grunt

    npm install -g grunt-cli grunt-init

#### Install Bower

    npm install -g bower
#### Install all of the amber stuff:
    bower install
    npm install
    
---    
### Test the Amber Installation

This is how I test the amber installation

1) Start the server

From my_location start the server

    node vendor/amber/bin/amber-cli.js serve
    
2) Fetch the amber basic server page

    http://localhost:4000/vendor/amber/
    
In a correct test anber should load and the Browser to be visable.
