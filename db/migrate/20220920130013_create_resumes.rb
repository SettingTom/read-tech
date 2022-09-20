class CreateResumes < ActiveRecord::Migration[6.0]
  def change
    create_table :resumes do |t|
      t.string     :resume_chapter
      t.text       :resume_motive_text
      t.references :book              , null: false, foreign_key: true
      t.timestamps
    end
  end
end
