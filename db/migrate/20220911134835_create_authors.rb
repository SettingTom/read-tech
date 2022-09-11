class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :author_name
      t.text   :author_profile
      t.text   :author_imagine
      t.timestamps
    end
  end
end
