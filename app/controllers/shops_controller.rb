class ShopsController < ApplicationController

def index
  @shops = Shop.all
end

def new
  @shops = Shop.new
end

def create
  Shop.create(name: shops_params[:name],
              name_kana: shops_params[:name_kana],
              copy: shops_params[:copy],
              founded: shops_params[:founded],
              openning: shops_params[:openning],
              closed: shops_params[:closed],
              town_number: shops_params[:town_number],
              tel_number: shops_params[:tel_number],
              fax_number: shops_params[:fax_number],
              email: shops_params[:email],
              url: shops_params[:url],
              map_api: shops_params[:map_api],
              switching_publiation: shops_params[:switching_publiation],
              user_id: current_user.id
              )
redirect_to root_path
end

def show
  @shops = Shop.find(params[:id])
end

private

def shops_params
  params.require(:shop).permit(:name,:name_kana,:copy,:founded,:openning,:closed,:town_number,:tel_number,:fax_number,:email,:url,:map_api,:switching_publiation).merge(user_id:current_user.id)
end


end
