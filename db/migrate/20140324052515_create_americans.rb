class CreateAmericans < ActiveRecord::Migration
  def change
    create_table :americans do |t|

      t.timestamps
    end
  end
end
