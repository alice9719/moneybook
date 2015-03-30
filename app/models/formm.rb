class Formm < ActiveRecord::Base
    validates :buyday,presence: { message: '請填寫購買日期' }
    validates :title,presence: { message: '請填寫品項' }
    validates_numericality_of :price,presence: { message: '請填寫價格' }
end
