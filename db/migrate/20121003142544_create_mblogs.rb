class CreateMblogs < ActiveRecord::Migration
  def change
    create_table :mblogs do |t|
      t.string :user
      t.string :email
      t.timestamps
    end
  end
end
