class DeliveryHistoriesController < ApplicationController
  
  def index
    @title = '配信情報一覧'
    @delivery_histories = DeliveryHistory.all.order(:delivery_month)
  end

  def new
    @title = '月間配信情報の追加'
    @delivery_history = DeliveryHistory.new
  end
  
  def create
    delivery_history = DeliveryHistory.new(delivery_history_params)
    if delivery_history.save
      flash[:success] = '月間配信情報を追加しました'
      redirect_to delivery_histories_path
    else
      render 'new'
    end
  end

  def edit
    @title = '月間配信情報の編集'
    @delivery_history = DeliveryHistory.find(params[:id])
  end
  
  def update
    delivery_history = DeliveryHistory.find(params[:id])
    if delivery_history.update_attributes(delivery_history_params)
      flash[:success] = '月間配信情報を更新しました'
      redirect_to delivery_histories_path
    else
      render 'edit'
    end
  end
  
  private

    def delivery_history_params
      params.require(:delivery_history).permit(:delivery_month, :plan, :send_count, :total_amount)
    end
end