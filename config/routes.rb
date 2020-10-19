Rails.application.routes.draw do
 Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :recipes 
    end
  end
  namespace :api do
    namespace :v1 do
      resources :ingredients 
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# 
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htmlend end
end 