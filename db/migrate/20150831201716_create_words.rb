class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
		t.string :palavra1
		t.string :palavra2
		t.boolean :isAnagram
      t.timestamps null: false
    end
  end
end
