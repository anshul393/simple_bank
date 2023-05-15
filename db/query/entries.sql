-- name: CreateEntry :one
INSERT INTO entries (
  account_id,
  amount
) VALUES (
  $1, $2
) RETURNING *;


-- name: GetEntries :many
SELECT * FROM entries
WHERE account_id = $1;

-- name: GetEntry :one
SELECT * FROM entries
WHERE id = $1;