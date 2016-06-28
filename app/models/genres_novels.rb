class GenresNovels < ActiveRecord::Base
  belongs_to :genre
  belongs_to :novel

  author_novels.each do | author_name, novels |
   author = Author.find_by( name: author_name )

   novels.each do | title, year, cover, plot, genres |
      novel = Novel.create( title:title, author_id: author.id, year: year, cover: cover, plot: plot )

      genres.split( ", ").each do |genre_name|
         if genre = Genre.find_by( name: genre_name )
         else
            genre = Genre.create( name: genre_name )
         end

         GenresNovels.create( novel: novel, genre: genre )
      end
   end
end
