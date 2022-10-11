class CreateVisualizings < ActiveRecord::Migration[6.0]
  def change
    create_table :visualizings do |t|
      t.text       :premise
      t.text       :explanation
      t.text       :conclusion
      t.references :book      , null: false, foreign_key: true
      t.timestamps
    end
  end
end
