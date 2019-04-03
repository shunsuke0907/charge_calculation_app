module ChargeCalculationsHelper
  
  def free_plan(send_count)
    if send_count > 1000
      return 'フリープランの上限は1000通です（追加購入不可）'
    end
    
    return "月間利用料は0円です"
  end
  
  def light_plan(send_count)
    if send_count <=  15000
      return '月間利用料は5000円です'
    end
    
    total = ((send_count - 15000) * 5) + 5000
    return "月間利用料は#{total.to_s(:delimited)}円です"
  end
  
  def standard_plan(send_count)
    if send_count <= 45000 
      return '月間利用料は15000円です'
    end
    
    array = []
    additions = send_count - 45000
    count = additions / 50000
    
    if count <= 2
      if additions >= 50000
        while additions >= 50000
          array << 50000
          additions -= 50000
            
          if additions < 50000 && additions != 0
            array << additions
          end
        end
      else
        array << additions
      end
    else
      2.times do
        array << 50000
      end
      
      additions -= 100000
      
      if additions >= 100000
        while additions >= 100000
          array << 100000
          additions -= 100000
            
          if additions < 100000 && additions != 0
            array << additions
          end
        end
      else
        array << additions
      end
    end
    
    if additions < 1000000
      additional_delivery = 0
      array.count.times do |count|
        if count === 0 # additions <= 50000
          additional_delivery += (array[count] * 3.0).floor
        end
        if count === 1 # 50001 <= additions && additions <= 100000
          additional_delivery += (array[count] * 2.8).floor
        end
        if count === 2 # 100001 <= additions && additions <= 200000
          additional_delivery += (array[count] * 2.6).floor
        end
        if count === 3 # 200001 <= additions && additions <= 300000
          additional_delivery += (array[count] * 2.4).floor
        end
        if count === 4 # 300001 <= additions && additions <= 400000
          additional_delivery += (array[count] * 2.2).floor
        end
        if count === 5 # 400001 <= additions && additions <= 500000
          additional_delivery += (array[count] * 2.0).floor
        end
        if count === 6 # 500001 <= additions && additions <= 600000
          additional_delivery += (array[count] * 1.9).floor
        end
        if count === 7 # 600001 <= additions && additions <= 700000
          additional_delivery += (array[count] * 1.8).floor
        end
        if count === 8 # 700001 <= additions && additions <= 800000
          additional_delivery += (array[count] * 1.7).floor
        end
        if count === 9 # 800001 <= additions && additions <= 900000
          additional_delivery += (array[count] * 1.6).floor
        end
        if count === 10 # 900001 <= additions && additions <= 1000000
          additional_delivery += (array[count] * 1.5).floor
        end
      end
    else
      return 'スタンダードプランの上限は1,000,000通です'
    end
    
    total = additional_delivery.to_i + 15000
    return "月間利用料は#{total.to_s(:delimited)}円です"
  end
end

# if additions <= 50000
#       unit_price = 3.0
#     elsif 50001 <= additions && additions <= 100000
#       unit_price = 2.8
#     elsif 100001 <= additions && additions <= 200000
#       unit_price = 2.6
#     elsif 200001 <= additions && additions <= 300000
#       unit_price = 2.4
#     elsif 300001 <= additions && additions <= 400000
#       unit_price = 2.2
#     elsif 400001 <= additions && additions <= 500000
#       unit_price = 2.0
#     elsif 500001 <= additions && additions <= 600000
#       unit_price = 1.9
#     elsif 600001 <= additions && additions <= 700000
#       unit_price = 1.8
#     elsif 700001 <= additions && additions <= 800000
#       unit_price = 1.7
#     elsif 800001 <= additions && additions <= 900000
#       unit_price = 1.6
#     elsif 900001 <= additions && additions <= 1000000
#       unit_price = 1.5
#     else
#       return 'スタンダードプランの上限は1,000,000通です'
#     end