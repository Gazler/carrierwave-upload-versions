class User < ActiveRecord::Base
  attr_accessible :avatar, :name, :avatar_cache
  mount_uploader :avatar, AvatarUploader
  attr_accessor :avatar_cache
end
