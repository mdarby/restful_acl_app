class SingletonWidgetsController < ResourceController::Singleton
  belongs_to :parent_widget

end