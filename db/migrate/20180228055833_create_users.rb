class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: false, primary_key: :email do |t|
      t.string :email, unique: true
      t.string :fname
      t.string :mname
      t.string :lname
      t.date :dob
      t.string :father_name
      t.string :password_digest
      t.string :passport
      t.string :aadhaar

      t.timestamps
    end
  end
end
