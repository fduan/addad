class Comment < ActiveRecord::Base

  include ActsAsCommentable::Comment

  belongs_to :commentable, :polymorphic => true, :counter_cache => true

  default_scope -> { order('created_at DESC') }

  # NOTE: install the acts_as_votable plugin if you
  # want user to vote on the quality of comments.
  #acts_as_voteable
  acts_as_mentioner

  include PublicActivity::Model
  tracked only: [:create], owner: Proc.new { |controller, model| model.user }

  # NOTE: Comments belong to a user
  belongs_to :user

  validates_presence_of :comment
  validates_presence_of :commentable
  validates_presence_of :user

  auto_html_for :comment do
    html_escape
    mention
    image
    youtube(width: 400, height: 250, autoplay: true)
    link target: '_blank', rel: 'nofollow'
    simple_format
  end

  def mentions
    @mentions ||= begin
                    regex = /@([^\s]+)/
                    comment.scan(regex).flatten
                  end
  end

  def mentioned_users
    @mentioned_users ||= User.where(slug: mentions)
  end

end
