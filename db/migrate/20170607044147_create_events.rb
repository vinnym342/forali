class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :time
      t.references :organiser, foreign_key: true
      t.integer :max_participants

      t.timestamps
    end
  end
end
