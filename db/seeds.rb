

User.create!([
  {first_name: "Domingo", last_name: "Ramirez", email: "djramirez@uc.cl", password_digest: "$2a$10$czinRmh1rQAeLVfN20ESxOIiLTsdrbIwoJDPJc6MQ0ObZvKzp0JEa", born_year: "1996", avatar_url: "", saved_articles: []},
  {first_name: "Francisco", last_name: "Larach", email: "fjlarach@uc.cl", password_digest: "$2a$10$nprtf7zG3bZ5iUZPozPVZeHA5UAcZ93/LaJ.AGQdtsEYJhKPtzq62", born_year: "1996", avatar_url: "https://cdn.filepicker.io/api/file/zLZjxSJuQYGL3CuquR1A", saved_articles: []},
  {first_name: "Federico", last_name: "Brunner", email: "fobrunner@uc.cl", password_digest: "$2a$10$RTdKIsPMTgVfWF1IKcTsCetFI5Wf7sS8rKjbk.1UUAhOj/7dNo6.6", born_year: "1996", avatar_url: "https://cdn.filepicker.io/api/file/t27qOfmXTYKJu77oP9DJ", saved_articles: []}
])

Forum.create!([
  {name: "Memes", op: "fjlarach@uc.cl", op_id: "2", description: "Este es un foro para mantenernos entretenidos."},
  {name: "Comida", op: "fjlarach@uc.cl", op_id: "2", description: "Este es el foro para cuando tenemos hambre"},
  {name: "Autos", op: "fjlarach@uc.cl", op_id: "2", description: "Este es el foro de la velocidad"},
  {name: "Peliculas", op: "fobrunner@uc.cl", op_id: "3", description: "Para los momentos de relajo"}
])

Admin.create!([
  {user_id: 2, forum_id: 1, subscribe: true, admin: true},
  {user_id: 2, forum_id: 2, subscribe: true, admin: true},
  {user_id: 2, forum_id: 3, subscribe: true, admin: true},
  {user_id: 3, forum_id: 1, subscribe: true, admin: false},
  {user_id: 3, forum_id: 3, subscribe: true, admin: false},
  {user_id: 3, forum_id: 4, subscribe: true, admin: true}
])
Article.create!([
  {title: "Bob Esponja", body: "Así me sentí la semana pasada", op: "fjlarach@uc.cl", op_id: "2", forum_id: 1, img: "https://cdn.filepicker.io/api/file/4f6g6XkLSI6abYGc232Y", cached_votes_total: 0, cached_votes_score: 0, cached_votes_up: 0, cached_votes_down: 0, cached_weighted_score: 0, cached_weighted_total: 0, cached_weighted_average: 0.0},
  {title: "Calamardo", body: "Este es un amargado", op: "fjlarach@uc.cl", op_id: "2", forum_id: 1, img: "https://cdn.filepicker.io/api/file/UQbS0TKCRZqUytZndBD2", cached_votes_total: 0, cached_votes_score: 0, cached_votes_up: 0, cached_votes_down: 0, cached_weighted_score: 0, cached_weighted_total: 0, cached_weighted_average: 0.0},
  {title: "Arenita", body: "Mis dias de examenes", op: "fjlarach@uc.cl", op_id: "2", forum_id: 1, img: "https://cdn.filepicker.io/api/file/8pCy3kO1Sj2FDHkFv2Yg", cached_votes_total: 1, cached_votes_score: 1, cached_votes_up: 1, cached_votes_down: 0, cached_weighted_score: 1, cached_weighted_total: 1, cached_weighted_average: 1.0},
  {title: "Pizza", body: "¿Sabian que esta es la pizza original?", op: "fjlarach@uc.cl", op_id: "2", forum_id: 2, img: "https://cdn.filepicker.io/api/file/XCwi0FptQKeQdO5qf05p", cached_votes_total: 1, cached_votes_score: 1, cached_votes_up: 1, cached_votes_down: 0, cached_weighted_score: 1, cached_weighted_total: 1, cached_weighted_average: 1.0},
  {title: "Ferrari 458", body: "Este es el ferrari mas elegante", op: "fjlarach@uc.cl", op_id: "2", forum_id: 3, img: "https://cdn.filepicker.io/api/file/7OESiyyFR8aVo6JhR44C", cached_votes_total: 0, cached_votes_score: 0, cached_votes_up: 0, cached_votes_down: 0, cached_weighted_score: 0, cached_weighted_total: 0, cached_weighted_average: 0.0},
  {title: "Lamborgini", body: "Este lamborgini es el mas veloz", op: "fjlarach@uc.cl", op_id: "2", forum_id: 3, img: "https://cdn.filepicker.io/api/file/mS5NzeioS2mWF8GdjVuP", cached_votes_total: 1, cached_votes_score: 1, cached_votes_up: 1, cached_votes_down: 0, cached_weighted_score: 1, cached_weighted_total: 1, cached_weighted_average: 1.0},
  {title: "Mercedes", body: "Elegancia pura", op: "fjlarach@uc.cl", op_id: "2", forum_id: 3, img: "https://cdn.filepicker.io/api/file/jQlEFFeRySTjKhM6GNcy", cached_votes_total: 1, cached_votes_score: -1, cached_votes_up: 0, cached_votes_down: 1, cached_weighted_score: -1, cached_weighted_total: 1, cached_weighted_average: -1.0},
  {title: "Los increibles ii", body: "El último estreno", op: "fobrunner@uc.cl", op_id: "3", forum_id: 4, img: "https://cdn.filepicker.io/api/file/vYqKq4pcSFmL5zTMuzOU", cached_votes_total: 1, cached_votes_score: 1, cached_votes_up: 1, cached_votes_down: 0, cached_weighted_score: 1, cached_weighted_total: 1, cached_weighted_average: 1.0}
])
Comment.create!([
  {op: "fjlarach@uc.cl", op_id: "2", content: "Fue terrible", article_id: 1},
  {op: "fjlarach@uc.cl", op_id: "2", content: "Hay otro de esos memes parecidos", article_id: 2},
  {op: "fjlarach@uc.cl", op_id: "2", content: "Yo lo iba manejando!", article_id: 6},
  {op: "fobrunner@uc.cl", op_id: "3", content: "Peliculaza", article_id: 8},
  {op: "fobrunner@uc.cl", op_id: "3", content: "Es demasiado poco saludable, pero aún así lo vale", article_id: 4},
  {op: "fjlarach@uc.cl", op_id: "2", content: "Hay un lugar increible en Av. El MAR", article_id: 4},
  {op: "fobrunner@uc.cl", op_id: "3", content: "Vamos a conocer el lugar?", article_id: 4}
])


