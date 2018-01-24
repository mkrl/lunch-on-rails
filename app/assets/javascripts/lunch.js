(function($) {
  "use strict"; // Start of use strict
  
  // Digital clock
  function upclock() {
  $('#clock').html(moment().format('H:mm:ss'));
  }  
  setInterval(upclock, 1000);
  
  // Lunch countdown
  function upcount() {
  $('#countlunchdown').html("Next lunch starts "+moment("120000", "hhmmss").fromNow());
  }  
  upcount();
  setInterval(upclock, 3600000);
  
  
  // Analog clock
  function updateClock() {
		        var now = moment(),
		            second = now.seconds() * 6,
		            minute = now.minutes() * 6 + second / 60,
		            hour = ((now.hours() % 12) / 12) * 360 + 90 + minute / 12;
		        $('#hour').css("transform", "rotate(" + hour + "deg)");
		        $('#minute').css("transform", "rotate(" + minute + "deg)");
		        $('#second').css("transform", "rotate(" + second + "deg)");
		    }
		    function timedUpdate () {
		        updateClock();
		        setTimeout(timedUpdate, 1000);
		    }
		    timedUpdate();

  // Smooth scrolling using jQuery easing
  $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function() {
    if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
      if (target.length) {
        $('html, body').animate({
          scrollTop: (target.offset().top - 57)
        }, 1000, "easeInOutExpo");
        return false;
      }
    }
  });

  // Closes responsive menu when a scroll trigger link is clicked
  $('.js-scroll-trigger').click(function() {
    $('.navbar-collapse').collapse('hide');
  });

  // Activate scrollspy to add active class to navbar items on scroll
  $('body').scrollspy({
    target: '#mainNav',
    offset: 57
  });

  // Collapse Navbar
  var navbarCollapse = function() {
    if ($("#mainNav").offset().top > 100) {
      $("#mainNav").addClass("navbar-shrink");
    } else {
      $("#mainNav").removeClass("navbar-shrink");
    }
  };
  // Collapse now if page is not at top
  navbarCollapse();
  // Collapse the navbar when page is scrolled
  $(window).scroll(navbarCollapse);

  // Magnific popup calls
  $('.open-popup-link').magnificPopup({
	  type:'inline',
	  midClick: true, 
	  closeBtnInside: false
	});
  
  
  $('.popup-gallery').magnificPopup({
    delegate: 'a',
    type: 'image',
    tLoading: 'Loading image #%curr%...',
    mainClass: 'mfp-img-mobile',
    gallery: {
      enabled: true,
      navigateByImgClick: true,
      preload: [0, 1]
    },
    image: {
      tError: '<a href="%url%">The image #%curr%</a> could not be loaded.'
    }
  });

})(jQuery); // End of use strict
