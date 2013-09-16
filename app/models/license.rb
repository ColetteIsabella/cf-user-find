class License < ActiveRecord::Base
validates :number, presence: true
validates :state, presence: true, length: { is: 2 },
  format:{ with: /\A[A-Z]{2}\Z/ }
belongs_to :user
end
