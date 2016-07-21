class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  def pretty_date
    created_at.to_formatted_s(:long)
  end
end
