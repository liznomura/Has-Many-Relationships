-- SELECT *
-- FROM users;

-- SELECT *
-- FROM posts
-- WHERE users_id = 100;

SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, u.first_name, u.last_name
FROM posts p, users u
WHERE u.id = p.users_id AND u.id = 200;