class CreateLans < ActiveRecord::Migration[5.1]
  def change
    create_table :lans do |t|
      t.string :name, null: false
      t.datetime :starts_at, null: false
      t.datetime :ends_at, null: false
      t.integer :planned_seats, null: false
      t.text :description

      t.timestamps
    end
  end
end
