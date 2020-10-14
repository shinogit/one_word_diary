class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :title,        null: false, default: ""
      t.string :body,         null: false, default: ""
      t.integer :anser_status,             default: 0
      t.integer :user_id

      t.timestamps
    end
  end
end
