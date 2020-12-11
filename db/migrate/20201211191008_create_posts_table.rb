class CreatePostsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.column :description, :string
      t.column :likes, :integer
      t.column :img_one, :bytea
      t.column :img_two, :bytea
      t.column :img_three, :bytea
      t.column :author, :string 
    end
  end
end
