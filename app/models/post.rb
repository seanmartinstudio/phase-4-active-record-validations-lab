class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }
    validate: click_bait

   TITLE_ARR = ["Won't Believe", "Secret", "Top [number]", "Guess"]


  def click_bait
    if TITLE_ARR.none? { |element| element.match(title)}
      errors.add(:title, "must be clickbait")
    end

end
