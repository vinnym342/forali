class CreateOrganisers < ActiveRecord::Migration[5.1]
  def change
    create_table :organisers do |t|
      t.string :name
      t.references :owner, foreign_key: {to_table: :users}
      t.text :description
	  t.string :image

      t.timestamps
    end
  end
end
