class CreateCertificates < ActiveRecord::Migration[5.2]
  def change
    create_table :certificates do |t|
      t.string :name
      t.integer :certificate_type

      t.timestamps
    end
  end
end
