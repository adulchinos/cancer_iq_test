Rails.application.routes.draw do
   root to: 'patients#index'

   namespace :api do
    namespace :v1 do
    get '/cancers' => 'cancers#index'
    post '/cancers' => 'cancers#create'
    end
  end
  
   get '/patients/new' => 'patients#new'
   post '/patients' => 'patients#create'
   get '/patients/:id' => 'patients#show'
   get '/patients/:id/edit' =>'patients#edit'
   patch '/patients/:id' => 'patients#update'
   delete '/patients/:id' => 'patients#destroy'
end
