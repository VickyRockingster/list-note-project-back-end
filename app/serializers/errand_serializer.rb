class ErrandSerializer < ActiveModel::Serializer
  attributes :id, :errand_name, :location, :due_date, :due_time, :done_status,
             :current_user
end
