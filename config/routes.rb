ActionController::Routing::Routes.draw do |map|

  map.resources :parent_widgets, :collection => {:obsolete => :get} do |w|
    w.resources :child_widgets
    w.resource  :singleton_widget
  end

  map.resources :user_sessions

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  map.denied "denied", :controller => "errors", :action => "denied"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
