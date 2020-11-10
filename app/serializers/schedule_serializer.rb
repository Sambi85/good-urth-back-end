class ScheduleSerializer < ActiveModel::Serializer
    attributes :market_id, :farmer_id, :days_of_the_week

    has_one :farmer
    has_one :market

end