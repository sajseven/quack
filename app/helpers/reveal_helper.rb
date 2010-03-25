module RevealHelper
  require "themes/#{Config.theme}/helper"
  include ThemeHelper
  
  def get_style_contents
    css = get_file_as_string "app/views/themes/#{Config.theme}/style.css"
    %(<style type="text/css">#{css}</style>).html_safe
  end
  
  private
  
  def get_file_as_string(filename)
	  f = File.open(filename, "r")
		data = ""
	  f.each_line do |line|
	    data += line
	  end
	  data
	end
end