class Venue
  include Mongoid::Document
  field :name, type: String

  embeds_one :address, as: :addressable, class_name: "Address"
end
