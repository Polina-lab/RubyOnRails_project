module EmailValidatable
  extend ActiveSupport::Concern

  EMAIL_REGEX =Regexp.new('%r{/\A[\w.+-]+@\w+\.\w+\z/}x')
  EMAIL_REGEX_2 = Regexp.new(/\A[\w.+-]+@\w+\.\w+\z/)

end