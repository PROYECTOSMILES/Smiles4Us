class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :usuario
      t.string :titulo
      t.string :extension
      t.integer :usuario_id

      t.timestamps
    end
  end
end
