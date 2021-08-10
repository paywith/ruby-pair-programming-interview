# frozen_string_literal: true

class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :program_manager_cards do |t|
      t.bigint :customer_id
      t.string :number

      t.timestamps
    end
  end
end
