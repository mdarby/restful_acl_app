class ErrorsController < ApplicationController

  skip_before_filter :has_permission?

  def error
  end

  def denied
  end

end
