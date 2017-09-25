class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :title
      t.string :address
      t.text :discription
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
