class AddUserIdToNews < ActiveRecord::Migration
  def change
    add_reference :news, :user, index: true
  end
end
