class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :description
      t.string :asset_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
