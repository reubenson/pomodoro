class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :n_pomodoros
end
