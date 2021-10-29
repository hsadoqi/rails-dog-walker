class OwnerSerializer < ActiveModel::Serializer
  attributes :name, :id, :created_at
  has_many :dogs
end
