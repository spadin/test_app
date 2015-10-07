class Image < ActiveRecord::Base
  belongs_to :gallery

  has_attached_file :image, styles: { thumb: '300x150#' }

  do_not_validate_attachment_file_type :image
end
