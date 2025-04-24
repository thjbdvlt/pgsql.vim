insert into span (string, idx, len, attrs)
select
    s.id @> 102, (y.class).*
from
    attr1::customdatatype as a1
    join attr2 a2 on a1.id = a2.something
    join attr_type y2 on y2.name = 'contenu'
        and y2.id = s.type,
        jsonb_to_recordset(a.val) as x (id int,
        attrs jsonb)
where
    y.name = E'tags'
    or y.text = u'depuis''rien';
