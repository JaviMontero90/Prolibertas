class ItemSerializer < ActiveModel::Serializer
  attributes :id, :type, :amount, :requested, :dispensed, :observations, :created_by
end
