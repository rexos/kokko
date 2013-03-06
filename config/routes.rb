Kokkonut::Application.routes.draw do

  root :to => 'welcome#index'

  #program routes
  get "programs/all" => "programs#index"
  post "programs/create" => "programs#create"
  get "programs/remove" => "programs#destroy"

end
