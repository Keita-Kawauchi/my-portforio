class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :introduction
      t.string :image_id
      t.string :price
      t.timestamps
    end
  end
end
