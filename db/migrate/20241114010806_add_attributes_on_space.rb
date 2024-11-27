class AddAttributesOnSpace < ActiveRecord::Migration[7.0]
  def change
    add_column :spaces, :depth, :float
    add_column :spaces, :number_available, :integer
    add_column :spaces, :type, :string
  end
end
