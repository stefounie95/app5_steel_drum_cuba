class AddGaleryIdToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :galery_id, :integer
  end
end
