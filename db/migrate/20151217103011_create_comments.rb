class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :body
      t.string :rating

      t.timestamps
    end
  end
end
