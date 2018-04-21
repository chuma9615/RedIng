class ForumsController < ApplicationController
  before_action :set_forum, only: %i[show edit update destroy]

  def new
    @forum = Forum.new
  end

  def index
    @forums = Forum.all
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

  private
  
    def forum_params
      params.require(:forum).permit(:name, :description)
    end

    def set_forum
      @forum = Forum.find(params[:id])
    end
end
