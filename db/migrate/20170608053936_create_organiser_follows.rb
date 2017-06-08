class CreateOrganiserFollows < ActiveRecord::Migration[5.1]
  def change
    create_table :organiser_follows do |t|
      t.references :user
      t.references :organiser, foreign_key: true

      t.timestamps
    end
  end
end
