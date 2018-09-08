class CreateBios < ActiveRecord::Migration[5.2]
  def change
    create_table :bios do |t|
      t.integer :age
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
