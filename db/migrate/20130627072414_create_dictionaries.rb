class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|

      t.timestamps
    end
  end
end
