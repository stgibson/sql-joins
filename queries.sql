-- query 1
SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;

-- query 2
SELECT o.first_name, o.last_name, COUNT(v.owner_id) FROM owners o
  JOIN vehicles v ON o.id = v.owner_id GROUP BY o.first_name, o.last_name
  ORDER BY o.first_name;

-- query 3
SELECT o.first_name, o.last_name, CAST(AVG(v.price) AS int) AS average_price,
  COUNT(v.owner_id) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY
  o.first_name, o.last_name HAVING COUNT(v.owner_id) > 1 AND
  AVG(v.price) > 10000 ORDER BY o.first_name DESC;