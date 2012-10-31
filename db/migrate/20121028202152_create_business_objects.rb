class CreateBusinessObjects < ActiveRecord::Migration
  def change
    create_table :business_objects do |t|
      t.string :Title
      t.string :Description
      t.string :Category
      t.integer :Price
      t.text :Notes
      t.date :DeliveryDate
      t.string :Owner

      t.timestamps
    end
  end
end
