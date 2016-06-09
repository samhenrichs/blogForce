class Link < ActiveRecord::Base

  extend FriendlyId
  friendly_id :product, use: :slugged
  attr_accessor :slug

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },
      :storage => :dropbox,
      :dropbox_credentials => Rails.root.join("config/dropbox.yml")

  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
  validates :url, presence: true

end
