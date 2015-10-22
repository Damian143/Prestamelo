class AddUserIdToProducts < ActiveRecord::Migration
  def change
    #add_column :posts, :user_id, :integer
    add_reference :products, :user, index: true, foreign_key: true
  end
end