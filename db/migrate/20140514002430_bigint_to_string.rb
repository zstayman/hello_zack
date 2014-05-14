class BigintToString < ActiveRecord::Migration
  def change
    change_table :signups do |t|
      t.change :phone_number, :string
    end
  end
end
