require "ostruct"

Config = OpenStruct.new({
  
  # This is the name of your website as it will appear in the admin panel and publicly
  :name => "My Quack Site",
  
  # This is used by some themes to add information about the website
  :subtitle => "Hear it comin' in the air; hear the quacks from everywhere...",
  
  # These are the feathers which you wish to have active
  # Default: %w(text quote photo video)
  :feathers => %w(text quote photo video),
  
  # This is the theme which the public will see
  # Default: "milch"
  :theme => "milch",
  
  # This time format will appear both publicly and in the admin panel
  # Default: "%h %d, %Y @ %l:%M %p" #=> Mar 25, 2010 @ 10:17 PM
  :time_format => "%h %d, %Y @ %l:%M %p",
  
  # The number of posts that will be displayed on each page (publicly)
  # Default: 15
  :posts_per_page => 15
  
})