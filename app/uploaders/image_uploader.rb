class ImageUploader < CarrierWave::Uploader::Base
  # include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave
  # storage :file

  # def store_dir
  #   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  # end

  # def default_url *_args
  #   ActionController::Base.helpers.asset_path("fallback/" + [version_name,
  #     "default.jpg"].compact.join("_"))
  # end

  # def extension_white_list
  #   %w(jpg jpeg png)
  # end

  # process resize_to_fit: [500, 500]

  version :standard do
    process resize_to_fill: [500, 500]
  end

  version :thumb do
    process resize_to_fill: [200, 200]
  end
end
