Kokkonut::Application.routes.draw do
  root :to => 'welcome#index'

  #program routes
  get "programs/all" => "programs#index"
  post "programs/create" => "programs#create"
  get "programs/remove" => "programs#destroy"

  #lesson routes
  get "lessons/new" => "lessons#new"
  post "lessons/create" => "lessons#create"
  get "lessons/index" => "lessons#index"
  
  #exercise routes
  get "exercises/new" => "exercises#new"
  post "exercises/create" => "exercises#create"

end
