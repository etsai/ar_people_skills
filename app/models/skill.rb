class Skill < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :proficiencies
  has_many :users, through: :proficiencies

  def user_with_proficiency(level)
    user = self.proficiencies.where(:skill_rating == level).first.user_id
    User.find(user)

    #This also works but puts out the name as a string.
    #self.proficiencies.find_by_skill_rating(level).user.name
  end

end
