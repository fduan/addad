AutoHtml.add_filter(:mention).with({}) do |text, options|
  text.gsub(/@([^\s]+)/) do |match|
    "<a href=\"/users/#{$1}\" class=\"mentions\">@#{$1}</a>"
  end
end