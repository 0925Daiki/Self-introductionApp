class CreateIntroductions < ActiveRecord::Migration[6.0]
  def change
    create_table :introductions do |t|
      t.references :user,          foreign_key: true
      t.string     :nickname,      null: false
      t.date       :birthday,      null: false
      t.string     :age,           null: false
      t.string     :birthplace,    null: false
      t.string     :personality,   null: false
      t.string     :hobby,         null: false
      t.string     :skill,         null: false
      t.string     :music,         null: false
      t.string     :food,          null: false
      t.text       :study_abroad,  null: false
      t.text       :comment,       null: false
      t.timestamps
    end
  end
end
