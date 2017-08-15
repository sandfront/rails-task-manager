class RenameCompletedColInTaskToDone < ActiveRecord::Migration[5.1]
  def change
    rename_column :tasks, :completed, :done
  end
end
