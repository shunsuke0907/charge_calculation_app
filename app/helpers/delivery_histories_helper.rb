module DeliveryHistoriesHelper
  
  def plan_list
    return [['フリープラン', 1], ['ライトプラン', 2], ['スタンダードプラン', 3]]
  end
  
  def plan_list_hash
    return ['なし', 'フリープラン', 'ライトプラン', 'スタンダードプラン']
  end
end
