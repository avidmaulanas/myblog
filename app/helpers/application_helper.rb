module ApplicationHelper
	include ActsAsTaggableOn::TagsHelper

  def flash_messages(options = {})    
    flash.each do |msg_type, message|
      content = 
      content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in", role: "alert") do 
        concat content_tag(:button, content_tag(:span, "&times;".html_safe, aria_hidden: "true"), class: "close", data: { dismiss: 'alert'}, aria_label: "Close" )
        concat message 
      end

      concat(content)
    end
    nil
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

  private 
    def bootstrap_class_for(flash_type)
      { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type.to_sym] || flash_type.to_s
    end
end
