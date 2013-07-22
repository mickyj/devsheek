class StylesController < ApplicationController
  def index
    # @styles = @auth.styles #each user will have their own styles once I figure out the login issue
    @styles = Style.all
  end

  def create

    name = params[:name]
    shoe = params[:shoe]
    beard = params[:beard]
    drink = params[:drink]
    browser = params[:browser]

    style = Style.create(:name => name, :shoe => shoe, :beard => beard, :drink => drink, :browser => browser)
    #@styles << style
    #if I had login correctly set up it would be @auth.styles << style because a user has many styles and this is an array to which we can push the one we just created
    render :json => style #turn the ruby object into JSON so javascript can read it
  end
end

