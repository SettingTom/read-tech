class CreateMentalmaps < ActiveRecord::Migration[6.0]
  def change
    create_table :mentalmaps do |t|
      t.text       :why_text  , null: false
      t.text       :what_text , null: false
      t.text       :how_text  , null: false
      t.references :book      , null: false, foreign_key: true
      t.timestamps
    end
  end
end
