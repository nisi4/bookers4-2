Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  get 'users/new'
  get 'users/index'
  get 'users/:id' => "users#show",as: "user_show"
  get 'users/:id/edit' => "users#edit",as: "user_edit"
  get 'books/new'
  get 'books/index'
  get 'books/:id' => "books#show",as: "book_show"
  get 'books/:id/edit' => "books#edit",as: "book_edit"
  post "books" => "books#create"
  delete "books/:id" => "books#destroy",as: "book_destroy"
  get 'homes/top'
  get 'homes/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
