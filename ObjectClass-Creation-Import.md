so ya wanna learn how to add an objectclass to openLDAP? 
use this guide created with too many hours and too many research tabs to create and import one.

# ObjectClass creation and importing for OpenLDAP

This guide will be using:

OpenLDAP docker container - https://github.com/osixia/docker-openldap

LDAP Admin - http://www.ldapadmin.org/


1. Create your objectclass schema. Consists of 
```
attributetype ( Unique OID (use an online generator) 
        NAME 'exampleAttribute' # one word
        DESC 'description'
        EQUALITY caseIgnoreMatch #this will be what kind of data matching will happen when searching or writing or something
        SYNTAX 1.3.6.1.4.1.1466.115.121.1.15 # this goes in hand with SYNTAX 
        SINGLE-VALUE )
```
You can do as many attributetypes as you want just make sure the attribute NAME does not exist already in the SCHEMA.
```
objectclass ( Unique OID (use an online generator) 
        NAME 'exampleClass'
        DESC 'description'
        SUP top # what class will this inherit from?
        STRUCTURAL
		MUST ( cn ) #will be required on creating entry
		MAY ( exampleAttribute ) #will be optional on creating entry
```

More information on schema objectclass file creation can be found here: https://www.openldap.org/doc/admin20/schema.html
		
		
2. Import your .schema into the docker container, I like to use a mounted volume to send it through. You could also install nano to create the file and paste your schema.
Use the command docker exec -it <container name> /bin/bash to get a bash shell in the container.

3. Change your .schema into an .ldif using slapd or manually.
	Best tutorial I found, how to change your .schema into a .ldif: https://web.archive.org/web/20201118143551/https://www.zytrax.com/books/ldap/ch6/slapd-config.html

4. Once you have your .ldif ensure it is all lowercase in the filename.
	While located in the directory with your .ldif run the command `ldapadd -Q -Y EXTERNAL -H ldapi:/// -f myldiffile.ldif`
	You should get: `adding new entry "cn=myldiffile,cn=schema,cn=config"`
	
5. Check it imported by using the LDAP Admin tool to create a new entry with your Objectclass or by checking the schema.

