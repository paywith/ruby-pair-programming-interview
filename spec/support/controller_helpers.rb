# frozen_string_literal: true

module ControllerHelpers
  def json_response
    @json_response ||= begin
      result = JSON.parse(response.body)
      result.is_a?(Hash) ? result.with_indifferent_access : result
    end
  end

  def headers(response)
    {
      "Authorization": response.headers["Authorization"],
      "Content-Type": "application/json",
      "Accept": "application/json",
    }
  end
end
