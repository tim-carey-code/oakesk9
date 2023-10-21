# frozen_string_literal: true

class AddConfirmationColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :unconfirmed_email, :string
    add_column :users, :confirmation_token, :string, default: nil
    add_column :users, :confirmation_sent_at, :datetime, default: nil
    add_column :users, :confirmed, :boolean, default: false
  end
end
