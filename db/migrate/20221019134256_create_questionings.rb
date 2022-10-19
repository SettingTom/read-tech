class CreateQuestionings < ActiveRecord::Migration[6.0]
  def change
    create_table :questionings do |t|

      t.timestamps
    end
  end
end
