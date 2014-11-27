module SessionsHelper
	
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user = @current_user || User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

   def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def current_user?(user)
    user == current_user
  end


def set_visit
@visit = Visit.find(session[:visit_id])
rescue ActiveRecord::RecordNotFound 
  @visit = Visit.create 
  session[:visit_id] = @visit.id
end

  def current_visit
    Visit.find(session[:visit_id])
    rescue ActiveRecord::RecordNotFound
      visit = Visit.create
      session[:visit_id] = visit.id
      visit
  end
  
end
