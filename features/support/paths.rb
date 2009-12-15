module NavigationHelpers

  def path_to(page_name)
    case page_name
    
    when /the home\s?page/
      '/'
    when /obsolete page/
      "/parent_widgets/obsolete"
    when /the parent_widgets page/
      parent_widgets_path
    when /the new_parent_widget page/
      new_parent_widget_path
    when /the parent_widget page/
      parent_widget_path(ParentWidget.first)
    when /the edit_parent_widget page/
      edit_parent_widget_path(ParentWidget.first)
    when /the singleton_widget page/
      parent_widget_singleton_widget_path(ParentWidget.first)
    when /the new_singleton_widget page/
      new_parent_widget_singleton_widget_path(ParentWidget.first)
    when /the edit_singleton_widget page/
      edit_parent_widget_singleton_widget_path(ParentWidget.first)
    when /the child_widgets page/
      parent_widget_child_widgets_path(ParentWidget.first)
    when /the child_widget page/
      parent_widget_child_widget_path(ParentWidget.first, ChildWidget.first)
    when /the new_child_widget page/
      new_parent_widget_child_widget_path(ParentWidget.first)
    when /the edit_child_widget page/
      edit_parent_widget_child_widget_path(ParentWidget.first, ChildWidget.first)
    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
