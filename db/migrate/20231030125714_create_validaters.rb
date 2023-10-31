class CreateValidaters < ActiveRecord::Migration[7.0]
  def change
    create_table :validaters do |t|
      t.string :nod
      t.string :min
      t.string :max
      t.string :ndp

      t.timestamps
    end
  end
end
