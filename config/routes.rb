Rails.application.routes.draw do

  root to: 'talks#top'

  get '/talks/top', to: 'talks#top'

  resources :talks do
    collection do
      post :confirm
    end
  end

end


#Prefix Verb   URI Pattern               Controller#Action
#root GET    /                         talks#top
#talks_top GET    /talks/top(.:format)      talks#top
# talks GET    /talks(.:format)          talks#index
#       POST   /talks(.:format)          talks#create
#new_talk GET    /talks/new(.:format)      talks#new
#edit_talk GET    /talks/:id/edit(.:format) talks#edit
#  talk GET    /talks/:id(.:format)      talks#show
#       PATCH  /talks/:id(.:format)      talks#update
#       PUT    /talks/:id(.:format)      talks#update
#       DELETE /talks/:id(.:format)      talks#destroy
#confirm_talks POST   /talks/confirm(.:format)  talks#confirm
