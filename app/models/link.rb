class Link < ActiveRecord::Base

  extend FriendlyId
  friendly_id :product, use: :slugged

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },
      :storage => :dropbox,
      :dropbox_credentials => Rails.root.join("config/dropbox.yml")

  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
  validates :url, presence: true

  def should_generate_new_friendly_id?
  new_record? || slug.blank?
  end
  
end
