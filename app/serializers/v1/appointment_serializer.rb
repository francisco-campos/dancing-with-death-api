class V1::AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :available, :name, :email, :reservation_date, :time_start, :time_end
end
