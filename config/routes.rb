Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :blogs
  # get '/top' => 'book#top’
	resources :books
	 root :to => 'books#top'
	 # get '/books' => 'posts#index'end
	 # get '/books/:id' => 'book#show', as: 'book'
	 # patch '/books/:id' => 'books#update', as: 'update_book'


end
