class Post < ApplicationRecord
    validates :user_id, presence: true
    validates :caption, presence: true, length: { minimum: 3, maximum: 300 }
    belongs_to :user
    has_many :comments, dependent: :destroy
    validates :image, presence: true
    has_attached_file :image, styles: { :medium=> "640x" }

    validates_attachment_content_type :image, :content_type =>
    /\Aimage\/.*\z/
end
