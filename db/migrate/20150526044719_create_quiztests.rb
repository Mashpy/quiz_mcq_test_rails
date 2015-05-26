class CreateQuiztests < ActiveRecord::Migration
  def change
    create_table :quiztests do |t|
      t.text :question
      t.text :ansA
      t.text :ansB
      t.text :ansC
      t.text :ansD
      t.integer :correct

      t.timestamps
    end
  end
end
