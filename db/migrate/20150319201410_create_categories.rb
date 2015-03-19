class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :tag_name, null: false
      t.references :question, null: false

      t.timestamps null: false
    end
  end
end
