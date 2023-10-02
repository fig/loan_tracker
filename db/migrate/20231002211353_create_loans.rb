class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.decimal :amount, precision: 10, scale: 2
      t.string :purpose
      t.date :due_date
      t.references :lender, null: false, foreign_key: true
      t.references :borrower, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
