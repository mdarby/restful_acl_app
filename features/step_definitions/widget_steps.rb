Given /^a ([^\"]*) exists$/ do |factory|
  instance_variable_set "@#{factory}", Factory(factory.to_sym)
end