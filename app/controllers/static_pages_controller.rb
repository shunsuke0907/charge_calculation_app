class StaticPagesController < ApplicationController
  
  def calculate
    send_count = params[:send_count].to_i
    
    @free_plan = free_plan(send_count)
    @light_plan = light_plan(send_count)
    @standard_plan = standard_plan(send_count)

    render action: :home
  end
end
