class CreateUrlMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :url_maps do |t|
      t.string :to
      t.timestamps
    end
  end
end
