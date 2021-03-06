# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User.destroy_all
#Serie.destroy_all
#Episode.destroy_all
#CurrentWatchSerie.destroy_all
#Mark.destroy_all
#SeenEpisodeSerie.destroy_all

userPaul = User.create!(email: "paulloublier@ynow.com", password: "coucou")
userJuliette = User.create(email: "julietteverlaine@ynow.com", password: "coucou")

serieBreakingBad = Serie.create!(titre: "Breaking Bad", image: "/img/serie/breaking.jpeg")
serieBorgia = Serie.create!(titre: "Borgia", image: "/img/serie/borgia.jpg")

episodeBB1x01 = Episode.create!(identifiant: "1x01", seasonNumber: "1", episodeNumber: "1", title: "Chute libre", diffusionDate: "2009-10-20", serie: serieBreakingBad)
episodeBB1x02 = Episode.create!(identifiant: "1x02", seasonNumber: "1", episodeNumber: "2", title: "Le choix", diffusionDate: "2009-10-20", serie: serieBreakingBad)
episodeBB1x03 = Episode.create!(identifiant: "1x03", seasonNumber: "1", episodeNumber: "3", title: "Dérapage", diffusionDate: "2009-10-27", serie: serieBreakingBad)
episodeB1x01 = Episode.create!(identifiant: "1x01", seasonNumber: "1", episodeNumber: "1", title: "1492", diffusionDate: "2010-12-31", serie: serieBorgia)
episodeB1x02 = Episode.create!(identifiant: "1x02", seasonNumber: "1", episodeNumber: "2", title: "Onde de chaleur", diffusionDate: "2010-12-31", serie: serieBorgia)
episodeB1x03 = Episode.create!(identifiant: "1x03", seasonNumber: "1", episodeNumber: "3", title: "Un voeu sacré", diffusionDate: "2010-12-31", serie: serieBorgia)

currentViewJuliette = CurrentWatchSerie.create!(serie: serieBreakingBad, user: userJuliette)
currentViewPaul = CurrentWatchSerie.create!(serie: serieBorgia, user: userPaul)

markOfJulietteForBB = Mark.create!(user: userJuliette, episode: episodeBB1x01, note: "5")
markOfPaulForBB = Mark.create!(user: userPaul, episode: episodeBB1x02, note: "2")