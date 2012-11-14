class ChangeDataTypeForDueDate < ActiveRecord::Migration
  def up
      change_table :tasks do |t|
      t.change :due_date, :datetime
    end
  end

  def down
  end
end
