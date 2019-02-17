class RemoveNameToAnswer < ActiveRecord::Migration[5.1]
  def change
  	remove_column :answers, :name 
  end
end
