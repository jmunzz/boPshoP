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
    @user = current_user
  end

  def query_all
    Record.where([ "record_label LIKE ?", %#{(params[:user_query])} % , "artist LIKE ?",  %#{(params[:user_query])}%,     bun"year LIKE ?", %#{(params[:user_query])}% ]) 
  end


  def create
    record = params['record']
    current_user.records.create(record_params)
    flash[:sucess]=  'your record was added'
    redirect_to records_path
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to records_path
  end


end
