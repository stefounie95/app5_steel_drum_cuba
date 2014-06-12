class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.datetime :date
      t.string :nom
      t.string :ville

      t.timestamps
    end
  end
end
