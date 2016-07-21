module Blogable
  extend ActiveSupport::Concern
  
  included do
    inherit_resources
    after_action :set_tags, only: [:create, :update]
  end

  def show
    show!{@comments = resource.comments}
  end

  private
  def set_tags
    params[:tags].split(' ').each do |t|
      resource.tags.find_or_create_by(name: t)
    end
  end
end