ActsAsVotable::Vote.create!([
  {votable_type: "Article", votable_id: 3, voter_type: "User", voter_id: 2, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Article", votable_id: 4, voter_type: "User", voter_id: 2, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Article", votable_id: 6, voter_type: "User", voter_id: 2, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Article", votable_id: 7, voter_type: "User", voter_id: 2, vote_flag: false, vote_scope: nil, vote_weight: 1},
  {votable_type: "Article", votable_id: 8, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1}
])

PublicActivity::ORM::ActiveRecord::Activity.create!([
  {trackable_type: "Forum", trackable_id: 1, owner_type: "User", owner_id: 2, key: "forum.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Article", trackable_id: 1, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Comment", trackable_id: 1, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Article", trackable_id: 2, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Article", trackable_id: 2, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Comment", trackable_id: 2, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Article", trackable_id: 3, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Article", trackable_id: 3, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Forum", trackable_id: 2, owner_type: "User", owner_id: 2, key: "forum.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Article", trackable_id: 4, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Article", trackable_id: 4, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Article", trackable_id: 4, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Comment", trackable_id: 3, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Comment", trackable_id: 3, owner_type: nil, owner_id: nil, key: "comment.update", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Forum", trackable_id: 3, owner_type: "User", owner_id: 2, key: "forum.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Article", trackable_id: 5, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Article", trackable_id: 6, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Article", trackable_id: 6, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Comment", trackable_id: 4, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Article", trackable_id: 7, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Article", trackable_id: 7, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Forum", trackable_id: 4, owner_type: "User", owner_id: 3, key: "forum.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Article", trackable_id: 8, owner_type: nil, owner_id: nil, key: "article.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Article", trackable_id: 8, owner_type: nil, owner_id: nil, key: "article.update", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Comment", trackable_id: 5, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Comment", trackable_id: 6, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Comment", trackable_id: 3, owner_type: nil, owner_id: nil, key: "comment.update", parameters: {}, recipient_type: nil, recipient_id: nil},
  {trackable_type: "Comment", trackable_id: 7, owner_type: nil, owner_id: nil, key: "comment.create", parameters: {}, recipient_type: nil, recipient_id: nil}
])
