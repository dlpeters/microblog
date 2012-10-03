class CreateMblogs < ActiveRecord::Migration
  def change
    create_table :mblogs do |t|
      t.string :user

      t.timestamps
    end
  end
end
