class AddCompanyIdToClock < ActiveRecord::Migration
  def change
    add_column :clocks, :company_id, :integer
  end
end
