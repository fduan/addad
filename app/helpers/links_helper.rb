module LinksHelper

  def link_to_with_fa_icon(icon_class = nil, name = nil, options = nil, html_options = nil, &block)
  	if icon_class
  	  link_to("<i class='#{icon_class}'></i> #{name}".html_safe, options, html_options, &block)
  	else
  	  link_to(name, options, html_options, &block)
  	end
  end

end