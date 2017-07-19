Rails.application.routes.draw do


  resources :places do
    resources :reviews
  end
end
