class RecordsController < ApplicationController

  private

  def record_params
    params.require(:record).permit(:record_label, :artist, :title, :year, :condition, :description, :user_id)
  end

public


  def show
    @record = Record.find(params[:id])
  end

  def new
    @record = Record.new()
  end

  def index
    @records = Record.all
    @user=User.find(params[:user_id])
  end

  def create
    record = params['record']
    Record.create(record_params)
    flash[:sucess]=  'your record was added'
    redirect_to records_path
  end

end
