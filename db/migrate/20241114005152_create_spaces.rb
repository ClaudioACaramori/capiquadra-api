class CreateSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :spaces do |t|
      t.integer :kind
      t.boolean :availability

      t.timestamps
    end
  end
end
