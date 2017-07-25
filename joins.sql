-- STEP 1
-- SELECT *
-- FROM users;

-- STEP 2
-- SELECT *
-- FROM posts
-- WHERE users_id = 100;

-- STEP 3
-- SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, u.first_name, u.last_name
-- FROM posts p, users u
-- WHERE u.id = p.users_id AND u.id = 200;

-- STEP 4
-- SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, u.username
-- FROM posts p, users u
-- WHERE u.first_name = 'Norene' AND u.last_name = 'Schmitt';

-- STEP 5
-- SELECT u.username, p.created_at
-- FROM users u LEFT JOIN posts p ON u.id = p.id
-- WHERE p.created_at >=  '2015-01-01'
-- ORDER BY p.created_at;

-- STEP 6
-- SELECT p.title, p.content, u.username
-- FROM users u RIGHT JOIN posts p ON u.id = p.users_id
-- WHERE u.created_at < '2015-01-01'
-- ORDER BY u.created_at DESC;

-- STEP 7
-- SELECT p.title AS "Post Title", c.id, c.body, c.created_at, c.updated_at, c.users_id, c.posts_id
-- FROM posts p RIGHT JOIN comments c ON p.id = c.posts_id;

-- STEP 8
-- SELECT p.title AS "post_title", p.url AS "post_url", c.body AS "comment_body"
-- FROM comments c LEFT JOIN posts p ON c.posts_id = p.id
-- WHERE p.created_at < '2015-01-01'
-- ORDER BY p.created_at DESC;

-- STEP 9
-- SELECT p.title AS "post_title", p.url AS "post_url", c.body AS "comment_body"
-- FROM comments c LEFT JOIN posts p ON c.posts_id = p.id
-- WHERE p.created_at > '2015-01-01'
-- ORDER BY p.created_at;

-- STEP 10
-- SELECT p.title AS "post_title", p.url AS "post_url", c.body AS "comment_body"
-- FROM comments c LEFT JOIN posts p ON c.posts_id = p.id
-- WHERE c.body LIKE '%USB%';

-- STEP 11
-- SELECT p.title AS "post_title", u.first_name, u.last_name, c.body AS "comment_body"
-- FROM users u INNER JOIN posts p ON u.id = p.users_id INNER JOIN comments c ON p.id = c.posts_id
-- WHERE c.body LIKE '%matrix%';

-- STEP 12
-- SELECT u.first_name, u.last_name, c.body AS "comment_body"
-- FROM users u INNER JOIN posts p ON u.id = p.users_id INNER JOIN comments c ON p.id = c.posts_id
-- WHERE c.body LIKE '%SSL%' AND p.content LIKE '%dolorum%';

-- STEP 13
SELECT u.first_name AS "post_author_first_name", u.last_name AS "post_author_last_name", p.title AS "post_title", u.username AS "comment_author_username", c.body AS "comment_body"
FROM users u, posts p, comments c
WHERE u.id = p.users_id AND p.id = c.posts_id AND p.content LIKE '%nemo%' AND c.body IN (SELECT c.body
FROM comments c
WHERE c.body LIKE '%SSL%' OR c.body LIKE '%firewall%');