class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :author
      t.text :body

      t.timestamps
    end
  end
end
