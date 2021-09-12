class AddSsnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :encrypted_ssn, :string
    add_column :users, :ssn, :string
    add_column :users, :encrypted_ssn_iv, :string

  end
end
