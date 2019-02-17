class Answer < ApplicationRecord
  belongs_to :question, :touch => true
  belongs_to :option, :touch => true
end
