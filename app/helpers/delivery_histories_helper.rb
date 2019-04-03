module DeliveryHistoriesHelper
  
  def plan_select_list
    return [['フリープラン', 1], ['ライトプラン', 2], ['スタンダードプラン', 3]]
  end
  
  def plan_list
    return ['なし', 'フリープラン', 'ライトプラン', 'スタンダードプラン']
  end
end
