# frozen_string_literal: true

class CreateLeads < ActiveRecord::Migration[8.1]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :email, null: false
      t.string :source, null: false, default: "landing-page"

      t.timestamps
    end
    add_index :leads, :email, unique: true
  end
end
