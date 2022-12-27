class Api::V1::UsersController < ApplicationController

    def index
render json: User.all, status: :ok

    end
    def create
        user = User.create(user_params)
        if user.valid?
            render json: { user: UserSerializer.new(user) }, status: :created
        else
render json: {error: "failed to create user" }, status: :unprocessable_entity
end
    end 

    private 
def user_params
    params.require(:user).permit(:first_name, :second_name, :username, :email, :password)
end

end
