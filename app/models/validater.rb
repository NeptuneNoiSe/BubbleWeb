class Validater < ApplicationRecord
  # Blank validates
  validates :nod, presence: { message: "Number of digits can't be blank." }
  validates :min, presence: { message: "Minimum number can't be blank." }
  validates :max, presence: { message: "Maximum number can't be blank." }
  # Greater than validates
  validates(:max,
            comparison: { greater_than: :min, message: 'Maximum number must be greater than Minimum number.' },
            allow_blank: true
  )
  # Numeric validates
  validates(:nod,
            numericality: { only_numeric: :nod, message: 'Number of digits is not a number.' },
            allow_blank: true
  )
  validates(:min,
            numericality: { only_numeric: :min, message: 'Minimum number is not a number.' },
            allow_blank: true
  )
  validates(:max,
            numericality: { only_numeric: :max, message: 'Maximum number is not a number.' },
            allow_blank: true
  )
  validates(:ndp,
            numericality: { only_numeric: :ndp, message: 'Number of decimal places is not a number.' },
            allow_blank: true
  )
  validates(:ndp,
            numericality: { greater_than_or_equal_to: 0,
                            message: 'Number of decimal places must be equal to or greater than 0.' },
            allow_blank: true
  )
end
