Given /^a ([^\"]*) exists$/ do |factory|
  Factory(factory.to_sym)
end