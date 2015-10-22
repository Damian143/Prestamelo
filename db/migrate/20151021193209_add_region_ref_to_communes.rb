class AddRegionRefToCommunes < ActiveRecord::Migration
  def change
    add_reference :communes, :region, index: true, foreign_key: true
  end
end
