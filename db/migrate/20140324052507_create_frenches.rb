class CreateFrenches < ActiveRecord::Migration
  def change
    create_table :frenches do |t|

      t.timestamps
    end
  end
end
