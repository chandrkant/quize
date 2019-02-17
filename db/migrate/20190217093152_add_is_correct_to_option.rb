class AddIsCorrectToOption < ActiveRecord::Migration[5.1]
  def change
    add_column :options, :is_correct, :boolean, default: false
  end
end
