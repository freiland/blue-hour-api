class AddMediaTable < ActiveRecord::Migration[5.2]
  def change
    create_table :media do |t|
      t.column :description, :string
      t.column :media, :bytea
    end
  end
end
