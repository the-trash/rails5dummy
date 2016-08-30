class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|

      t.string :name,  default: ""
      t.string :title, default: ""
      t.text :description

      # MySQL, SQLite
      t.text :the_role, null: false

      # PostgreSQL
      # t.column :the_role, :json, null: false

      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end

# This is a patch for Role model, if you want to use
# native PostgresSQL :json column
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# class Role < ActiveRecord::Base
#   include TheRole::Api::Role
#
#   # PostgresSQL: :json column patch
#   # MIGRATION file: t.column :the_role, :json, null: false
#   #
#   def _jsonable val
#     val.is_a?(Hash) ? val : JSON.load(val)
#   end
#
#   def to_hash
#     begin the_role rescue {} end
#   end
#
#   def to_json
#     the_role.is_a?(Hash) ? the_role.to_json : the_role
#   end
# end
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
