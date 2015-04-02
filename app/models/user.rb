class User < ActiveRecord::Base
  rolify
  has_paper_trail
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :password, presence: true, on: :create, length: { within: 6..40 }
  validates :email, presence: true,
                    uniqueness: true,
                    format: {
                      with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
                    }

  def full_name
    return if first_name.nil? || last_name.nil?
    first_name + " " + last_name
  end

end
