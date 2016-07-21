module Datable
  extend ActiveSupport::Concern

  def pretty_date
    created_at.to_formatted_s(:long)
  end
end
