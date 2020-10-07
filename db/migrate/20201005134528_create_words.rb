class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :title
      t.text :body
      t.string :img_id
      t.datetime :start_time

      t.timestamps
    end
  end
end
