class User < ActiveRecord::Base
  before_save{self.email = email.downcase if email.present}

  attr_accessor :name,:email,:password
  validates :name, length:{minimum: 1, maximum:100}, presence: true
  validates :password, presence: true, length: {minimum 6}, if: "password_digest.nil?"
  validates :password, length:{minimum: 6}, allow_blank: true

  def initialize (name, email, password,)
    @name = name
    @description = email
    @product = password
  end
end
