class CreateHelloWorlds < ActiveRecord::Migration[7.0]
  def change
    create_table :hello_worlds do |t|
      t.string :greeting

      t.timestamps
    end
  end
end
