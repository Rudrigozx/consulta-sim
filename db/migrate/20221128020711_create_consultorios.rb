class CreateConsultorios < ActiveRecord::Migration[7.0]
  def change
    create_table :consultorios do |t|

      t.timestamps
    end
  end
end
