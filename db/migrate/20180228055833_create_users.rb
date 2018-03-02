class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: false, primary_key: :user_name do |t|
      t.string :user_name, unique: true
      t.string :email, unique: true
      t.string :fname
      t.string :mname
      t.string :lname
      t.date :dob
      t.string :father_name
      t.string :password_digest
      t.string :passport
      t.string :aadhaar, unique: true

      t.timestamps
    end
  end
end
