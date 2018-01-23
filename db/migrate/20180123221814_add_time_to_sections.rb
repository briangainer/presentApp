class AddTimeToSections < ActiveRecord::Migration[5.1]
  def change
    add_column :sections, :time, :integer
  end
end
