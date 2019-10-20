class Club < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :events
   mount_uploader :img, ImgUploader
  has_many :tag_list

   acts_as_taggable #追加
   # acts_as_taggable_on :tags　と同じ意味のエイリアス
   # tags のなかにIDやら名前などが入る。イメージ的には親情報。

     #略

end
