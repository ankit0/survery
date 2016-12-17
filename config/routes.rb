Rails.application.routes.draw do
  resources :survey_data
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'survey_data#index'

  namespace :api , defaults: {format: 'json'} do
    get 'v1/get_mobile_list'
  end

  
end
