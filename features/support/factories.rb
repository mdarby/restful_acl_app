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
  p.is_active true
end

Factory.define :child_widget do |c|
  c.name "Child Widget"
  c.association :parent_widget
end

Factory.define :singleton_widget do |s|
  s.name "Singleton Widget"
  s.association :parent_widget
end

Factory.define :closed_parent_widget, :parent => :parent_widget do |c|
  c.name "Closed Parent Widget"
  c.is_active false
end

Factory.define :child_widget_in_closed_parent, :parent => :child_widget do |c|
  c.name "Child Widget in closed parent"
  c.association :parent_widget, :factory => :closed_parent_widget
end

Factory.define :singleton_widget_in_closed_parent, :parent => :singleton_widget do |c|
  c.name "Singleton Child Widget in closed parent"
  c.association :parent_widget, :factory => :closed_parent_widget
end