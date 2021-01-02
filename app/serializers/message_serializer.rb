class MessageSerializer < ActiveModel::Serializer
    attributes :user_id, :farmer_id, :description, :time, :date

    has_one :farmers
    has_one :users

end