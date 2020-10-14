class CreateContactAnsers < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_ansers do |t|
      t.string :body
      t.integer :user_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
