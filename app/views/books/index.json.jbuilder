json.array!(@books) do |book|
  json.extract! book, :id, :name, :author, :preview, :description, :category
  json.url book_url(book, format: :json)
end
