class CreateTurkishes < ActiveRecord::Migration
  def change
    create_table :turkishes do |t|
      t.string :title
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
