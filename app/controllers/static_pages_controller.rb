class StaticPagesController < ApplicationController
  
  def home
    
  end
  
  def calculate
    send_count = params[:send_count].to_i
    
    case params[:plan].to_i
    when 1
      @monthly_amount = free_plan(send_count)
    when 2
      @monthly_amount = light_plan(send_count)
    when 3
      @monthly_amount = standard_plan(send_count)
    end

    render action: :home
  end
end
