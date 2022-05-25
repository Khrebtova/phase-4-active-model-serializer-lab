class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :author_name, :tags

  belongs_to :author  

  def author_name
    self.object.author.name
  end
end
