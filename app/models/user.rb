class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :proficiencies

  def proficiency_for(skill)
    Proficiency.where(:skill_id => skill.id, :user_id => self.id).first.skill_rating
  end


  def set_proficiency_for(skill, level)
    skill_proficiency = Proficiency.where(:skill_id => skill.id, :user_id => self.id).first
    skill_proficiency.update(skill_rating: level)
  end

end
