class User < ActiveRecord::Base
  validates :email, uniqueness: true
  validates_format_of :email, { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/ }
  validates :name, presence: true

  has_one :license
  accepts_nested_attributes_for :license
end
