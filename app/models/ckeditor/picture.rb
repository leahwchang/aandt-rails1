class Ckeditor::Picture < Ckeditor::Asset
  mount_uploader :data, CkeditorPictureUploader, mount_on: :data_file_name

  belongs_to :assetable, polymorphic: true, optional: true

  def url_content
    url(:content)
  end
end
