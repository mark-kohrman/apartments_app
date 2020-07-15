class Api::ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
    render 'index.json.jb'
  end

  def show
    @apartment = Apartment.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
