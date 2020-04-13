class Api::V1::UsersController < ApplicationController

    def show
        user = User.find_by_id(params[:id])
        if (!user)
            user = User.create(name: "test")
        end
        render json: user
    end

    private 

    def user_params 
        params.require(:user).permit(:id)
    end



end
