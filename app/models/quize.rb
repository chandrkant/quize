class Quize < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy
  validates :name, presence: true
  validates :questions, presence: true
  accepts_nested_attributes_for :questions, allow_destroy: true
  # after_update :correct_answer
  # def correct_answer
  # 	byebug
  # 	# self.options.select{||}
  # end
end
