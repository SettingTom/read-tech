class CreateVisualizings < ActiveRecord::Migration[6.0]
  def change
    create_table :visualizings do |t|

      t.timestamps
    end
  end
end
