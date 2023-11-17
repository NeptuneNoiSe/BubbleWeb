class Support < ApplicationRecord
  has_many :comments, dependent: :destroy
  # Blank validates
  validates :title, presence: { message: "Theme can't be blank." }
  validates :body, presence: { message: "Text can't be blank." }
  # Length validates
  validates(:title,
            length: {maximum: 15, message: 'Theme of digits so big.' },
            allow_blank: true
  )
  validates(:body,
            length: {maximum: 50, message: 'Text so big.' },
            allow_blank: true
  )
  validates(:body,
            length: {minimum: 10, message: 'Text so small.' },
            allow_blank: true
  )
end
