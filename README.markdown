## Sunshine
A Ruby wrapper around the Sunlight labs API built on HTTParty.

* http://github.com/Caged/sunshine
* http://services.sunlightlabs.com/api/


## FEATURES/PROBLEMS:

* FIX (list of features or problems)

## TODO

* Look into mocking

### How to use it
    Sunshine.api_key = YOUR_API_KEY
    legislators = Legislator.find(:all, {:state => "OR"})
    legislators.each do |legislator|
      puts legislator.full_name
      puts legislator.state
    end

### Requirements

* HTTParty, JSON

### Install
    sudo gem install sunshine

### License

(The MIT License)

Copyright (c) 2009 Justin Palmer

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.