class AddNewsIdToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :news, index: true
  end
end
