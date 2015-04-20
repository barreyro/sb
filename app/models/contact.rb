class Contact < ActiveRecord::Base
  validates :name, :email, :comment, presence: true
end
