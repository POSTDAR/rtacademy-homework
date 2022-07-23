SELECT
    ci.id as city_id,
    ci.name as city_name,
    co.name as country_name,
    con.name as continent_name
FROM
    cities as ci
        LEFT JOIN
    countries as co on (co.id = ci.country_id)
        LEFT JOIN
    continents as con on (con.id = ci.continent_id)
ORDER BY
    LENGTH(ci.name) DESC
    LIMIT
    10
;