class CreateQuestionings < ActiveRecord::Migration[6.0]
  def change
    create_table :questionings do |t|
      t.text       :answer1
      t.text       :answer2
      t.text       :answer3
      t.text       :answer4
      t.text       :answer5
      t.text       :answer6
      t.text       :answer7
      t.text       :answer8
      t.text       :answer9
      t.text       :answer10
      t.text       :answer12
      t.text       :answer13
      t.text       :answer14
      t.text       :answer15
      t.text       :answer16
      t.text       :answer17
      t.timestamps
    end
  end
end
