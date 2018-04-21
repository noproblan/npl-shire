class CreateTicketOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :ticket_options do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.references :ticket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
