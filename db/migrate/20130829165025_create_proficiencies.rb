class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.belongs_to :skill, :user
      t.integer :skill_rating, default: 0
      end
  end
end
