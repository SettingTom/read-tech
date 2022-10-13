class CreateSummarizings < ActiveRecord::Migration[6.0]
  def change
    create_table :summarizings do |t|

      t.timestamps
    end
  end
end
