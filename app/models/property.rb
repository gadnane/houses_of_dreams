class Property < ActiveRecord::Base
  belongs_to :user
  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  default_scope -> { order(created_at: :desc) }
  
  validates :user_id, presence: true

  validates :property_type, presence: true
  validates :address, presence: true
  validates :location, presence: true
  validates :bedroom, presence: true
  validates :bathroom, presence: true
  validates :other, presence: true
  validates :rent, presence: true

  validates :picture, presence: true
  validates :picture2, presence: true
  validates :picture3, presence: true
  validates :picture4, presence: true
  validates :picture5, presence: true

  mount_uploader :picture, PictureUploader
  mount_uploader :picture2, PictureUploader
  mount_uploader :picture3, PictureUploader
  mount_uploader :picture4, PictureUploader
  mount_uploader :picture5, PictureUploader

  validate  :picture_size
  validate  :picture2_size
  validate  :picture3_size
  validate  :picture4_size
  validate  :picture5_size

  private
  def picture_size
    if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end

  def picture2_size
    if picture2.size > 5.megabytes
        errors.add(:picture2, "should be less than 5MB")
      end
    end

    def picture3_size
    if picture3.size > 5.megabytes
        errors.add(:picture3, "should be less than 5MB")
      end
    end

    def picture4_size
    if picture4.size > 5.megabytes
        errors.add(:pictur4e, "should be less than 5MB")
      end
    end

    def picture5_size
    if picture5.size > 5.megabytes
        errors.add(:picture5, "should be less than 5MB")
      end
    end

    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
        else
          errors.add(:base, 'Line Items present')
          return false
        end
      end
end
