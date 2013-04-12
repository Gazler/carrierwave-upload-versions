# encoding: utf-8
class BaseUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  version :square do
    process :resize_to_fill => [380, 380]
  end

  version :thumb, :from_version => :square do
    process :resize_to_fill => [119, 119]
  end
end

