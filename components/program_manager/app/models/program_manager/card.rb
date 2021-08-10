# frozen_string_literal: true

module ProgramManager
  class Card < ActiveRecord::Base
    self.table_name = "program_manager_cards"
  end
end
