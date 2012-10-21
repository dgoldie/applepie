class StaticPagesController < ApplicationController

  def landing_page
    respond_to do |format|
      format.html {render :layout => true}        # turns on layout including stylesheets
      #format.mobile {render :handlers => [:haml]}  # PSB: landing_page.mobile.haml
      #format.mobile {render :layout => '/layouts/application.mobile.haml'}  # PSB: landing_page.mobile.haml
    end
  end

  def about_us
    respond_to do |format|
      format.html {render :layout => true}
    end
  end

  def administration_page
    if current_user.role == "admin"
      respond_to do |format|
        format.html {render :layout => true}
      end
    else
      redirect_to root_path
    end
  end

end