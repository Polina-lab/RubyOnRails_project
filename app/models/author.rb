class Author < ApplicationRecord
    include Visible
    include EmailValidatable
    include Error::ErrorHandling

    validates :fname, presence: true
    validates :lname, presence: true
    validates :email, presence: true, format: { with: EMAIL_REGEX_2, message: "should be in correct format"}
    
end
