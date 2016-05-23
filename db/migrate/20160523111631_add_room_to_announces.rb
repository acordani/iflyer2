class AddRoomToAnnounces < ActiveRecord::Migration
  def change
    add_column :announces, :room, :integer
  end
end
