class Project < ActiveRecord::Base
    has_attached_file :image, styles: { medium: "300x500>", thumb: "800x800>" }, default_url: "default.jpg"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
