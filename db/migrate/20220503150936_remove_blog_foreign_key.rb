class RemoveBlogForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :blogs, :users
  end
end
