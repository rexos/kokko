Kokkonut::Application.routes.draw do
  

  #sessions routes
  post "sessions/create" =>"sessions#create"
  match "login" => "sessions#new"
  match "logout" => "sessions#destroy"

  root :to => 'welcome#index'


  #program routes
  get "programs/all" => "programs#index"
  post "programs/create" => "programs#create"
  get "programs/remove" => "programs#destroy"
  get "programs/start" => "programs#start"
  get "programs/next" => "programs#next"
  get "programs/resume" => "programs#resume"
  get "programs/show" => "programs#show"
  get "programs/progresses" => "programs#progresses"
  post "programs/feedback" => "programs#add_feedback"

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
  get "exercises/remove_association" => "exercises#remove_ex_from_lesson"
  get "exercises/show" => "exercises#show"

  #users routes
  get "users/new" => "users#new"
  post "users/create" => "users#create"
  get "users/index" => "users#index"
  get "users/destroy" => "users#destroy"
  get "users/add_status" => "users#add_status"
  post "users/update" => "users#update"
  get "users/home_utente" => "users#home_utente"
end
