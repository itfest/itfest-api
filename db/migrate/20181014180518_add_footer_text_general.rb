class AddFooterTextGeneral < ActiveRecord::Migration[5.2]
  def change
  	add_column :general_infos, :footer, :text
  end
end
