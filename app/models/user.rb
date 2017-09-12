class User < ApplicationRecord

  has_many :bids, dependent: :destroy
  has_many :jobs, dependent: :destroy
  has_one :contractor, dependent: :destroy
  has_one :company, dependent: :destroy
  has_many :workhistories, dependent: :destroy
  has_many :licenses, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
