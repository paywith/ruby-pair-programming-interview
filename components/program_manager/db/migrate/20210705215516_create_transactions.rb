# frozen_string_literal: true

class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :program_manager_transactions do |t|
      t.bigint :parent_transaction_id
      t.bigint :card_id, limit: 36, null: false
      t.string :transaction_type, null: false
      t.string :currency, limit: 3, null: false
      t.integer :amount

      t.timestamps
    end
  end
end
