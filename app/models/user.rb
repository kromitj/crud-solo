require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt
  has_many :attendees
  has_many :tickets, through: :attendees
  has_many :concerts, through: :tickets, source: :concert
  has_many :venues, through: :concerts, source: :venue
  has_many :ticket_levels, through: :tickets, source: :ticket_level
  has_many :bands_seen, through: :concerts, source: :band

  validates :email, :name, presence: true
  validates :email, uniqueness: true
  validate :password_validation

  def authenticate(plain_password)
    self.password == plain_password
  end

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @plain_text_password = new_password
    @password = Password.create(new_password)
    self.hashed_password = @password
  end

  def password_validation
    if @plain_text_password.nil?
      errors.add(:password, "Password is required")
    elsif @plain_text_password.length < 5
      errors.add(:password, "Password length must be at least 5")
    end
  end

end
