WITH balance_usd_values AS (
  SELECT
    address,
    SUM(
      CASE
        WHEN denom = 'usdc' THEN amount * 0.000001
        WHEN denom = 'swth' THEN amount * 0.00000005
        WHEN denom = 'tmz' THEN amount * 0.003
        ELSE 0
      END
    ) AS total_balance_usd
  FROM balances
  GROUP BY address
),
recent_trades AS (
  SELECT
    address
  FROM trades
  WHERE block_height > 730000
)
SELECT
  DISTINCT b.address
FROM balance_usd_values b
JOIN recent_trades t ON b.address = t.address
WHERE b.total_balance_usd >= 500;
