# frozen_string_literal: true

class RemoveConfirmedColumnFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :confirmed, :boolean
  end
end
