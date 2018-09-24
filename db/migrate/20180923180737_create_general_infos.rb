class CreateGeneralInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :general_infos do |t|
      t.string :dates
      t.boolean :is_registration_active
      t.string :annotation

      t.timestamps
    end
  end
end
