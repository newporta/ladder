class Comment < ActiveRecord::Base
  MAX_LENGTH = 500

  belongs_to :user
  belongs_to :commentable, :polymorphic => true

  validates_length_of :content, :maximum => MAX_LENGTH
end
