class AuthorsController < ApplicationController
  def index
    @authors = Author.order(name: :asc)
  end

  def show
    @author = Author.find( params[:id] )
  end

  def new
    @author = Author.new
  end

  def create
    author = Author.new( author_params )

    if author.save
      redirect_to authors_path
    else
      render 'new'
    end
  end

    private

    def author_params
      params.require( :author ).permit( :name, :country, :bio )
    end

end
