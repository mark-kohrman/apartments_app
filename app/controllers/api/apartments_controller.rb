class Api::ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
    render 'index.json.jb'
  end

  def show
    @apartment = Apartment.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @apartment = Apartment.new(
      neighborhood: params[:neighborhood],
      building_type: params[:building_type],
      rent: params[:rent]
    )
    @apartment.save
    render 'show.json.jb'
  end

  def update
    @apartment = Apartment.find_by(id: params[:id])
    @apartment.update(
      neighborhood: params[:neighborhood] || @apartment.neighborhood,
      building_type: params[:building_type] || @apartment.building_type,
      rent: params[:rent] || @apartment.rent
    )
    @apartment.save
    render 'show.json.jb'
  end

  def destroy
    @apartment = Apartment.find_by(id: params[:id])
    @apartment.destroy
    render json: {message: "You have knocked this bad boy down with a wrecking ball"}
  end
end
