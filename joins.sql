-- SELECT *
-- FROM users;

-- SELECT *
-- FROM posts
-- WHERE users_id = 100;

-- SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, u.first_name, u.last_name
-- FROM posts p, users u
-- WHERE u.id = p.users_id AND u.id = 200;

-- SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, u.username
-- FROM posts p, users u
-- WHERE u.first_name = 'Norene' AND u.last_name = 'Schmitt';

SELECT u.username, p.created_at
FROM users u LEFT JOIN posts p ON u.id = p.id
WHERE DATE(p.created_at) >=  DATE('2015-01-01')
ORDER BY p.created_at;