Kokkonut::Application.routes.draw do

  root :to => 'welcome#index'
  get "whoweare" => "welcome#whoweare"

  #sessions routes
  post "sessions/create" =>"sessions#create"
  match "login" => "sessions#new"
  match "logout" => "sessions#destroy"


  #events routes
  post "events/create" => "events#create"
  get "events/destroy" => "events#destroy"
  get "events/fetch" => "events#fetch"
  post "events/edit" => "events#edit"

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
  get "programs/calendar" => "programs#calendar"
  get "programs/program_wall" => "programs#program_wall"
  get "programs/set_my_training" => "programs#set_my_training"
  get "programs/waiting_room" => "programs#waiting_room"
  get "programs/back_and_feedback" => "programs#back_and_feedback"
  #lesson routes
  get "lessons/new" => "lessons#new"
  post "lessons/create" => "lessons#create"
  get "lessons/index" => "lessons#index"
  get "lessons/show/:lesson_id" => "lessons#show"
  get "lessons/edit" => "lessons#edit"
  get "lessons/destroy" => "lessons#destroy"
  get "lessons/show_lesson/:lesson_id" => "lessons#show_lesson"
  get "lessons/change_exercise" => "lessons#change_exercise"
  get "lessons/set_exercise_done" => "lessons#set_exercise_done"
  get "lessons/new_flash_message" => "lessons#new_flash_message"

  #feedbacks/statuses routes
  post "feedbacks/create" => "feedbacks#create"
  get "feedbacks/destroy" => "feedbacks#destroy"

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
  get "users/wall" => "users#wall"
  post "users/search" => "users#search"
  get "users/visit" => "users#visit"
  get "users/friends" => "users#friends"
  get "users/follow" => "users#follow"
  get "users/remove_friend" => "users#remove_friend"
  get "users/calendar" => "users#calendar"
  get "*users/get_online_users" => "users#get_online_users"

  #messages routes
  get "messages/new" => "messages#new"
  post "messages/create" => "messages#create"
  get "messages/destroy" => "messages#destroy"
  get "messages/show" => "messages#show"
  get "messages/read" => "messages#set_read"
  get "*messages/get_new_messages" => "messages#get_new_messages"

  #comments routes
  post "comments/create" => "comments#create"
  get "comments/destroy" => "comments#destroy"

end
