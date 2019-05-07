class Api::ListsController < ApiController
  before_action :authenticated?

  def create
    list = List.new(list_params)
    if list.save
      render json: list
    else
      render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def list_params
    params.require(:test_list).permit(:email, :password, :user_id, :list_name)
  end
end
