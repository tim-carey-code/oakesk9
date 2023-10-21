# frozen_string_literal: true

class UpdateForeignKeys < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :comments, :blogs
    remove_foreign_key :comments, :users

    add_foreign_key :comments, :blogs, on_delete: :cascade
    add_foreign_key :comments, :users, on_delete: :cascade
  end
end
