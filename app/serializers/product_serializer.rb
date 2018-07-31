class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :category, :price, :imgURL, :medURL, :lightURL, :darkURL, :reviews

  def reviews
    self.object.reviews.map do |review|
      {content: review.content, user_first: review.user.first_name, user_last: review.user.last_name}
    end
  end
end
