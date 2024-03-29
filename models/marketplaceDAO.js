const appDataSource = require('../models/dataSource');

const getPets = async (userID) => {
  try {
    const rawQuery = `SELECT
    *
    FROM Pets
    WHERE OwnerID = 1`;
    console.log('hi');
    console.log(appDataSource);
    return await appDataSource.query(rawQuery);
  } catch (err) {
    throw new Error('INVALID DATA');
  }
};

// const getPetById = async (petID) => {
//   try {
//     const rawQuery = `
//     SELECT
//       m.id,
//       m.name AS movieName,
//       m.english_name AS movieNameInEnligh,
//       m.simple_description as movieSimpleDescription,
//       m.detail_description as movieDetailDescription,
//       m.thumbnail_image_url as movieThumbNailImg,
//       DATE_FORMAT(m.opening_date, '%Y-%m-%d') as movieOpeningDate,
//       fr.rating AS movieAgeRating,
//       m.running_time as movieRunningTime,
//       m.country,
//       m.score_card as scoreCard,
//       d.name AS director,
//       actors.movieActors,
//       keyword.movieKeyword,
//       genre.movieGenre,
//       movieStillCuts.movieStillCut,
//       movieTrailers.movieTrailer
//     FROM movies m
//     LEFT JOIN film_ratings fr ON fr.id = m.film_rating_id
//     LEFT JOIN (
//       SELECT
//         mmk.movie_id,
//         JSON_ARRAYAGG(
//           mk.keyword
//         ) as movieKeyword
//         FROM movies_movie_keywords mmk
//         INNER JOIN  movie_keywords mk ON mmk.movie_keyword_id = mk.id
//         GROUP BY mmk.movie_id
//       ) keyword ON m.id = keyword.movie_id
//     LEFT JOIN directors d ON m.director_id = d.id
//     LEFT JOIN (
//       SELECT
//         mg.movie_id,
//         JSON_ARRAYAGG(
//           g.genre
//         ) AS movieGenre
//         FROM movies_genres mg
//         INNER JOIN genres g ON mg.genre_id = g.id
//         GROUP BY mg.movie_id
//       ) genre ON m.id = genre.movie_id
//     LEFT JOIN (
//       SELECT
//         ma.movie_id,
//         JSON_ARRAYAGG(
//           a.name
//         ) AS movieActors
//         FROM movies_actors ma
//         INNER JOIN actors a ON a.id = ma.actor_id
//         GROUP BY ma.movie_id
//       ) actors ON m.id = actors.movie_id
//     LEFT JOIN (
//       SELECT
//         mo.id,
//         JSON_ARRAYAGG(
//           mi.image_url
//         ) AS movieStillCut
//         FROM movies mo
//         INNER JOIN movie_images mi ON mi.movie_id = mo.id
//         GROUP BY mi.movie_id
//       ) movieStillCuts ON m.id = movieStillCuts.id
//     LEFT JOIN (
//     SELECT
//       mo.id,
//       JSON_ARRAYAGG(
//         mv.video_url
//       ) AS movieTrailer
//       FROM movies mo
//       INNER JOIN movie_videos mv ON mv.movie_id = mo.id
//       GROUP BY mv.movie_id
//     ) movieTrailers ON m.id = movieTrailers.id
//     WHERE m.id = ?`;

//     return await appDataSource.query(rawQuery, [movieId]);
//   } catch (err) {
//     throw new Error('INVALID DATA!!');
//   }
// };

module.exports = {
  getPets,
  //   getPetById,
};
