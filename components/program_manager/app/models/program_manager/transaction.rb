# frozen_string_literal: true

module ProgramManager
  class Transaction < ActiveRecord::Base
    self.table_name = "program_manager_transactions"
  end
end
