# frozen_string_literal: true

class ToDosController < ApplicationController
  def index
    @to_dos = ToDo.all
  end

  def new
    @to_do = ToDo.new
  end

  def create
    @to_do = ToDo.new(to_do_params)
    if @to_do.save
      format.html { redirect_to to_dos_path }
      format.turbo_stream
    else
      render :new, status: 422
    end
  end

  def edit
    @to_do = ToDo.find(params[:id])
  end

  def update
    @to_do = ToDo.find(params[:id])
    if @to_do.update(to_do_params)
      redirect_to to_dos_path
    else
      render :edit, status: 422
    end
  end

  def destroy
    @to_do = ToDo.find(params[:id])
    @to_do.destroy
    redirect_to to_dos_path
  end

  private

  def to_do_params
    params.require(:to_do).permit(:title)
  end
end