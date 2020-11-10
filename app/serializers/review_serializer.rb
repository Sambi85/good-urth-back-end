class ReviewSerializer < ActiveModel::Serializer
    attributes :user_id, :farmer_id, :star_rating, :description, :time, :date

    has_one :users

end