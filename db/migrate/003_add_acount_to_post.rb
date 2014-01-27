class AddAcountToPost < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.integer :account_id
    end
    # and assigns a user to all existing posts
    first_account = Account.first
    post.all.each { |p| p.update_attribute(:account, first_account) }
  end
end
