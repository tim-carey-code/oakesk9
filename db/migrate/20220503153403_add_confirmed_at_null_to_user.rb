class AddConfirmedAtNullToUser < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :confirmed_at, true
  end
end
