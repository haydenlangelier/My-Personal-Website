class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.foreign_key :hosting
      t.foreign_key :attending
      t.string :details

      t.timestamps
    end
  end
end
