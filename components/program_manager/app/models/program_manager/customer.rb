# frozen_string_literal: true

module ProgramManager
  class Customer < ActiveRecord::Base
    self.table_name = "program_manager_customers"
  end
end
