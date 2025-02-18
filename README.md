PostgreSQL syntax in Vim. it is so minimal that it's actually incomplete, and very lazy.

- `anyname()`: this is a function
- `anyname ()`: this is not a function
- `type`: this is a keyword
- `anyname.type`: this is not a keyword
- `text`: this is a type
- `anyname.text`: this is not a type
- `::anyname`: this is a type
- `E'anything'`: this is a string
- `u'anything'`: this is a string

there is no folding support.

![](./img/screenshot.sql)
