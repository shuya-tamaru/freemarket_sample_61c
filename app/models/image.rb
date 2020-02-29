class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :item, optional: true
  def pass
    image.to_s
  end
end
