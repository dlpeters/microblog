class Mblog < ActiveRecord::Base
  attr_accessible :email, :user

  has_many :entries

  validates :user, :email, presence: true


end
