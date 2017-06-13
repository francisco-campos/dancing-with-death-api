class ChangeDataTypeForTimeStartAndTimeEnd < ActiveRecord::Migration[5.0]
  def change
    change_column(:appointments, :time_start, :string)
    change_column(:appointments, :time_end, :string)
  end
end
