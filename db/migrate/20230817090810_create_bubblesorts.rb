class CreateBubblesorts < ActiveRecord::Migration[7.0]
  def change
    create_table :bubblesorts do |t|

      t.timestamps
    end
  end
end
