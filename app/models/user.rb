class User < ApplicationRecord
  rolify :before_add => :before_add_method
  # rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # def before_add_method
  #   debugger
  # end
  has_many :carts
  has_many :products
end
