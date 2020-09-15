class KidsController < ApplicationController
  def index
    @kids = Kid.all

    render json: { kids: @kids }
  end

  def create
    @kid = Kid.new(kid_params)
  
    if @kid.valid?
      @kid.save
      render json: @kid
    else
      render json: {message: @kid.errors.full_messages}
    end
  end

  private

  def kid_params
    params.require(:kid).permit(:username, :description, :favorite_color, :age)
  end

end

