class Contact < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :phonenumber, format: { with: /\+\d+\s{1}\d+\s{1}\d{6,}/, message: 'should be of the form: "+", nonempty group of digits, space, nonempty group of digits, space and a group of digits with at least 6 digits e.g.: +39 02 1234567.' }
  def full_name
    "#{firstname} #{lastname}"
  end
end
