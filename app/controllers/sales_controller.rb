class SalesController < ApplicationController

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    @sale.user_id = current_user.id
    if @sale.save
      flash[:notice] = 'ノルマ達成に向けて頑張ろう！'
      redirect_to sales_path
    else
      flash[:notice] = "ノルマ設定に失敗しました"
      render 'new'
    end
  end

  def index
    @sales = Sale.all
    @sales_achievement_rate = (500000 / @sales.count) * 100
  end

  def show
  end

  def edit
  end

  private

  def sale_params
    params.require(:sale).permit(:quota, :title, :body)
  end

end
