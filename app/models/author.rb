class Author < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  def presentation
    "My name is #{name} and my email is #{email}"
  end
end
