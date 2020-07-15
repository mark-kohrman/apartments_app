class Api::ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
    render 'index.json.jb'
  end
end
