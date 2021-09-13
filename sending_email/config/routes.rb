Rails.application.routes.draw do
  root 'visitors#index'
  get :contact, to:  'visitors#contact'
  post :contact, to:  'visitors#send_contact'
end
