class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :id
      t.string :showcase_list
      t.string :description

      t.timestamps
    end
  end
end
