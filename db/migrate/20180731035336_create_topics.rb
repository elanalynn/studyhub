class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :topic
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
