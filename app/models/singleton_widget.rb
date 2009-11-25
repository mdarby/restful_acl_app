class SingletonWidget < ActiveRecord::Base

  logical_parent :parent_widget, :singleton
  belongs_to :parent_widget

  # This method checks permissions for the :index action
  def self.is_indexable_by(user, parent = nil)
    user.allowed? && parent.is_active
  end

  # This method checks permissions for the :create and :new action
  def self.is_creatable_by(user, parent = nil)
    user.allowed? && parent.is_active
  end

  # This method checks permissions for the :show action
  def is_readable_by(user, parent = nil)
    user.allowed? && parent.is_active
  end

  # This method checks permissions for the :update and :edit action
  def is_updatable_by(user, parent = nil)
    user.allowed? && parent.is_active
  end

  # This method checks permissions for the :destroy action
  def is_deletable_by(user, parent = nil)
    user.allowed? && parent.is_active
  end

end
