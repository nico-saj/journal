class SubjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    respond_with Subject.all
  end

  def create
    respond_with Subject.create(subject_params)
  end

  def update
    respond_with Subject.update(subject_params)
  end

  def destroy
    respond_with Subject.find_by(id: params[:id]).destroy 
  end

  def show
    respond_with Subject.find_by(id: params[:id])
  end

  private
    def subject_params
      params.require(:subject).permit(:id, :name)
    end
end
