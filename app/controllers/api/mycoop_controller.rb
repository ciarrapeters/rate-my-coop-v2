class Api::MycoopController < ApplicationController
  def index
    @mycoop = Mycoop.all
    render :json => @mycoop
  end
end
