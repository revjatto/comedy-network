class CreateGiggles < ActiveRecord::Migration[5.2]
  def change
    create_table :giggles do |t|
      t.string :title
      t.text :body
      t.string :author

      t.timestamps
    end
  end
end
