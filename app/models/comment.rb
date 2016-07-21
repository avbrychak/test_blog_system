class Comment < ActiveRecord::Base
  include Datable
  belongs_to :blog

  def short_form
    "#{user}: #{body}"
  end
end
