Rails.application.routes.draw do
  root to: "homes#top"
  get 'users/new'
  get 'users/index'
  get 'users/:id' => "users#show",as: "user_show"
  get 'users/:id/edit' => "users#edit",as: "user_edit"
  get 'books/new'
  get 'books/index'
  get 'books/:id' => "books#show",as: "book_show"
  get 'books/:id/edit' => "books#edit",as: "book_edit"
  post "books" => "books#create"
  get 'homes/top'
  get 'homes/about'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
