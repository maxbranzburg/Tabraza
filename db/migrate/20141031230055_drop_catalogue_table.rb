class DropCatalogueTable < ActiveRecord::Migration
  def change
 	 drop_table :catalogues
  end
end
