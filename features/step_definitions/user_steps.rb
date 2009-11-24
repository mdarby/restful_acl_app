Given 'I am logged out' do
  delete "/session"
end

Given /^I am logged in as an "([^\"]*)"$/ do |user_factory|
  @current_user ||= Factory(user_factory.to_sym)
  visit(new_user_session_path)
  fill_in("user_session_username", :with => @current_user.username)
  fill_in("user_session_password", :with => @current_user.password)
  click_button("Login")
end