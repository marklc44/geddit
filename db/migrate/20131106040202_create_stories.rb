class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :title
      t.string :url
      t.string :username

      t.timestamps
    end
  end
end
