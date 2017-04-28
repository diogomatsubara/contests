class Entrant
  include Mongoid::Document
  field :_id, type: Integer
  field :name, type: String
  field :group, type: String
  field :secs, type: Float

  belongs_to :racer, class_name: "Racer", validate: true
  embedded_in :contest

  before_create do |doc|
    doc.name = "#{doc.racer.last_name}, #{doc.racer.first_name}"
  end
end
