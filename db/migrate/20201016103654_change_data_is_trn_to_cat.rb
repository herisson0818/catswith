class ChangeDataIsTrnToCat < ActiveRecord::Migration[6.0]
  def up
    change_column :cats, :is_trn, :boolean
  end
end
