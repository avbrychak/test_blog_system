class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  belongs_to :article

  def pretty_date
    created_at.to_formatted_s(:long)
  end
end
