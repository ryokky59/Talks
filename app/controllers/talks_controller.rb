class TalksController < ApplicationController
  before_action :set_talk, only:[:edit,:update,:destroy]

  def top
  end

  def index
    @talks = Talk.all
  end

  def new
    if params[:back]
      @talk = Talk.new(talk_params)
    else
      @talk = Talk.new
    end
  end

  def create
    @talk = Talk.new(talk_params)
    if @talk.save
      redirect_to talks_path, notice: "発言したよ！"
    else
      render 'new'
    end
  end

  def confirm
    @talk = Talk.new(talk_params)
    render :new if @talk.invalid?
  end

  def edit
  end

  def update
    if @talk.update(talk_params)
      redirect_to talks_path, notice: "言い直したよ！"
    else
      render 'edit'
    end
  end

  def destroy
    @talk.destroy
    redirect_to talks_path, notice: "取り消したよ！"
  end

  private

    def talk_params
      params.require(:talk).permit(:content)
    end

    def set_talk
      @talk = Talk.find(params[:id])
    end

end
