class CreatePoliticianExtInfo < ActiveRecord::Migration
  def up
    add_column :politicians, :age, :string
    add_column :politicians, :address, :string
    add_column :politicians, :academic, :string
    add_column :politicians, :history, :string
    add_column :politicians, :property, :integer
    add_column :politicians, :military, :string
    add_column :politicians, :payment, :integer
    add_column :politicians, :arrears, :integer
    add_column :politicians, :now_arrears, :integer
    add_column :politicians, :crime, :string
  end


end
