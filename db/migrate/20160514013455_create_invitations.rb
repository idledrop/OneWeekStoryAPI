class CreateInvitations < ActiveRecord::Migration[5.1]
  def change
    create_table :invitations do |t|
      t.references :story, foreign_key: true
      t.string :email
      t.string :text
      t.string :token

      t.timestamps
    end
  end
end
