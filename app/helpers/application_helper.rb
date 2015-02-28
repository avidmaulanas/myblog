module ApplicationHelper
	include ActsAsTaggableOn::TagsHelper
	
	def alert_tag(message = nil, type = 'info')
		if message 
			content_tag(:div, 
				content_tag(:button, 
					content_tag(:span, '&times;'.html_safe, "aria-hidden": "true"),
					{ type: "button", class: "close", "data-dismiss": "alert", "aria-label": "close" }
				) + message, 
				{ class: "alert alert-#{type} alert-dismissible fade in", role: "alert" } 
			) 	
		end
	end

	def alert_form_tag(resource)
		 "#{pluralize(resource.errors.count, "error")} prohibited this article from being saved:"
      content_tag(:ul) do 
        resource.errors.full_messages.each do |message|
          content_tag(:li) do
          	message
          end
        end
      end
	end

	def time 
		Time.new
	end
end
