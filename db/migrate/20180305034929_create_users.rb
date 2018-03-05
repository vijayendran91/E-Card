class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :fname
      t.string :lname
      t.string :mname
      t.string :email
      t.string :passport
      t.string :aadhaar
      t.integer :flag
      t.string :password_digest
      t.string :father_name
      t.date :dob

      t.timestamps
    end
  end
end
