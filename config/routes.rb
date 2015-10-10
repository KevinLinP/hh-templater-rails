Rails.application.routes.draw do

  root 'posts#new'

  resources :posts do
    post :send_email, on: :member
  end

end
