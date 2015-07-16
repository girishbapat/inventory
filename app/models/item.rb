class Item < ActiveRecord::Base
  belongs_to :category
  has_attached_file :photo,
                    :url  => '/assets/items/:id/:style/:basename.:extension',
                    :path => ':rails_root/public/assets/items/:id/:style/:basename.:extension'

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
