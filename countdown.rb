require 'sinatra'
require 'slim'


get '/' do 
	slim :index
end 

__END__

@@layout

doctype html 
html
  head 
    meta charset="utf-8"
    title Flatiron Ruby005 Countdown
    link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
    script src="http://smalldo.gs/js/countdown.min.js"
    /[if lt IE 9] 
      script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"

    == yield

 
@@index
body 
  div class="container"
   div class="jumbotron"
    h1 Flatiron Ruby005 Countdown
    h2#countdown-holder Countdown goes here!

javascript:
	var endDate = new Date(2014,05,02,09,00,00);
	var timeSpan = countdown(null, endDate );
	var clock = document.getElementById("countdown-holder");

	var timer = setInterval(function() {
		console.log(timeSpan = countdown(null, endDate ));
		if(timeSpan < 1)
		{
			clearInterval(timer); // need to find a way to set timespan at the global level so even after someone refreshes the page the timer doesn't run and the new clock text appears

		}
		console.log(clock.innerHTML = countdown(null, endDate ).toString());
	},1000);

      