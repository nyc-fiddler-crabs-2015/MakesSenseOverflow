class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content, null: false
      t.integer :vote_count, null: false, default: 0
      t.references :question
      t.references :user

      t.timestamps null: false
    end
  end
end
