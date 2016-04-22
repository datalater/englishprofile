class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string "myname"
      t.string "mymajor1"
      t.string "mymajor2"
      t.string "mygrade"
      t.string "myclub"
      t.string "myclubjoin"
      
      t.timestamps null: false
      
    end
  end
end
