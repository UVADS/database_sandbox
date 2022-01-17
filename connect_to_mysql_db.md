## Connect to a Database

Database management systems and databases are being added to a server so that:

- students can practice working with databases and SQL
- faculty can store data for their courses, providing a more authentic experience for students to fetch data

Once you are granted access to the database sandbox, you should be able to use these resources.

You can use CEDS or your own machine. CEDS is the preferred approach.

1) Log in to CEDS using your UVA compute credentials

2) Launch MySQL Workbench (found under Start menu)

3) Create a new database connection using MySQL Connections.

provide these credentials:

```
  connection name=give it some name, such as UVA SDS MySQL
  hostname=sds-postdb-01.eservices.virginia.edu
  username=same as UVA compute id (UID)
  password: upon login, should be automatically prompted to enter a new password.
                     if prompted for password, leave it blank and then enter a new one.
```

4) Test the connection

5) When it passes, create the connection

6) Click on the connection to launch it

7) Once inside MySQL Workbench, click on Schemas in the left menu box. Schemas are databases in MySQL.

8) Double click on `stock_data_test` to work with this database. It should turn bold and expand.

9) Double click on Tables to show the tables in the database.

10) You should see a Query window (create one if you don't see it). Enter this SQL query in the box and run it:

`
SELECT * FROM stock;
`

11) You should see results

## Connecting from Local Machine

Alternatively, you can use your personal machine to connect to the databases without using CEDS.

Using CEDS is recommended, but if you wish to use your local machine, there are two things you'll need to do differently:

1) You'll need a secure connection. Use VPN for a secure connection (instructions in Overview). You'll connect with the Cisco AnyConnect App using the UVA More Secure Network.

2) You'll need to install MySQL Workbench on your machine. You can download it from this link.

## Troubleshooting

Q1: When I try logging into CEDS, it uses a non-UVA account and I can't proceed.

A1:  Try Incognito Mode from Google Chrome.
        From the top right of screen, click the three dots button, then New incognito window. Now try logging into CEDS.
