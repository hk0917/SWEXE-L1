class Book < ApplicationRecord
  validates :title, presence: { message: "を入力してください" }
  validates :author, presence: { message: "を入力してください" }
  validates :price, presence: { message: "を入力してください" },
                    numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "は0以上の半角数字で入力してください" }
end