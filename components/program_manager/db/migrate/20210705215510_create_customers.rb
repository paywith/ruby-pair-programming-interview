# frozen_string_literal: true

class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :program_manager_customers do |t|
      t.string :first_name, null: false
      t.string :last_name

      t.timestamps
    end
  end
end
