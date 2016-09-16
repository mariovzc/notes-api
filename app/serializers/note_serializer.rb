class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :data, :created, :edited
  def created
    object.created_at.strftime("%d/%m/%Y")
  end
  def edited
    object.updated_at.strftime("%d/%m/%Y")
  end
end
