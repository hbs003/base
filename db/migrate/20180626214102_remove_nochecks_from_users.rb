class RemoveNochecksFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :nochecks
  end
end
