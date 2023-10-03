class CreateMassives < ActiveRecord::Migration[7.0]
  def change
    create_table :massives do |t|

      t.timestamps
    end
  end
end
