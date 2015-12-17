require 'securerandom'
class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password
  belongs_to :role
  has_many :news
  before_create :set_default_role
  

  private
  	def set_default_role
  		self.role ||= Role.find_by_name('default')
  	end	
end
