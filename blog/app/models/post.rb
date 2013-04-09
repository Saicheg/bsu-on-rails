class Post < ActiveRecord::Base
  attr_accessible :text, :title, :approved
  scope :approved, where(approved: true)
  scope :stupid, where('id >= ?', 42)
  validates_presence_of :text
end
