class CreateTunrs < ActiveRecord::Migration[6.1]
  def change
    create_table :tunrs do |t|
      t.string :title
      t.string :artis
      t.string :duration

      t.timestamps
    end
  end
end
