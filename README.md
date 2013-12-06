# annyang for Rails Asset Pipeline

[annyang](https://github.com/TalAter/annyang) is a tiny javascript SpeechRecognition library that lets your users control your site with voice commands. ([documentation](https://www.talater.com/annyang/)). 

This gem makes it easy to use it with Rails Asset Pipeline.

## Installation

Add this line to your application's Gemfile:

    gem "annyang-rails"

And then execute:

    $ bundle install

## Usage

Add the following to your `app/assets/javascripts/application.js`:

    //= require annyang

To use minified version use this:

    //= require annyang.min

We have created a helper function to make it easy.

    init_annyang

If you want to use voice navigation in complete application then call helper function in application layout or if you want to use voice navigation in some specific pages then call helper function in your specific views.

    <%= init_annyang %>

This helper will generate javascript which will redirect you to specified link for that keyword. You have to speak in microphone with prefix `go to <keyword>` and system will redirect to link which is associated with that keyword.

We have 3 different ways to define voice navigation commands:

    1 - YAML File
    2 - Function Parameters
    3 - HTML Attribute

#### 1 - YAML File

You can create file annyang.yml in config directory (config/annyang.yml) where you can define keywords and there links:

    "ruby": "https://www.ruby-lang.org"
    "rubygems": "http://rubygems.org"

You can also define options for keywords like if you want to open same link for rubygem and rubygems then you can write it OR (|) operator:

    "rubygem|rubygems": "http://rubygems.org"
    
In this case both commands `go to rubygem` and `go to rubygems` will take you to `http://rubygems.org`

#### 2 - Function Parameters

You can pass keywords in helper function's parameters:

    <%= init_annyang({"ruby" => "https://www.ruby-lang.org", "rubygem|rubygems" => "http://rubygems.org"}) %>

#### 3 - HTML Attribute

You can specify your keywords in HTML tags with `data-annyang` attribute name.
You have to specify keyword in `data-annyang` attribute in anchor tag and when someone will speak specified word then system will open href link.

    <a href="https://www.ruby-lang.org" data-annyang="ruby">Ruby</a>
    <a href="http://rubygems.org" data-annyang="rubygem|rubygems">Ruby Gems</a>



If you want to use this by your own then try it like this:

````html
<script>
if (annyang) {
  // Let's define a command.
  var commands = {
    'show tps report': function() { $('#tpsreport').show(); }
  };

  // Initialize annyang with our commands
  annyang.init(commands);

  // Start listening.
  annyang.start();
}
</script>

````

**For more details, [visit the demo and docs site](https://www.talater.com/annyang).**
