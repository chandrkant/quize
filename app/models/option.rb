class Option < ApplicationRecord
  belongs_to :question
  has_one :answer, :dependent => :destroy
  validates :name, presence: true
  # validates :is_correct, presence: true
  # has_one :question, through: :answer,:dependent => :destroy
  # has_and_belongs_to_many :answer, :dependent => :destroy
  # has_one :question, through: :answer
  # after_update :correct_answer
  # def correct_answer
  	
  # 	# self.options.select{||}
  # end
end
