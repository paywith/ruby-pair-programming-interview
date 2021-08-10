# frozen_string_literal: true

module RequestsHelpers
  def headers(response)
    { "Authorization": response.header["Authorization"], "Content-Type": "application/json" }
  end
end
