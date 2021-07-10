class Introduction < ApplicationRecord

  belongs_to :user
  has_one_attached :image

  with_options presence: true, format: {with: /\A[a-zA-Z]+\z/} do
    validates :nickname
    validates :birthplace
    validates :personality
    validates :hobby
    validates :skill
    validates :music
    validates :food
    validates :study_abroad
    validates :comment
  end
  
  validates :birthday, presence: true
  validates :age     , presence: true

end

