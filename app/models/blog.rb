class Blog < ActiveRecord::Base
  include Datable
  has_many :comments
  has_many :tags, as: :tagable
  #try to select only needed comments
  scope :with_last_comments, ->(count=3) do
      joins('FULL OUTER JOIN comments ON blogs.id=comments.blog_id')
      .where("comments.created_at >= (SELECT MIN(comments.created_at)
              FROM comments WHERE comments.blog_id=blogs.id LIMIT #{count})")
      .group('blogs.id')
    end

  def raw_tags
    tags.pluck(:name).join(' ')
  end
end
