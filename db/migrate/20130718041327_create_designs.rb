class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :title
      t.references :user

      t.timestamps
    end
    add_index :designs, :user_id
  end
end
