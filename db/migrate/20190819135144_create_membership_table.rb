class CreateMembershipTable < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :group_id
    end
  end
end
