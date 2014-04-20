class AddParentIdToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :parent_id, :integer
  end
end
