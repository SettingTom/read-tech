class CreateSummarizings < ActiveRecord::Migration[6.0]
  def change
    create_table :summarizings do |t|
      t.string     :summarizing_chapter
      t.text       :summarizing_text
      t.references :book               , null: false, foreign_key: true
      t.timestamps
    end
  end
end
