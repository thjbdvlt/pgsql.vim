" PostgreSQL syntax for Vim
" thjbdvlt (2025). License MIT
" adaptation of vim SQL default file, by David Fishburn (2005)
" and pgsql.vim by lifepillar

if exists("b:current_syntax")
 finish
endif

syn case ignore

syn match Function /\w\+(\@=/
syn match Type /::\w\+/
syn match Operator "[-+=/%*<#&>?|@$:~^]\+"
syn match Punctuation "[()\[\]\{\}.;,]\+"
syn match Number "-\=\<\d*\.\=[0-9_]\>"
syn region Comment start="/\*" end="\*/" contains=@Spell
syn region String start="E\?'" skip="''" end="'" 
syn match Comment "--.*$" contains=@Spell

" match identifier so keywords in identifiers (e.g. as column names) are not
" highlighted as keywords
syn match Identifier /\w\+\.\w\+/
syn match Punctuation /\./ containedin=Identifier

syn keyword Constant false null true

" https://www.postgresql.org/docs/current/datatype.html
syn keyword Type bfile bigint bigserial bit blob boolean box bytea 
\ char character cidr circle clob date datetime dec decimal 
\ double float inet int integer interval json jsonb line long 
\ lseg macaddr macaddr8 mlslabel money nchar nclob number 
\ numeric nvarchar2 path pg_lsn pg_snapshot point polygon 
\ precision raw real rowid serial smallint smallserial text 
\ time timestamp tsquery tsvector txid_snapshot urowid uuid 
\ varchar varchar2 varray xml

" from sql.vim and pgsql.vim
syn keyword Keyword abort absolute access action add admin after 
\ aggregate alias alignment all also alter always analyse 
\ analyze and any array as asc asensitive assertion 
\ assignment asymmetric atomic attach attribute audit 
\ authorization backward basetype before begin between binary 
\ both breadth by bypassrls cache call called canonical 
\ cascade cascaded case cast catalog category century chain 
\ characteristics check checkpoint class close cluster 
\ coalesce collatable collate collation column columns 
\ combinefunc comment comments commit committed commutator 
\ compress compression concurrently configuration conflict 
\ connect connection constant constraint constraints content 
\ continue conversion copy cost create createdb createrole 
\ cross csv current current_catalog current_date current_role 
\ current_schema current_time current_timestamp current_user 
\ cursor cycle data database datatype day deallocate dec 
\ decade decimal declare default defaults deferrable deferred 
\ definer delete delimiter delimiters depends depth desc 
\ deserialfunc detach detail diagnostics dictionary disable 
\ discard distinct do document domain dow doy drop each 
\ element else elsif enable encoding encrypted end enum epoch 
\ errcode escape event except exception exclude excluding 
\ exclusive execute exists exit explain expression extension 
\ external extract false family fetch file filter finalfunc 
\ finalfunc_extra finalfunc_modify finalize first float 
\ following for force foreach foreign forward found freeze 
\ from full function functions generated get gettoken global 
\ grant granted greatest group grouping groups handler hashes 
\ having header headline hint hold hour hypothetical 
\ identified identity if ilike immediate immutable implicit 
\ import in include including increment index indexes inherit 
\ inherits init initcond initial initially initrans inline 
\ inner inout input insensitive insert instead internallength 
\ intersect into invoker is isnull isodow isolation isoyear 
\ join key label language large last lateral lc_collate 
\ lc_ctype leading leakproof least left leftarg level lexize 
\ lextypes like limit link listen load local locale localtime 
\ localtimestamp location lock locked logged logging login 
\ loop mapping match materialized maxextents maxtrans 
\ maxvalue merges message method mfinalfunc mfinalfunc_extra 
\ mfinalfunc_modify microseconds millennium milliseconds 
\ minitcond minus minute minvalue minvfunc mode modify 
\ monitoring month move msfunc msspace mstype name names 
\ national natural nchar negator new next nfc nfd nfkc nfkd 
\ no noaudit nobypassrls nocache nocompress nocreatedb 
\ nocreaterole noinherit nologging nologin none noparallel 
\ noreplication normalize normalized nosuperuser not nothing 
\ notice notify notnull nowait null nullif nulls object of 
\ off offline offset oids old on online only open operator 
\ option options or order ordinality others out outer output 
\ over overlaps overlay overriding owned owner parallel 
\ parser partial partition passedbyvalue passing password 
\ pctfree pctused perform permissive placing plans plpgsql 
\ policy position preceding preferred prepare prepared 
\ preserve primary prior privileges procedural procedure 
\ procedures program provider public publication quarter 
\ query quote raise range read readonly read_write reassign 
\ receive recheck recursive ref references referencing 
\ refresh reindex relative release rename repeatable replace 
\ replica replication reset resource restart restrict 
\ restricted restrictive return returning returns reverse 
\ revoke right rightarg role rollback rollup routine routines 
\ row rowlabel rownum rows rowtype rule safe savepoint schema 
\ schemas scroll search second security select send sequence 
\ sequences serialfunc serializable server session 
\ session_user set setof sets sfunc share shareable show 
\ similar simple size skip slice snapshot some sortop sql 
\ sqlstate sspace stable stacked standalone start statement 
\ statistics stdin stdout storage stored strict strip stype 
\ subscription substring subtype subtype_diff subtype_opclass 
\ successful superuser support symmetric synonym sysdate 
\ sysid system table tables tablesample tablespace temp 
\ template temporary text tg_argv tg_event tg_level tg_name 
\ tg_nargs tg_op tg_relid tg_relname tg_table_name 
\ tg_table_schema tg_tag tg_when then ties timezone 
\ timezone_hour timezone_minute to trailing transaction 
\ transform treat trigger trim true truncate trusted type 
\ types typmod_in typmod_out uescape uid unbounded 
\ uncommitted unencrypted union unique unknown unlisten 
\ unlogged unsafe until update usage user using vacuum valid 
\ validate validator value values variadic verbose version 
\ view views volatile week when whenever where while 
\ whitespace window with within without work wrapper write 
\ xmlattributes xmlconcat xmlelement xmlexists xmlforest 
\ xmlnamespaces xmlparse xmlpi xmlroot xmlserialize xmltable 
\ year yes

let b:current_syntax = "pgsql"
