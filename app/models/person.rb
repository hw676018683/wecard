class Person < ActiveRecord::Base
	belongs_to :user

	has_many :friends

	has_many :shared_people
	has_many :sharing_people ,class_name: "SharedPerson",foreign_key: "shared_id"
  mount_uploader :picture, PictureUploader

	validates :name ,presence: true
	validates :wechat_num, presence: true
	validates :qq, presence: true
end
