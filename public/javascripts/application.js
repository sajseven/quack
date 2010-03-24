$(function() {
  
  $("#new-post a.show").click(function() {
    $(this).slideUp(200);
    $("#new-post form").delay(200).slideDown(500);
    return false;
  });
  
  $("#new-post a.hide").click(function() {
    $("#new-post form").slideUp(500);
    $("#new-post a.show").delay(500).slideDown(200);
    return false;
  });
  
});