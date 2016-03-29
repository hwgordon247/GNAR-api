class AddDetailToBeach < ActiveRecord::Migration
  def change
    add_column :beaches, :webcam, :string
    add_column :beaches, :notes, :text
  end
end
