class ChoreSerializer < ActiveModel::Serializer
  attributes :id, :chore_name, :due_date, :due_time, :done_status
end
