SELECT * FROM trips;

SELECT * FROM riders;

SELECT * FROM cars;

SELECT * FROM cars
CROSS JOIN riders;

SELECT riders.first, riders.last, trips.pickup, trips.dropoff, trips.cost FROM riders
LEFT JOIN trips ON trips.rider_id = riders.id;

SELECT trips.cost, cars.id AS "car_id", cars.model FROM trips
JOIN cars ON trips.car_id = cars.id;

SELECT * FROM riders
UNION
SELECT * FROM riders2;

SELECT ROUND(AVG(cost),2) AS "Average cost" FROM trips;

WITH riders_joint AS (
SELECT first, last, total_trips FROM riders
WHERE total_trips < 500
UNION
SELECT first, last, total_trips FROM riders2
WHERE total_trips < 500
)
SELECT * FROM riders_joint
ORDER BY total_trips ASC;

SELECT COUNT(*) AS "Active cars" FROM cars
WHERE status = "active";

SELECT id, model, status, trips_completed FROM cars
ORDER BY trips_completed DESC
LIMIT 2;
