function commit_toggle(clicked, hidden, shown) {
  $(clicked).click(function() {
    $(hidden).slideUp();
    $(shown).slideDown();
    return false;
  });
}

function commit_toggle_set(name) {
  commit_toggle(('a#'+name+'-show'), '#action-bar #links', ('#'+name));
  commit_toggle(('#'+name+' a.hide'), ('#'+name), '#action-bar #links');
}

$(function() {
  
  // New posts toggle
  commit_toggle_set('new-post');
  
});