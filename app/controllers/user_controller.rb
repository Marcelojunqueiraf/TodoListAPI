class UserController < ApplicationController
    before_action :set_user, except: [:index, :create, :login]
    def index
        users = User.all
        render json: users, status: :ok
    end

    def login
        puts params[:name]
        user = User.find_by(name: params[:name])
        if user == nil
            render json: {description: "user not found"}, status: :not_found
        else
            render json: user, status: :ok
        end
    end

    def show
        render json: @user, status: :ok
    end

    def create
        user = User.new(user_params)

        if user.save
            render json: user, status: :created
        else
            render json: user, status: :bad_request
        end
    end

    def update
        @user.update(user_params)
        render json: @user, status: :ok
    end

    def set_user
        @user = User.find(params[:id])
        if @user == nil
            render json: {description: "user not found"}, status: :not_found
        end
    end

    def user_params
        return params.permit(:name, :bio)
    end

end
