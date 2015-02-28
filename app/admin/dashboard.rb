ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent Users Register" do
          ul do
            User.recent(5).map do |user|
              li link_to(user.email, admin_user_path(user)) 
              span "#{time_ago_in_words user.created_at} ago"
            end
          end
        end
      end

      column do
        panel "Recent Articles" do
          ul do
            Article.recent(5).map do |article|
              li link_to(article.title, admin_article_path(article))                
                span "#{time_ago_in_words article.created_at} ago, "
                span "by #{link_to article.user.username, admin_users_path(article.user_id)}".html_safe 
            end
          end
        end
      end      

      column do
        panel "Recent User Comments" do
          ul do
            Comment.recent(5).map do |comment|
              li comment.title
              span "by <strong>#{comment.name}</strong>".html_safe
            end
          end
        end
      end 

      column do
        panel "Recent User Report Abuse" do
          ul do
            AbuseReport.recent(5).map do |report|
              li report.title
              span "by <strong>#{report.email}</strong>".html_safe
              span "<p>#{report.description}<p>".html_safe
            end
          end
        end
      end
    end

  end # content
end
