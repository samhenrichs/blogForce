class Link < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },
      :storage => :dropbox,
      :dropbox_credentials => Rails.root.join("config/dropbox.yml")

  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
  validates :website, presence: true

end
