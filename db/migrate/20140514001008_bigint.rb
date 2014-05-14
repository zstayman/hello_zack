class Bigint < ActiveRecord::Migration
  def change
    change_table :signups do |t|
      t.change :phone_number, :integer, limit: 8
    end
  end
end
