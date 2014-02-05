 class Book < ActiveRecord::Base
  # before_create :get_stuff

  def self.find_top_matches(title)
    books = AmazonBookFetcher.new.search(title)

    books.map do |book_details|
      Book.create(book_details)
    end
  end
 
  # def get_stuff
  #   book_details = AmazonBookFetcher.new.search(title)

  #     book_details.each do |key, value|
  #       self[key] = value
  #      end
  #   end

end
