User.create!([
  { first_name: "Domingo", last_name: "Ramirez", email: "djramirez@uc.cl", password_digest: "$2a$10$czinRmh1rQAeLVfN20ESxOIiLTsdrbIwoJDPJc6MQ0ObZvKzp0JEa", born_year: "1996", avatar_url: "https://cdn.filepicker.io/api/file/XJmR5BH8TLa4A3tb4ErY", created_at: "2018-06-28 23:05:07", updated_at: "2018-06-29 00:35:33", saved_articles: []},
  { first_name: "Francisco", last_name: "Larach", email: "fjlarach@uc.cl", password_digest: "$2a$10$nprtf7zG3bZ5iUZPozPVZeHA5UAcZ93/LaJ.AGQdtsEYJhKPtzq62", born_year: "1996", avatar_url: "https://cdn.filepicker.io/api/file/zLZjxSJuQYGL3CuquR1A", created_at: "2018-06-28 23:27:35", updated_at: "2018-06-28 23:27:35", saved_articles: []},
  { first_name: "Federico", last_name: "Brunner", email: "fobrunner@uc.cl", password_digest: "$2a$10$RTdKIsPMTgVfWF1IKcTsCetFI5Wf7sS8rKjbk.1UUAhOj/7dNo6.6", born_year: "1996", avatar_url: "https://cdn.filepicker.io/api/file/t27qOfmXTYKJu77oP9DJ", created_at: "2018-06-29 00:20:57", updated_at: "2018-06-29 00:20:57", saved_articles: []}
])

Forum.create!([
  { name: "Memes", op: "fjlarach@uc.cl", op_id: "2", description: "Este es un foro para mantenernos entretenidos.", created_at: "2018-06-28 23:28:26", updated_at: "2018-06-28 23:28:26"},
  { name: "Comida", op: "fjlarach@uc.cl", op_id: "2", description: "Este es el foro para cuando tenemos hambre", created_at: "2018-06-29 00:11:07", updated_at: "2018-06-29 00:11:07"},
  { name: "Autos", op: "fjlarach@uc.cl", op_id: "2", description: "Este es el foro de la velocidad", created_at: "2018-06-29 00:14:13", updated_at: "2018-06-29 00:14:13"},
  { name: "Peliculas", op: "fobrunner@uc.cl", op_id: "3", description: "Para los momentos de relajo", created_at: "2018-06-29 00:21:46", updated_at: "2018-06-29 00:21:46"},
  { name: "Computadores", op: "djramirez@uc.cl", op_id: "1", description: "Este es el foro de la tecnología", created_at: "2018-06-29 00:39:21", updated_at: "2018-06-29 00:39:21"},
  { name: "Futbol", op: "fobrunner@uc.cl", op_id: "3", description: "Este es un foro deportivo", created_at: "2018-06-29 00:42:15", updated_at: "2018-06-29 00:42:15"}
])
Admin.create!([
  {user_id: 2, forum_id: 1, subscribe: true, admin: true, created_at: "2018-06-28 23:28:26", updated_at: "2018-06-28 23:28:26"},
  {user_id: 2, forum_id: 2, subscribe: true, admin: true, created_at: "2018-06-29 00:11:07", updated_at: "2018-06-29 00:11:07"},
  {user_id: 2, forum_id: 3, subscribe: true, admin: true, created_at: "2018-06-29 00:14:13", updated_at: "2018-06-29 00:14:13"},
  {user_id: 3, forum_id: 1, subscribe: true, admin: false, created_at: "2018-06-29 00:21:11", updated_at: "2018-06-29 00:21:11"},
  {user_id: 3, forum_id: 3, subscribe: true, admin: false, created_at: "2018-06-29 00:21:15", updated_at: "2018-06-29 00:21:15"},
  {user_id: 3, forum_id: 4, subscribe: true, admin: true, created_at: "2018-06-29 00:21:46", updated_at: "2018-06-29 00:21:46"},
  {user_id: 1, forum_id: 1, subscribe: true, admin: false, created_at: "2018-06-29 00:36:53", updated_at: "2018-06-29 00:36:53"},
  {user_id: 1, forum_id: 3, subscribe: true, admin: false, created_at: "2018-06-29 00:37:40", updated_at: "2018-06-29 00:37:40"},
  {user_id: 1, forum_id: 5, subscribe: true, admin: true, created_at: "2018-06-29 00:39:21", updated_at: "2018-06-29 00:39:21"},
  { user_id: 3, forum_id: 6, subscribe: true, admin: true, created_at: "2018-06-29 00:42:15", updated_at: "2018-06-29 00:42:15"}
])


