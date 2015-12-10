xml.instruct!
xml.books do
  @books.each do |book|
		xml.book do
		  xml.id book.id
		  xml.title book.title
		  xml.author book.author
		  xml.synopsis book.synopsis
		  xml.note book.note
		end
	end
end