class RenameStartDatetimeToDepartureDate < ActiveRecord::Migration[7.1]
  def change
    rename_column :flights, :start_datetime, :departure_date
  end
end