Article.create!([
  {title: "Bob Esponja", body: "Así me sentí la semana pasada", op: "fjlarach@uc.cl", op_id: "2", forum_id: 1, img: "https://cdn.filepicker.io/api/file/4f6g6XkLSI6abYGc232Y", created_at: "2018-06-28 23:31:09", updated_at: "2018-06-28 23:31:09", cached_votes_total: 0, cached_votes_score: 0, cached_votes_up: 0, cached_votes_down: 0, cached_weighted_score: 0, cached_weighted_total: 0, cached_weighted_average: 0.0},
  {title: "Calamardo", body: "Este es un amargado", op: "fjlarach@uc.cl", op_id: "2", forum_id: 1, img: "https://cdn.filepicker.io/api/file/UQbS0TKCRZqUytZndBD2", created_at: "2018-06-29 00:02:51", updated_at: "2018-06-29 01:04:41", cached_votes_total: 2, cached_votes_score: 2, cached_votes_up: 2, cached_votes_down: 0, cached_weighted_score: 2, cached_weighted_total: 2, cached_weighted_average: 1.0},
  {title: "Arenita", body: "Mis dias de examenes", op: "fjlarach@uc.cl", op_id: "2", forum_id: 1, img: "https://cdn.filepicker.io/api/file/8pCy3kO1Sj2FDHkFv2Yg", created_at: "2018-06-29 00:08:36", updated_at: "2018-06-29 01:03:15", cached_votes_total: 3, cached_votes_score: 3, cached_votes_up: 3, cached_votes_down: 0, cached_weighted_score: 3, cached_weighted_total: 3, cached_weighted_average: 1.0},
  {title: "Pizza", body: "¿Sabian que esta es la pizza original?", op: "fjlarach@uc.cl", op_id: "2", forum_id: 2, img: "https://cdn.filepicker.io/api/file/XCwi0FptQKeQdO5qf05p", created_at: "2018-06-29 00:12:02", updated_at: "2018-06-29 00:12:10", cached_votes_total: 1, cached_votes_score: 1, cached_votes_up: 1, cached_votes_down: 0, cached_weighted_score: 1, cached_weighted_total: 1, cached_weighted_average: 1.0},
  {title: "Ferrari 458", body: "Este es el ferrari mas elegante", op: "fjlarach@uc.cl", op_id: "2", forum_id: 3, img: "https://cdn.filepicker.io/api/file/7OESiyyFR8aVo6JhR44C", created_at: "2018-06-29 00:15:29", updated_at: "2018-06-29 01:03:34", cached_votes_total: 1, cached_votes_score: 1, cached_votes_up: 1, cached_votes_down: 0, cached_weighted_score: 1, cached_weighted_total: 1, cached_weighted_average: 1.0},
  {title: "Lamborgini", body: "Este lamborgini es el mas veloz", op: "fjlarach@uc.cl", op_id: "2", forum_id: 3, img: "https://cdn.filepicker.io/api/file/mS5NzeioS2mWF8GdjVuP", created_at: "2018-06-29 00:17:19", updated_at: "2018-06-29 01:03:28", cached_votes_total: 2, cached_votes_score: 2, cached_votes_up: 2, cached_votes_down: 0, cached_weighted_score: 2, cached_weighted_total: 2, cached_weighted_average: 1.0},
  {title: "Mercedes", body: "Elegancia pura", op: "fjlarach@uc.cl", op_id: "2", forum_id: 3, img: "https://cdn.filepicker.io/api/file/jQlEFFeRySTjKhM6GNcy", created_at: "2018-06-29 00:19:39", updated_at: "2018-06-29 01:04:25", cached_votes_total: 2, cached_votes_score: 0, cached_votes_up: 1, cached_votes_down: 1, cached_weighted_score: 0, cached_weighted_total: 2, cached_weighted_average: 0.0},
  {title: "Los increibles ii", body: "El último estreno", op: "fobrunner@uc.cl", op_id: "3", forum_id: 4, img: "https://cdn.filepicker.io/api/file/vYqKq4pcSFmL5zTMuzOU", created_at: "2018-06-29 00:24:52", updated_at: "2018-06-29 00:24:55", cached_votes_total: 1, cached_votes_score: 1, cached_votes_up: 1, cached_votes_down: 0, cached_weighted_score: 1, cached_weighted_total: 1, cached_weighted_average: 1.0},
  {title: "Wolkswagen", body: "Polo", op: "djramirez@uc.cl", op_id: "1", forum_id: 3, img: "https://cdn.filepicker.io/api/file/LRAVnUDMQVmlM20r9gA1", created_at: "2018-06-29 00:38:37", updated_at: "2018-06-29 00:38:47", cached_votes_total: 1, cached_votes_score: 1, cached_votes_up: 1, cached_votes_down: 0, cached_weighted_score: 1, cached_weighted_total: 1, cached_weighted_average: 1.0},
  { title: "Apple", body: "Tienen los computadores mas usables", op: "djramirez@uc.cl", op_id: "1", forum_id: 5, img: "https://cdn.filepicker.io/api/file/nBZbaBdRH2xgjNk2MiN6", created_at: "2018-06-29 00:40:07", updated_at: "2018-06-29 01:36:07", cached_votes_total: 2, cached_votes_score: -2, cached_votes_up: 0, cached_votes_down: 2, cached_weighted_score: -2, cached_weighted_total: 2, cached_weighted_average: -1.0},
  { title: "Mundial", body: "Este mundial está que arde", op: "fobrunner@uc.cl", op_id: "3", forum_id: 6, img: "https://cdn.filepicker.io/api/file/u1HEIRwvSbaMRlSQomFw", created_at: "2018-06-29 00:43:29", updated_at: "2018-06-29 00:43:33", cached_votes_total: 1, cached_votes_score: 1, cached_votes_up: 1, cached_votes_down: 0, cached_weighted_score: 1, cached_weighted_total: 1, cached_weighted_average: 1.0}

])
Comment.create!([
  {op: "fjlarach@uc.cl", op_id: "2", content: "Fue terrible", article_id: 1, created_at: "2018-06-28 23:31:16", updated_at: "2018-06-28 23:31:16"},
  {op: "fjlarach@uc.cl", op_id: "2", content: "Hay otro de esos memes parecidos", article_id: 2, created_at: "2018-06-29 00:05:06", updated_at: "2018-06-29 00:05:06"},
  {op: "fjlarach@uc.cl", op_id: "2", content: "Hay un lugar increible en Av. El MAR", article_id: 4, created_at: "2018-06-29 00:12:34", updated_at: "2018-06-29 00:26:17"},
  {op: "fjlarach@uc.cl", op_id: "2", content: "Yo lo iba manejando!", article_id: 6, created_at: "2018-06-29 00:17:28", updated_at: "2018-06-29 00:17:28"},
  {op: "fobrunner@uc.cl", op_id: "3", content: "Peliculaza", article_id: 8, created_at: "2018-06-29 00:25:02", updated_at: "2018-06-29 00:25:02"},
  {op: "fobrunner@uc.cl", op_id: "3", content: "Es demasiado poco saludable, pero aún así lo vale", article_id: 4, created_at: "2018-06-29 00:25:26", updated_at: "2018-06-29 00:25:26"},
  {op: "fobrunner@uc.cl", op_id: "3", content: "Vamos a conocer el lugar?", article_id: 4, created_at: "2018-06-29 00:26:56", updated_at: "2018-06-29 00:26:56"},
  {op: "djramirez@uc.cl", op_id: "1", content: "Que se acaben rapido los examenes!!!!", article_id: 3, created_at: "2018-06-29 00:37:18", updated_at: "2018-06-29 00:37:18"},
  {op: "djramirez@uc.cl", op_id: "1", content: "Faltaba este auto clave", article_id: 9, created_at: "2018-06-29 00:38:45", updated_at: "2018-06-29 00:38:45"},
  { op: "djramirez@uc.cl", op_id: "1", content: "La foto no refleja su gloria", article_id: 10, created_at: "2018-06-29 00:40:20", updated_at: "2018-06-29 00:40:20"},
  { op: "fjlarach@uc.cl", op_id: "2", content: "Que pena que no esté chile!", article_id: 11, created_at: "2018-06-29 01:46:54", updated_at: "2018-06-29 01:46:54"}
])

