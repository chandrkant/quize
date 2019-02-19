class Question < ApplicationRecord
  belongs_to :quize
  has_many :options, dependent: :destroy
  has_one :answer, :dependent => :destroy
  validates :name, presence: true
  validates :options, presence: true
  # validates :currect_answer, presence: true
  # after_save :add_answer
  # has_and_belongs_to_many :answer, :dependent => :destroy
  # has_one :option, through: :answer,:dependent => :destroy
  accepts_nested_attributes_for :options, allow_destroy: true
  # after_update :correct_answer
  # def correct_answer
  # 	# self.options.select{||}
  # end
  # def add_answer
  #   ans = self.options.find_by_is_correct(true)
  #   Answer.find_or_initialize_by(question: self).update_attributes!(question:self,option:ans)
  # end

  # def currect_answer
  #   self.options.find_by_is_correct(true).present? ? true : nil
  # end

end
