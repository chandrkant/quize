class Answer < ApplicationRecord
  belongs_to :question, :touch => true
  belongs_to :option, :touch => true
  validates :option, presence: true
  validates :question, presence: true
  def correct_answer
    self.correct = (question.correct_answer == answer)
    true
  end
end
