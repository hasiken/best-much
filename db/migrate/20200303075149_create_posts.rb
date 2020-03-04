class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :cf
      t.text :rwg
      t.text :lwg
      t.text :lcm
      t.text :rcm
      t.text :cdm
      t.text :rsb
      t.text :rcb
      t.text :lcb
      t.text :lsb
      t.text :gc
      t.timestamps
    end
  end
end
