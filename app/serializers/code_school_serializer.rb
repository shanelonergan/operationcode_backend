class CodeSchoolSerializer < ActiveModel::Serializer
  attributes :name, :url, :logo, :full_time, :hardware_included, :has_online, :online_only
  has_many :locations

  def locations
    object.locations.order(:state).order(:city)
  end
end
