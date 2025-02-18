" PostgreSQL syntax for Vim
" thjbdvlt (2025). License MIT
" adaptation of vim SQL default file, by David Fishburn (2005)

if exists("b:current_syntax")
 finish
endif

syn case ignore

syn keyword Constant false null true
syn keyword Keyword access add as asc begin by case check cluster column cache compress connect current cursor decimal default desc else elsif end exception exclusive file for from function group having identified if immediate increment index initial initrans into is level link logging loop maxextents maxtrans mode modify monitoring nocache nocompress nologging noparallel nowait of offline on online start parallel successful synonym table tablespace then to trigger uid unique user validate values view when whenever where with option order pctfree pctused privileges procedure public resource return row rowlabel rownum rows session share size type using join cross inner outer left right not and or in any some all between exists like escape union intersect minus prior distinct sysdate out analyze audit comment commit delete drop execute explain grant lock noaudit rename revoke rollback savepoint set truncate create update alter select insert
syn keyword Type bfile bigint bigserial bit blob boolean box bytea char character cidr circle clob date datetime dec decimal double float inet int integer interval json jsonb line long lseg macaddr macaddr8 mlslabel money nchar nclob number numeric nvarchar2 path pg_lsn pg_snapshot point polygon precision raw real rowid serial smallint smallserial text time timestamp tsquery tsvector txid_snapshot urowid uuid varchar varchar2 varray xml

syn match Function /\w\+(\@=/
syn match Type /::\w\+/
syn match Operator "[-+=/%*<#&>?|@$]\+"
syn match Punctuation "[()\[\]\{\}.;,]\+"
syn region String start=+[a-z]\?'+ skip=+''+ end=+'+ 
syn match Number "-\=\<\d*\.\=[0-9_]\>"

" match identifier so keywords in identifiers (e.g. as column names) are not
" highlighted as keywords
syn match Identifier /\w\+\.\w\+/
syn match Punctuation /\./ containedin=Identifier

syn region Comment start="/\*" end="\*/" contains=sqlTodo,@Spell fold 
syn match Comment "--.*$" contains=sqlTodo,@Spell

let b:current_syntax = "pgsql"
