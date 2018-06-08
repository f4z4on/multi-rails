Rails.application.routes.draw do
  scope (Rails.configuration.action_controller.relative_url_root || "") do
    root to: 'dummy#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
