class CreateChapters < ActiveRecord::Migration[6.1]
  def change
    create_table :chapters do |t|
      t.string :title
      t.text :content
      t.integer :story_id

      t.timestamps
    end
  end
end
