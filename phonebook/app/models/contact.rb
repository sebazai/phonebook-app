class Contact < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :phonenumber, format: { with: /\+\d+\s{1}\d+\s{1}\d{6,}/ }
  def full_name
    "#{firstname} #{lastname}"
  end
end
