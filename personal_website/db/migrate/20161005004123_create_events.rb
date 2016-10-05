class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.foreign_key :host
      t.datetime :time
      t.string :location
      t.boolean :interest
      t.string :details
      t.foreign_key :attending

      t.timestamps
    end
  end
end
