Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home_page#index' 
  
  namespace :api do
    post '/ruby_bash/run_code', to: 'ruby_bash#run_code'
  end
end