ActsAsVotable::Vote.create!([
  {votable_type: "Article", votable_id: 3, voter_type: "User", voter_id: 2, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 00:08:44", updated_at: "2018-06-29 00:08:44"},
  {votable_type: "Article", votable_id: 4, voter_type: "User", voter_id: 2, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 00:12:10", updated_at: "2018-06-29 00:12:10"},
  {votable_type: "Article", votable_id: 6, voter_type: "User", voter_id: 2, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 00:17:21", updated_at: "2018-06-29 00:17:21"},
  {votable_type: "Article", votable_id: 7, voter_type: "User", voter_id: 2, vote_flag: false, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 00:19:43", updated_at: "2018-06-29 00:19:43"},
  {votable_type: "Article", votable_id: 8, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 00:24:55", updated_at: "2018-06-29 00:24:55"},
  {votable_type: "Article", votable_id: 2, voter_type: "User", voter_id: 1, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 00:36:56", updated_at: "2018-06-29 00:36:56"},
  {votable_type: "Comment", votable_id: 2, voter_type: "User", voter_id: 1, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 00:36:59", updated_at: "2018-06-29 00:36:59"},
  {votable_type: "Article", votable_id: 3, voter_type: "User", voter_id: 1, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 00:37:08", updated_at: "2018-06-29 00:37:08"},
  {votable_type: "Article", votable_id: 9, voter_type: "User", voter_id: 1, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 00:38:47", updated_at: "2018-06-29 00:38:47"},
  { votable_type: "Article", votable_id: 10, voter_type: "User", voter_id: 1, vote_flag: false, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 00:40:09", updated_at: "2018-06-29 00:40:09"},
  { votable_type: "Comment", votable_id: 4, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 00:41:20", updated_at: "2018-06-29 00:41:20"},
  { votable_type: "Article", votable_id: 11, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 00:43:33", updated_at: "2018-06-29 00:43:33"},
  { votable_type: "Article", votable_id: 3, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 01:03:15", updated_at: "2018-06-29 01:03:15"},
  { votable_type: "Article", votable_id: 6, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 01:03:28", updated_at: "2018-06-29 01:03:28"},
  { votable_type: "Article", votable_id: 5, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 01:03:34", updated_at: "2018-06-29 01:03:34"},
  { votable_type: "Article", votable_id: 7, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 01:04:25", updated_at: "2018-06-29 01:04:25"},
  { votable_type: "Article", votable_id: 2, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 01:04:41", updated_at: "2018-06-29 01:04:41"},
  { votable_type: "Comment", votable_id: 7, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 01:40:40", updated_at: "2018-06-29 01:40:40"},
  { votable_type: "Comment", votable_id: 11, voter_type: "User", voter_id: 2, vote_flag: true, vote_scope: nil, vote_weight: 1, created_at: "2018-06-29 01:46:56", updated_at: "2018-06-29 01:46:56"}
])
PublicActivity::ORM::ActiveRecord::Activity.create!([
  {trackable_type: "Forum", trackable_id: 1, owner_type: "User", owner_id: 2, key: "forum.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-28 23:28:26", updated_at: "2018-06-28 23:28:26"},
  {trackable_type: "Article", trackable_id: 1, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-28 23:31:09", updated_at: "2018-06-28 23:31:09"},
  {trackable_type: "Comment", trackable_id: 1, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-28 23:31:16", updated_at: "2018-06-28 23:31:16"},
  {trackable_type: "Article", trackable_id: 2, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:02:51", updated_at: "2018-06-29 00:02:51"},
  {trackable_type: "Article", trackable_id: 2, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:03:16", updated_at: "2018-06-29 00:03:16"},
  {trackable_type: "Comment", trackable_id: 2, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:05:06", updated_at: "2018-06-29 00:05:06"},
  {trackable_type: "Article", trackable_id: 3, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:08:36", updated_at: "2018-06-29 00:08:36"},
  {trackable_type: "Article", trackable_id: 3, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:08:44", updated_at: "2018-06-29 00:08:44"},
  {trackable_type: "Forum", trackable_id: 2, owner_type: "User", owner_id: 2, key: "forum.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:11:07", updated_at: "2018-06-29 00:11:07"},
  {trackable_type: "Article", trackable_id: 4, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:12:02", updated_at: "2018-06-29 00:12:02"},
  {trackable_type: "Article", trackable_id: 4, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:12:07", updated_at: "2018-06-29 00:12:07"},
  {trackable_type: "Article", trackable_id: 4, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:12:10", updated_at: "2018-06-29 00:12:10"},
  {trackable_type: "Comment", trackable_id: 3, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:12:34", updated_at: "2018-06-29 00:12:34"},
  {trackable_type: "Comment", trackable_id: 3, owner_type: nil, owner_id: nil, key: "comment.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:12:48", updated_at: "2018-06-29 00:12:48"},
  {trackable_type: "Forum", trackable_id: 3, owner_type: "User", owner_id: 2, key: "forum.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:14:13", updated_at: "2018-06-29 00:14:13"},
  {trackable_type: "Article", trackable_id: 5, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:15:29", updated_at: "2018-06-29 00:15:29"},
  {trackable_type: "Article", trackable_id: 6, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:17:19", updated_at: "2018-06-29 00:17:19"},
  {trackable_type: "Article", trackable_id: 6, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:17:21", updated_at: "2018-06-29 00:17:21"},
  {trackable_type: "Comment", trackable_id: 4, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:17:28", updated_at: "2018-06-29 00:17:28"},
  {trackable_type: "Article", trackable_id: 7, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:19:39", updated_at: "2018-06-29 00:19:39"},
  {trackable_type: "Article", trackable_id: 7, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:19:43", updated_at: "2018-06-29 00:19:43"},
  {trackable_type: "Forum", trackable_id: 4, owner_type: "User", owner_id: 3, key: "forum.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:21:46", updated_at: "2018-06-29 00:21:46"},
  {trackable_type: "Article", trackable_id: 8, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:24:52", updated_at: "2018-06-29 00:24:52"},
  {trackable_type: "Article", trackable_id: 8, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:24:55", updated_at: "2018-06-29 00:24:55"},
  {trackable_type: "Comment", trackable_id: 5, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:25:02", updated_at: "2018-06-29 00:25:02"},
  {trackable_type: "Comment", trackable_id: 6, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:25:26", updated_at: "2018-06-29 00:25:26"},
  {trackable_type: "Comment", trackable_id: 3, owner_type: nil, owner_id: nil, key: "comment.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:26:17", updated_at: "2018-06-29 00:26:17"},
  {trackable_type: "Comment", trackable_id: 7, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:26:56", updated_at: "2018-06-29 00:26:56"},
  {trackable_type: "Article", trackable_id: 2, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:36:56", updated_at: "2018-06-29 00:36:56"},
  {trackable_type: "Article", trackable_id: 3, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:37:08", updated_at: "2018-06-29 00:37:08"},
  {trackable_type: "Comment", trackable_id: 8, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:37:18", updated_at: "2018-06-29 00:37:18"},
  {trackable_type: "Article", trackable_id: 9, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:38:37", updated_at: "2018-06-29 00:38:37"},
  {trackable_type: "Comment", trackable_id: 9, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:38:45", updated_at: "2018-06-29 00:38:45"},
  {trackable_type: "Article", trackable_id: 9, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:38:47", updated_at: "2018-06-29 00:38:47"},
  {trackable_type: "Forum", trackable_id: 5, owner_type: "User", owner_id: 1, key: "forum.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:39:21", updated_at: "2018-06-29 00:39:21"},
  {trackable_type: "Article", trackable_id: 10, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:40:07", updated_at: "2018-06-29 00:40:07"},
  {trackable_type: "Article", trackable_id: 10, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:40:09", updated_at: "2018-06-29 00:40:09"},
  {trackable_type: "Comment", trackable_id: 10, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:40:20", updated_at: "2018-06-29 00:40:20"},
  {trackable_type: "Forum", trackable_id: 6, owner_type: "User", owner_id: 3, key: "forum.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:42:15", updated_at: "2018-06-29 00:42:15"},
  {trackable_type: "Article", trackable_id: 11, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:43:29", updated_at: "2018-06-29 00:43:29"},
  {trackable_type: "Article", trackable_id: 11, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 00:43:33", updated_at: "2018-06-29 00:43:33"},
  {trackable_type: "Article", trackable_id: 3, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 01:03:15", updated_at: "2018-06-29 01:03:15"},
  {trackable_type: "Article", trackable_id: 8, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 01:03:21", updated_at: "2018-06-29 01:03:21"},
  {trackable_type: "Article", trackable_id: 6, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 01:03:28", updated_at: "2018-06-29 01:03:28"},
  {trackable_type: "Article", trackable_id: 5, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 01:03:34", updated_at: "2018-06-29 01:03:34"},
  {trackable_type: "Article", trackable_id: 7, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 01:04:25", updated_at: "2018-06-29 01:04:25"},
  {trackable_type: "Article", trackable_id: 2, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 01:04:41", updated_at: "2018-06-29 01:04:41"},
  {trackable_type: "Article", trackable_id: 10, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 01:35:53", updated_at: "2018-06-29 01:35:53"},
  {trackable_type: "Article", trackable_id: 10, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 01:36:07", updated_at: "2018-06-29 01:36:07"},
  {trackable_type: "Comment", trackable_id: 11, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil, created_at: "2018-06-29 01:46:54", updated_at: "2018-06-29 01:46:54"}

])
