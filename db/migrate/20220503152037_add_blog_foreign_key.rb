# frozen_string_literal: true

class AddBlogForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :blogs, :users, on_delete: :cascade
  end
end
