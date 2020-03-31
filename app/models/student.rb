class Student < ApplicationRecord
    validates :name, :email, presence: true
    validates :name, length: {in: 0..20}
    validates :email, length: {in: 0..20}
    validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

    has_and_belongs_to_many :courses
end
