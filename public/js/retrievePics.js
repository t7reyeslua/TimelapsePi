var folder = "images/";
var pics = []

$(document).ready(function() {
    ajaxd();
    setInterval("ajaxd()",10000);
});


function ajaxd() {
  console.log("Retrieving images");
  $.ajax({
      url : folder,
      success: function (data) {
          $(data).find("a").attr("href", function (i, val) {
              if( val.match(/\.(jpe?g|png|gif)$/) ) { 
                  if (pics.indexOf(val) < 0) {
		      console.log(val);
                      pics.push(val);
                      $("#images-container").append("<a style='border:none;'  href='"+ folder + val +"' class='thumbnail col-lg-2 col-md-2 col-sm-4 col-xs-12'><img src='"+ folder + val +"'></a>" );
                  }
              } 
          });
     }
  });
}
