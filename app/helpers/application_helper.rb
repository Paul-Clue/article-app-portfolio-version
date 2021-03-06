module ApplicationHelper
  def logout_button
    @recent_tesla_article = Article.all.tesla.first
    @recent_ford_article = Article.all.ford.first
    @recent_gm_article = Article.all.gm.first
    @recent_lucid_article = Article.all.lucid.first
    @most_popular_article2 = Article.most_pop

    tes_id = @recent_tesla_article
    for_id = @recent_ford_article
    gm_id = @recent_gm_article
    luc_id = @recent_lucid_article

    @str = ''
    if logged_in?
      # rubocop:disable Style/IdenticalConditionalBranches
      @str += "<li class='nav-item'>"
      # rubocop:enable Style/IdenticalConditionalBranches
      @str += link_to 'Home', root_path, style: 'color: orange; text-decoration: none;'.to_s
      @str += '</li>'
      @str += "  <li class='nav-item'>"
      @str += "  #{link_to 'Write An Article', new_article_path, style: 'color: grey; text-decoration: none;',
                                                                 class: 'css_class'}"
      @str += '</li>'
      @str += "<li class='nav-item'>"
      @str += link_to 'Tesla', category_path(tes_id.category_id), style: 'color: grey; text-decoration: none;'.to_s
      @str += '</li>'
      @str += "<li class='nav-item'>"
      @str += link_to 'Ford', category_path(for_id.category_id), style: 'color: grey; text-decoration: none;'.to_s
      @str += '</li>'
      @str += "<li class='nav-item'>"
      @str += link_to 'GM', category_path(gm_id.category_id), style: 'color: grey; text-decoration: none;'.to_s
      @str += '</li>'
      @str += "<li class='nav-item'>"
      @str += link_to 'Lucid', category_path(luc_id.category_id), style: 'color: grey; text-decoration: none;'.to_s
      @str += '</li>'
      @str += " <li class='nav-item'>"
      # rubocop:disable Layout/LineLength
      @str += "  #{link_to('LogOut', destroy_user_session_path,
                                                style: 'color: grey; text-decoration: none; position: absolute; left: 1300px;')}"
      # rubocop:enable Layout/LineLength
      # rubocop:disable Style/IdenticalConditionalBranches
      @str += '</li>'
    # rubocop:enable Style/IdenticalConditionalBranches
    else
      # rubocop:disable Style/IdenticalConditionalBranches
      @str += "<li class='nav-item'>"
      # rubocop:enable Style/IdenticalConditionalBranches
      @str += "  <span style='color: grey; font-size: 18px; font-weight: bold;'>Login or Sign Up:<span>"
      @str += '</li>'
      @str += "<li class='nav-item'>"
      @str += "  #{link_to('Login',  new_user_session_path, style: 'color: navy; text-decoration: none;')}"
      @str += '</li>'
      @str += "<li class='nav-item'>"
      @str += "  #{link_to('Sign Up', new_user_registration_path, style: 'color: navy; text-decoration: none;')}"
      # rubocop:disable Style/IdenticalConditionalBranches
      @str += '</li>'
      # rubocop:enable Style/IdenticalConditionalBranches
    end
    @str.html_safe
  end
end
