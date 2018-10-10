class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :car
  before_destroy :delete_img

  private

  def delete_img
    Cloudinary::Uploader.destroy(image.file.public_id)
  end
end
