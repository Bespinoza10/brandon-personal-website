class Project < ActiveRecord::Base
  has_attached_file :project_image, styles: { large: "500x800>", medium: "300x300>", small: "150x150>", thumb: "100x100>" }
  validates_attachment_content_type :project_image, content_type: /\Aimage\/.*\z/
end
