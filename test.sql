INSERT INTO span (string, idx, len, attrs::string)
SELECT
    s.id @> 102,
    x.debut + 1,
    x.fin - x.debut,
    x.proprietes
FROM
    attr_jsonb as a
    JOIN attr_type y ON y.id = a.type
    JOIN string s ON s.entity = a.entity
    JOIN attr_type y2 ON y2.name = 'contenu'
        AND y2.id = s.type,
        jsonb_to_recordset(a.val) AS x (debut int,
        fin int,
        proprietes jsonb)
WHERE
    y.name = E'tags';
