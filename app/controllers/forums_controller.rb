class ForumsController < ApplicationController
  before_action :set_forum, only: %i[show edit update destroy]
  before_action :require_user, only: [:new, :create]

  def new
    @forum = Forum.new
  end

  def index
    if params[:search]
      @forums = Forum.where(['name LIKE ?',"%#{params[:search]}%"])
    else
      @forums = Forum.all
    end
  end

  def show
    @forum = Forum.find(params[:id])
  end

  def create
    @forum = Forum.new(forum_params)
    respond_to do |format|
      if @forum.save
        format.html { redirect_to forum_path(@forum), notice: "Se ha creado con exito el foro"}
      else
        format.html {render :new}
      end
    end
  end

  def edit

  end

  def update
      if @forum.update(forum_params)
        redirect_to forums_path
      else
        render 'edit'
      end
  end

  def destroy
    @forum.destroy
    redirect_to forums_path
  end



  private

    def forum_params
      params.require(:forum).permit(:name, :description, :op)
    end

    def set_forum
      @forum = Forum.find(params[:id])
    end
end
