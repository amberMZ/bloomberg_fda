class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :display_name
      t.string :description, :limit => 511

      t.timestamps null: false
    end
  end
end
