-- -*- sql-product: postgres; -*-

\lo_import /docker-entrypoint-initdb.d/demo.xsl '{"name": "demo.xsl", "content-type": "application/xslt+xml"}'

do $$
declare
	grant_statement text;
begin
	for grant_statement in select format('grant select on large object %s to anonymous', oid) from pg_largeobject_metadata loop
		raise notice 'performing grant: %', grant_statement;
		execute grant_statement;
	end loop;
end;
$$;

insert into core.param (name, val) values ('xml-stylesheet', '/resource/demo.xsl');
