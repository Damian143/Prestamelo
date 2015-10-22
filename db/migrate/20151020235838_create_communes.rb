class CreateCommunes < ActiveRecord::Migration
  def change
    create_table :communes do |t|
      t.string :name
    end
  end
end
