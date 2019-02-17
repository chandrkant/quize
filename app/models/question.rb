class Question < ApplicationRecord
  belongs_to :quize
  has_many :options, dependent: :destroy
  has_one :answer, :dependent => :destroy
  validates :name, presence: true
  validates :options, presence: true
  # has_and_belongs_to_many :answer, :dependent => :destroy
  # has_one :option, through: :answer,:dependent => :destroy
  accepts_nested_attributes_for :options, allow_destroy: true
  # after_update :correct_answer
  # def correct_answer
  # 	# self.options.select{||}
  # end
end
