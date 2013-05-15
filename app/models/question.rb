class Question < ActiveRecord::Base
  attr_accessible :fact, :statement

  validates :statement, presence: true,
                        length: { minimum: 10 }
  validates :fact, :inclusion => {:in => [true, false]}
end
