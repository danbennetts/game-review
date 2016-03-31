class GamesController < ApplicationController
  before_action :find_game, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  def index
    if params[:genre].blank?
      @games = Game.all.order("created_at DESC")
    else
      @genre_id = Genre.find_by(name: params[:genre]).id
      @games = Game.where(:genre_id => @genre_id).order("created_at DESC")
    end
  end

  def show
    @review = Review.all
    if @game.reviews.blank?
      @average_review = 0
    else
      @average_review = @game.reviews.average(:rating).round(2)
    end
  end

  def new
    @game = current_user.games.build
    @genres = Genre.all.map{ |g| [g.name, g.id] }
  end

  def create
    @game = current_user.games.build(game_params)
    @game.genre_id = params[:genre_id]
    if @game.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @genres = Genre.all.map{ |g| [g.name, g.id] }
  end

  def update
    @game.genre_id = params[:genre_id]
    if @game.update(game_params)
      redirect_to game_path(@game)
    else
      render 'edit'
    end
  end

  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { render :json => { :status => "DELETED" } }
    end
    # redirect_to root_path
  end

  private
    def game_params
      params.require(:game).permit(:title, :description, :developer, :publisher, :rating, :genre_id, :game_img)
    end

    def find_game
      @game = Game.find params[:id]
    end
end
