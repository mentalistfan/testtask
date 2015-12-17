class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :pending
      t.string :published

      t.timestamps
    end
  end
end
