class User < ActiveRecord::Base
  include SimplestAuth::Model
  
  validates_presence_of :email
  validates_uniqueness_of :email
  
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password, :if => :password_required?
  
  def self.register
    user = self.new
    puts "Email address:"
    user.email = gets.chomp
    puts "Password:"
    user.password = gets.chomp
    puts "Confirm password:"
    user.password_confirmation = gets.chomp
    puts "Saving user information..."
    user.save
    puts "SAVED!"
    return true
  end
end