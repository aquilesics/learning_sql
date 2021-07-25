--#!bin/bash
--\du (exibe roles no terminal)

  /*ADMINISTRANDO USERS/ROLES/GROUPS */

CREATE ROLE administradores
	CREATEDB
	CREATEROLE
	INHERIT
	NOLOGIN
	REPLICATION
	BYPASSRLS
	--VALID UNTIL 
	CONNECTION LIMIT -1;
	
CREATE ROLE professores
	NOCREATEDB
	NOCREATEROLE
	INHERIT
	NOLOGIN
	NOBYPASSRLS
	CONNECTION LIMIT 10;
	
CREATE ROLE alunos
	NOCREATEDB
	NOCREATEROLE
	INHERIT
	NOLOGIN
	NOBYPASSRLS
	CONNECTION LIMIT 90;
	
CREATE ROLE daniel
	LOGIN
	CONNECTION LIMIT 3 PASSWORD '123'
	IN ROLE PROFESSORES;

/*associando roles*/
GRANT daniel TO professores;
	
/*desassociar roles*/
REVOKE daniel FROM professores;

/*remove ROLE*/
DROP  ROLE