class CreateAuthusers < ActiveRecord::Migration
  def change
    create_table :authusers do |t|
      t.string :email
      t.string :password_hash
      t.string :password_salt

      t.timestamps
    end
  end
end
