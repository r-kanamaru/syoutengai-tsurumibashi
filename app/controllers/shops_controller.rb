class ShopsController < ApplicationController

def index
  @shops = Shop.all
end

def new
  @shop = Shop.new
end

def create
  @shop = Shop.new(shops_params)
  if @shop.save
    redirect_to root_path,notice: "ショップ登録完了"
  else
    render :new
  end
end

def show
  @shop = Shop.find(params[:id])
end

def edit
  @shop = Shop.find(params[:id])
end

def update
  shop = Shop.find(params[:id])
  if shop.update(shops_params)
    redirect_to shop_path,nitice: "更新完了"
  else
    render :edit
  end
end

def destroy
  shop = Shop.find(params[:id])
  if shop.destroy
    redirect_to root_path,notice: "削除完了"
  else
    render :show
  end
end


private

def shops_params
  params.require(:shop).permit(:name,:name_kana,:copy,:founded,:openning,:closed,:town_number,:tel_number,:fax_number,:email,:url,:map_api,:switching_publiation).merge(user_id:current_user.id)
end


end
