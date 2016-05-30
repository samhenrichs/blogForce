class AddProductlinkToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :productlink, :string
  end
end
