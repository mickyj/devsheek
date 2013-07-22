class AddDevelopersTable < ActiveRecord::Migration
    def change
    create_table :developers do |d|
      d.string :name
      d.string :chictype
      d.string :language
    end
  end
end