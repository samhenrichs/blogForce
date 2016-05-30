class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :website
      t.string :product
      t.date :date

      t.timestamps null: false
    end
  end
end
