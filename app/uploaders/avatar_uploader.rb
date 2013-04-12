# encoding: utf-8
class AvatarUploader < BaseUploader

  def store_dir
    "uploads/people/pictures/#{model.id}"
  end
end

