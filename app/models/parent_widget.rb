class ParentWidget < ActiveRecord::Base

  has_many :child_widgets
  has_one :singleton_widget

  # This method checks permissions for the :index action
  def self.is_indexable_by(user, parent = nil)
    user.allowed?
  end

  # This method checks permissions for the :create and :new action
  def self.is_creatable_by(user, parent = nil)
    user.allowed?
  end

  # This method checks permissions for the :show action
  def is_readable_by(user, parent = nil)
    user.allowed?
  end

  # This method checks permissions for the :update and :edit action
  def is_updatable_by(user, parent = nil)
    user.allowed?
  end

  # This method checks permissions for the :destroy action
  def is_deletable_by(user, parent = nil)
    user.allowed?
  end

end