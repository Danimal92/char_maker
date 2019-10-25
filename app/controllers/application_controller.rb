class ApplicationController < ActionController::Base
    def logged_in?
        !!session[:user_id]
    end
    def redirect_user
        if !logged_in?
            redirect_to login_path
        end
    end
end
