module ApplicationHelper
	include ActsAsTaggableOn::TagsHelper
	
	def alert_tag(message = nil, type = 'info')
		if message 

			html = <<-HTML
	    <div class="alert alert-#{type} alert-dismissible fade in" role="alert"> <button type="button"
	    class="close" data-dismiss="alert" aria-label="close">x</button>
	      #{message}
	    </div>
	    HTML

	    html.html_safe
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
