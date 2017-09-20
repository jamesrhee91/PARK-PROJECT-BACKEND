class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.st_point :lonlat, geographic: true
      t.boolean :taken, default: false

      t.timestamps
    end
  end
end
