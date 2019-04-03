class DeliveryHistory < ApplicationRecord
  
  enum position:{'なし': 0, 'フリープラン': 1, 'ライトプラン': 2, 'スタンダードプラン': 3}
end
