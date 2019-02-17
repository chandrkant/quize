class AddOptionIdToAnswer < ActiveRecord::Migration[5.1]
  def change
    add_reference :answers, :option, foreign_key: true
  end
end
