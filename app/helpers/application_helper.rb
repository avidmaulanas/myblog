module ApplicationHelper
	include ActsAsTaggableOn::TagsHelper

  def flash_messages
    if notice
      content_tag(:div, '', class: 'notification', data: { message: notice, type: 'success' })
    elsif alert
      content_tag(:div, '', class: 'notification', data: { message: alert, type: 'danger' })
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

	def current_time
		Time.current
	end

	def current_user_name
		current_user.username || current_user.email
	end

	def avatar_with_size(user, size)
		image_tag(user.avatar_url, size: size, class: "img-circle")
	end

  def search_remote?
    (controller_name.eql?('articles') and action_name.eql?('index')) or controller_name.eql?('search') 
  end

  private
    def bootstrap_class_for(flash_type)
      { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type.to_sym] || flash_type.to_s
    end
end
