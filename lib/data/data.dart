import '../model/movies.dart';
import '../model/upcoming.dart';

List<Movies> movielists = [
  Movies(
    movieName: 'Nayattu',
    language: 'Malayalam',
    rating: 4,
    imgUrl: 'images/posters/nayattu.jpg',
    desc:
        'Praveen Michael (Kunchacko Boban) rejoins the police force in a new station as a CPO (civil police officer). A local political goon, Biju (Dineesh P), who is related to police officer CPO Sunitha (Nimisha Sajayan), is summoned for being a constant trouble-maker. Praveen and his senior officer (Asst Sub Inspector) ASI Maniyan (Joju George) get into a scuffle with the goon and locks him up in the cell.',
    runTime: '144',
    genre: ['Thriller', 'Survival'],
  ),
  Movies(
    movieName: 'Karnan',
    language: 'Tamil',
    rating: 3,
    imgUrl: 'images/posters/karnan.jpg',
    desc:
        'Karnan, a fearless village youth, must fight for the rights of the people of his village. The people of the village belong to a marginalized community that has been oppressed for decades, mainly by the dominant caste groups in the region aided by the government officials and the police who intend to keep them suppressed under their shoes',
    runTime: '143.2',
    genre: ['Thriller', 'Crime'],
  ),
  Movies(
    movieName: 'Wrath OF Man',
    language: 'English',
    rating: 4,
    imgUrl: 'images/posters/wrath.jpg',
    desc:
        'Patrick Hill begins work at Fortico Security, an armored truck company. After being commended by the superior Terry for his references, he is introduced to Bullet, who nicknames him "H" and oversees his training. H gets off to a rocky start with his colleagues, particularly Boy Sweat Dave, over his mysterious nature',
    runTime: '94.8',
    genre: ['Action', 'Thriller'],
  ),
  Movies(
    movieName: 'GodZilla vs Kong',
    language: 'English',
    rating: 4,
    imgUrl: 'images/posters/gvk.jpg',
    desc:
        'Five years after Godzilla defeated King Ghidorah,[c] Kong is monitored by Monarch within a giant dome on Skull Island. Kong is visited by Jia, the last Iwi native and Kong expert Ilene Andrews',
    runTime: '94.8',
    genre: ['Action', 'Thriller'],
  ),
];

List<Releases> releases = [
  Releases(
    newmovieName: 'Marakkar Arabikadalinte Simham',
    language: 'Malayalam',
    imgUrls:
        'https://www.thecompleteactor.com/images/inNews/mohanlal_marakkar_movie-ey12fhlpkk72c9h-El1YsD96xc7GnVP.jpg',
    runTimes: '186',
    description:
        'Marakkar: Arabikadalinte Simham, also known as Marakkar: Lion of the Arabian Sea, is an upcoming Indian Malayalam-language epic historical war film written and directed by Priyadarshan.[4] Set in the 16th century, the film tells the story of Kunjali Marakkar IV',
    genres: ['Action', 'Drama'],
  ),
  Releases(
    newmovieName: 'Black Widow',
    language: 'English',
    imgUrls:
        'https://media.comicbook.com/2021/05/black-widow-poster-1267680.jpeg?auto=webp&width=854&height=1280&crop=854:1280,smart',
    runTimes: '127.8',
    description:
        'Black Widow is an upcoming American superhero film based on the Marvel Comics character of the same name. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is intended to be the 24th film in the Marvel Cinematic Universe (MCU).',
    genres: ['Adventure', 'Action'],
  ),
  Releases(
    newmovieName: 'Kuruthi',
    language: 'Malayalam',
    imgUrls: 'https://pbs.twimg.com/media/EyNcn8kWgAUt09H.jpg',
    runTimes: '120.8',
    description:
        'Kuruthi (transl. Ritual slaughter) is an upcoming Indian Malayalam-language socio-political thriller film directed by Manu Warrier, written by Anish Pallyal, and produced by Supriya Menon through the company Prithviraj Productions.',
    genres: ['Socio-Political', 'Thriller'],
  ),
  Releases(
    newmovieName: 'Doctor',
    language: 'Tamil',
    imgUrls: 'https://pbs.twimg.com/media/EQ9FfyCWAAA99OA.jpg',
    runTimes: '130.8',
    description:
        'Doctor is an upcoming Indian Tamil-language Medical action film directed by Nelson Dilipkumar. The film stars Sivakarthikeyan who also produced it under his banner Sivakarthikeyan Productions, whereas KJR Studios served as the co-producer and distributor',
    genres: ['Mystery', 'Thriller'],
  ),
];
