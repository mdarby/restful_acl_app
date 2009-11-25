class CreateTables < ActiveRecord::Migration
  def self.up
    create_table :users, :force => true do |t|
      t.string :username
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.integer :login_count
      t.boolean :allowed
      t.boolean :is_admin, :default => 0
      t.timestamps
    end

    create_table :user_sessions, :force => true do |t|
      t.string :username
      t.string :password
      t.timestamps
    end

    create_table :parent_widgets, :force => true do |t|
      t.string :name
      t.boolean :is_active
      t.timestamps
    end

    create_table :child_widgets, :force => true do |t|
      t.string :name
      t.integer :parent_widget_id
      t.timestamps
    end

    create_table :singleton_widgets, :force => true do |t|
      t.string :name
      t.integer :parent_widget_id
      t.timestamps
    end
  end

  def self.down
    drop_table :user_sessions
    drop_table :users
    drop_table :singleton_widgets
    drop_table :child_widgets
    drop_table :parent_widgets
  end
end
