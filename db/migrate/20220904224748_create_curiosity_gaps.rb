class CreateCuriosityGaps < ActiveRecord::Migration[6.0]
  def change
    create_table :curiosity_gaps do |t|

      t.timestamps
    end
  end
end
