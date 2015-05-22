$(document).ready(function() {

  var raw_template, template, placeHolder, html,day_clicked,course_clicked,time_clicked;
  raw_template = $('#splash-page').html();
  template = Handlebars.compile(raw_template);
  placeHolder = $('#content-changer');
  html = template();
  placeHolder.html(template(html));

  $(document).on("click", ".majors1 a div", function(e) {
    e.preventDefault();
    course_clicked = $(this).data('course-name');
    console.log("You clicked: " + course_clicked);

    $.getJSON('/course?course_name=' + course_clicked, function(data) {

      console.log(data);

      raw_template = $('#course-page-template').html();
      template = Handlebars.compile(raw_template);
      placeHolder = $('#content-changer');
      html = template(data);
      placeHolder.replaceWith(html);
      $(".times").hide();

    }); // end of JSON statement
  }); // end of click statement

  var day_clicked;
  $(document).on("click", ".days a div", function(e) {
    e.preventDefault();
    day_clicked = $(this).data('day-chosen');
    console.log("You clicked: " + day_clicked);
    $(".times").show();
    
  }); // end of click statement
  $(document).on("click", ".times a div", function(e) {
    e.preventDefault();
    time_clicked = $(this).data('time-chosen');
    console.log("You clicked: " + time_clicked);
    $("#morning li, #afternoon li, #evening li").remove();

    $.getJSON('/tutor?time_chosen=' + time_clicked + '&day_chosen=' + day_clicked, function(data) {
      console.log(data);
      
      raw_template = $('#course-page-' + time_clicked).html();
      template = Handlebars.compile(raw_template);
      placeHolder = $('#' + time_clicked);
      
      html = template(data);
      placeHolder.append(html);
      
    }); // end of JSON statement
  }); // end of click statement
  
}); // document end