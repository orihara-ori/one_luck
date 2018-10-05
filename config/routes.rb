Rails.application.routes.draw do
  devise_for :users
  root 'lucks#top'
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  resources :targets do 
    collection do
       get 'top'
     end
   end
  resources :users
  resources :lucks do
    collection do
      post :confirm
    end
  end
end


