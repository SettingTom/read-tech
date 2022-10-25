class AddStatusToQuestionings < ActiveRecord::Migration[6.0]
  def change
    add_reference :questionings, :book, null: false, foreign_key: true
  end
end
