class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

         rolify
  devise :database_authenticatable,# :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :email
end
