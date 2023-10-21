# frozen_string_literal: true

class AddConfirmedAtToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :confirmed_at, :datetime, default: nil
  end
end
