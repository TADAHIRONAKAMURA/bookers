class BooksController < ApplicationController

	def top
	end

	def index
	  @books = Book.all
	  @book = Book.new

	end

	def show
	  @book = Book.find(params[:id])
	end

	def new
	end

	def edit
	  @book = Book.find(params[:id])
	end

	def update
      book = Book.find(params[:id])
      if book.update(book_params)
      flash[:notice] = 'Book was successfully created.'
      redirect_to book_path(book.id)
	  else
	  end
	end

	def destroy
	  book = Book.find(params[:id])
	  book.destroy
	  redirect_to books_path
	end

	def create
		# ストロングパラメーターを使用
	   @book = Book.new(book_params)
	   if @book.save
	   flash[:notice] = 'Book was successfully created.'
	   redirect_to @book
	   else
	   @books = Book.all
	   # @book = Book.new(book_params)
	   render 'index'
	   end
	end

	private

	def book_params
	    params.require(:book).permit(:title, :body)
	end
	end


	# DBへ保存する
		# book.save
		# トップ画面へリダイレクト
	    # redirect_to book_path(book)
	    # if @book.save then
	    #   redirect_to book_path(@book)
	    # else
	    #   @books = Book.all
	    #   render 'index'
	    # @book = book.new(book_params)



	     
	 #    if @book.save 
		#   flash[:notice] = "Book was successfully updated."
		#   redirect_to book_path(@book)
		# else
		#   render action: :new
