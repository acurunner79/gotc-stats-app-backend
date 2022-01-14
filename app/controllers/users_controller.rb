class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    render json: { status: 200, users: User.all }
  end

  # GET /users/1
  def show
    render json: User.find(params[:id])
  end

  # POST /users
  def create
    user = User.new(user_params)

    if user.save
      render status: 201, json: { user: user}
    else
      render status: 422, json: { user: user} 
    end
  end

  # PATCH/PUT /users/1
  def update
    user = User.find(params[:id])
    user.update(user_params)
    render(json: { user: user })
  end

  # DELETE /users/1
  def destroy
    user = User.destroy(params[:id])
    render(status: 204)
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :password, :ingame_name)
    end
end
