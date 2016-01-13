# BatchingCore

http://stackoverflow.com/questions/34754484/locally-install-a-gem-built-with-platform-java-jruby-1-7-18

## Build

   $ gem build


## Installation


    $ gem install batching_core
    

## Usage

    require 'batching_core'
    puts BatchingCore.greet("John Smith")

or
    
    jruby -r "./lib/batching_core.rb" -e "BatchingCore.greet 'John Q. Smith'"
    
##  Troubleshooting

If at first you get a warning about versions of ffi:

    WARN: Unresolved specs during Gem::Specification.reset:
          ffi (>= 0)
    WARN: Clearing out unresolved specs.

do this:
   
    bundle clean --force     

### Updating maven dependencies

If you need to modify the gem's java (jar) dependencies, require them in the .gemspec. Then,
     
    bundle install
    git add ./lib/batching_core_jars.rb
    git commit -m "Your message here..."
    gem install batching_core
      
The gem installation will not use the new dependency list UNLESS that latest *_jars.rb is tracked by .git
 
