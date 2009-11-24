class UserSessionsController < ResourceController::Base

  skip_before_filter :has_permission?

  create.wants.html { redirect_to parent_widgets_path }

  def destroy
    UserSession.find.destroy
    redirect_to login_path
  end

end