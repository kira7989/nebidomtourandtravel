class AddDetailstoCompanyInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :company_informations, :number_of_destinations, :integer
    add_column :company_informations, :number_of_tours, :integer
    add_column :company_informations, :number_of_staff_members, :integer
  end
end
