class AddStylesTable < ActiveRecord::Migration
  def change
    create_table :styles do |s|
      s.string  :name
      s.string  :shoe
      s.string  :beard
      s.string  :drink
      s.string  :browser
    end
  end
end