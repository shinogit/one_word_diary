class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :title,        null: false, default: ""
      t.string :body,         null: false, default: ""
      t.string :img_id
      t.string :user_id
      t.datetime :start_time

      t.timestamps
    end
  end
end
