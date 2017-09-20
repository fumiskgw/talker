class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.text :comment

      t.timestamps null: false
    end
  end
end
