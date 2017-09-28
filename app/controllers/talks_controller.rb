class TalksController < ApplicationController
  before_action :set_talk, only: [:edit, :update, :destroy]
  
  def index
    @talks = Talk.all
  end
  
  def new
    @talk = Talk.new
  end

  def create
    @talk = Talk.new(talks_params)
    if @talk.save
      redirect_to talks_path, notice: "投稿しました！"
    else
      render 'new'
    end
  end
  
  def confirm
    @talk = Talk.new(talks_params)
  end
  
  def edit
  end
  
  def update
    if @talk.update(talks_params)
      redirect_to talks_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end
  
  def destroy
    @talk = Talk.find(params[:id])
    @talk.destroy
    redirect_to talks_path, notice: "削除しました！"
  end
  
  private
    def talks_params
      params.require(:talk).permit(:comment)
    end
    
    def set_talk
      @talk = Talk.find(params[:id])
    end
  
end
