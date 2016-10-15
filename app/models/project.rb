class Project < ActiveRecord::Base
    has_attached_file :image, styles: { medium: "600x500>", thumb: "800x800>" }, default_url: "default.jpg",
                      :storage => :dropbox,
                      :dropbox_credentials => Rails.root.join("config/dropbox.yml")
                    
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    
    validates :title, :description, :link, presence: true
end
