Kokkonut::Application.routes.draw do
  

  #sessions routes
  
  post "sessions/create" =>"sessions#create"
  get "sessions/new" => "sessions#new"
  get "sessions/destroy" => "sessions#destroy"

  root :to => 'welcome#index'

  #program routes
  get "programs/all" => "programs#index"
  post "programs/create" => "programs#create"
  get "programs/remove" => "programs#destroy"

  #lesson routes
  get "lessons/new" => "lessons#new"
  post "lessons/create" => "lessons#create"
  get "lessons/index" => "lessons#index"
  get "lessons/show/:lesson_id" => "lessons#show"
  get "lessons/edit" => "lessons#edit"
  get "lessons/destroy" => "lessons#destroy"
  
  #exercise routes
  get "exercises/new" => "exercises#new"
  post "exercises/create" => "exercises#create"
  post "exercises/add_association" => "exercises#add_ex_to_lesson"


  #users routes
  get "users/show" => "users#show"
  get "users/list" => "users#list"
  get "users/signup" => "users#new"
  post "users/create" => "users#create"
  get "users/index" => "users#index"
  get "users/destroy" => "users#destroy"
  
end
