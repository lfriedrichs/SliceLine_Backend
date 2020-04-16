class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(name: params[:id])
        unless (user)
            user = User.create(name: params[:id])
        end
        if user.valid?
            render json: user
        else 
            render json: {message: user.errors.full_messages}
        end
    end

end