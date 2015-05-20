$( document ).ready(function() {

  var raw_template, template, placeHolder, html;
  raw_template = $('#splash-page').html();
  template = Handlebars.compile(raw_template);
  placeHolder = $('#content-changer');
  html = template();
  placeHolder.append(html);
  
	$(".majors1 a div").click(function(e) {
			var course_clicked = $(this).data('course-name');
			console.log("You clicked: " + course_clicked);
			
			$.getJSON('/course?course_name=' + course_clicked, function(data) {
				
					console.log(data);
					placeHolder.children().remove();
					
          raw_template =  $('#course-page-template').html();
          template = Handlebars.compile(raw_template);
          placeHolder = $('#content-changer');
          html = template(data);
          placeHolder.append(html);
			
			}); // end of JSON statement
	}); // end of click statement
	
	$(".days a div").click(function(e) {
	    alert("clicked a day");
			// var day_clicked = $(this).data('day-chosen');
			// console.log("You clicked: " + day_clicked);
			/*
			$.getJSON('/tutor?day_chosen=' + day_clicked, function(data) {
				
					console.log(data);
					
          
          raw_template =  $('#course-page-template').html();
          template = Handlebars.compile(raw_template);
          placeHolder = $('#content-changer');
          html = template(data);
          placeHolder.append(html);
			    
			}); // end of JSON statement
			*/
	}); // end of click statement
}); // document end

