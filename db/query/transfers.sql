-- name: CreateTransfer :one
INSERT INTO transfers(
    from_account_id,
    to_account_id,
    amount
) VALUES(
    $1, $2, $3
) RETURNING *;

-- name: GetTransferFrom :many
SELECT * FROM transfers
WHERE from_account_id = $1;

-- name: GetTransferTo :many
SELECT * FROM transfers
WHERE to_account_id = $1;

-- name: GetTransfers :many
SELECT * FROM transfers
WHERE from_account_id = $1
and to_account_id = $2;

-- name: GetTransfer :one
SELECT * FROM transfers
WHERE id = $1;

