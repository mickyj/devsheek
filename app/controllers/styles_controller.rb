class StylesController < ApplicationController
  def index
    @styles = @auth.styles #each user will have their own styles
  end
end

