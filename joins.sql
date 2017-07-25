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

-- SELECT u.username, p.created_at
-- FROM users u LEFT JOIN posts p ON u.id = p.id
-- WHERE p.created_at >=  '2015-01-01'
-- ORDER BY p.created_at;

-- SELECT p.title, p.content, u.username
-- FROM users u RIGHT JOIN posts p ON u.id = p.users_id
-- WHERE u.created_at < '2015-01-01'
-- ORDER BY u.created_at DESC;

-- SELECT p.title AS "Post Title", c.id, c.body, c.created_at, c.updated_at, c.users_id, c.posts_id
-- FROM posts p RIGHT JOIN comments c ON p.id = c.posts_id;

SELECT p.title AS "post_title", p.url AS "post_url", c.body AS "comment_body"
FROM comments c LEFT JOIN posts p ON c.posts_id = p.id
WHERE p.created_at < '2015-01-01'
ORDER BY p.created_at DESC;