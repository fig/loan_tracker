class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :loans, dependent: :destroy, foreign_key: :borrower_id, inverse_of: :borrower
  has_many :creditors, through: :loans, source: :lender

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }, confirmation: true
  validates :admin, inclusion: { in: [true, false] }
end
