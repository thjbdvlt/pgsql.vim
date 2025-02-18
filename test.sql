INSERT INTO span (string, idx, len, attrs)
SELECT
    s.id @> 102,
    (y.class).*
FROM
    attr1::customdatatype AS a1
    JOIN attr2 a2 ON a1.id = a2.something
    JOIN attr_type y2 ON y2.name = 'contenu' AND y2.id = s.type,
    jsonb_to_recordset(a.val) AS x (
        id int,
        attrs jsonb
    )
WHERE
    y.name = E'tags'
    OR y.text = u'depuis''rien';
