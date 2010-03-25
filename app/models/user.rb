class User < ActiveRecord::Base
  include SimplestAuth::Model
  
  validates_presence_of :email
  validates_uniqueness_of :email
  
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password, :if => :password_required?
  
  def self.register
    puts "\nREGISTER A NEW USER\n-------------------\nFill in the fields as they appear to create an account.\n\n"
    user = self.new
    puts "* Email address:"
    user.email = gets.chomp
    puts "* Password:"
    user.password = gets.chomp
    puts "* Confirm password:"
    user.password_confirmation = gets.chomp
    puts "Saving user information..."
    if user.save
      puts "User successfully saved!"
      return true
    else
      puts "ERROR: User could not be saved!"
      return false
    end
  end
  
  def self.change_password
    puts "\nCHANGE PASSWORD\n---------------\nEnter account email address, then fill in the fields to change password.\n\n"
    puts "* Email address:"
    user = User.find_by_email gets.chomp
    if user
      puts "* New password:"
      user.password = gets.chomp
      puts "* Confirm new password:"
      user.password_confirmation = gets.chomp
      puts "Saving new password..."
      if user.save
        puts "Password successfully changed!"
        return true
      else
        puts "ERROR: Password could not be changed!"
        return false
      end
    else
      puts "ERROR: No user with that email address could be found!"
      return false
    end
  end
end