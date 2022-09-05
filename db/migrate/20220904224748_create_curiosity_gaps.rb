class CreateCuriosityGaps < ActiveRecord::Migration[6.0]
  def change
    create_table :curiosity_gaps do |t|
      t.text       :already_text
      t.text       :unknown_text
      t.references :book         , null: false, foreign_key: true
      t.timestamps
    end
  end
end
