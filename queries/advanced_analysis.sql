-- Top pays
SELECT country, COUNT(*) as total
FROM netflix_titles
GROUP BY country
ORDER BY total DESC;

-- Genres les plus fréquents
SELECT listed_in, COUNT(*) as total
FROM netflix_titles
GROUP BY listed_in
ORDER BY total DESC;

-- Evolution par année
SELECT release_year, COUNT(*) as total
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year;
