Factory.define :employee, :class => :user do |e|
  e.username "employee"
  e.password "password"
  e.password_confirmation "password"
  e.allowed true
  e.is_admin false
end

Factory.define :admin, :parent => :employee do |a|
  a.is_admin true
end

Factory.define :intruder, :parent => :employee do |i|
  i.username "intruder"
  i.allowed false
  i.is_admin false
end

Factory.define :parent_widget do |p|
  p.name "Parent Widget"
end

Factory.define :child_widget do |c|
  c.name "Child Widget"
  c.association :parent_widget
end

Factory.define :singleton_widget do |s|
  s.name "Singleton Widget"
  s.association :parent_widget
end
