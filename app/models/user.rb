class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  enum role: [ :reader, :admin ]
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :reader
  end
end
