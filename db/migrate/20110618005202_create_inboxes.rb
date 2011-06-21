class CreateInboxes < ActiveRecord::Migration
  def change
    create_table :inboxes do |t|

      t.timestamps
    end
  end
end
