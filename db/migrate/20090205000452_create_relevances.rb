class CreateRelevances < ActiveRecord::Migration
  def self.up
    create_table :relevances do |t|
      t.references :user
      t.references :comment
      t.boolean :vote
      t.datetime :created_at
    end
    add_index :relevances, [:comment_id, :user_id], :unique => true
  end

  def self.down
    drop_table :relevances
  end
end
