# Introduction

This demo was created to review some general features of JBoss Data Virtualization 6.2 <br/>
It was created to help new JDV developers to understand how to integrate data repositories. This repositories are XML files and JDBC PostgreSQL tables.<br/><br/>

ENJOY!!!!

# Pre-Requisites

* JBoss Data Virtualization 6.2 installed
* JBoss Developer Studio 8.1.0 GA installed with all updates
* TEIID Designer 9.0.3 for JBoss Developer Studio installed
* PostgreSQL installed
* Demo database created  with scripts provided on this workshop (<WorkshopFolder>/assets/postgresql_scripts/CreateDatabase.sql)
* Tables for workshop database created with provided scripts (<WorkshopFolder>/assets/postgresql_scripts/CreateTables.sql)
* JDBC PostgreSQL 9.4 driver jar file

# Important Info

* JBoss Data Virtualization administration user is defined for this demo as: Username: admin, Password: Admin1_Admin1
* All JBoss Data Virtualization password for this demo are defined as: Admin1_Admin1
* TEIID user for JBoss Data Virtualization is teiidUser
* Postgres database username is dataVirtDemoUser with password 12345678

# Cloning Proyects

Clone from GIT:
* Create or move to an empty dir: `cd <WorkshopProyectsDirToUse>`
* Run: `https://github.com/igl100/datavirt62-demo.git`
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C1.png)

# Set Perspective

Change JBoss Developer Studio Perspective to TEIID Designer

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C1.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C2.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C3.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C4.png)

# Setup JBoss Developer Studio to Workspace

On Teiid Designer perspective view the left side 'Guides' window. Notice a combo box with Model Sources.<br/>
Click on that combo box and follow the next steps..

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C5.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C6.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C7.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C8.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C9.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C10.png)

# Configure JBoss Developer Studio instance 

Select the 'servers' window (bottom) and double click JBoss Data Virtualization server.
It will open a configuration window.<br/>
Change 'Mange Login Credentials' username and password to your server admin user.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C11.png)

Click on Teiid Instance tab on the same window and change 'JDBC Connection' username and password to your teiid user. For this workshop we configured it to be teiidUser and Admin1_Admin1 password.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C12.png)

# Start JBoss Developer Studio Server

Right click over server instance and select 'start'
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C13.png)

# Create a new TEIID Proyect

On proyect window (top-right window) execute the following sequence using right click.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C14.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C15.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C16.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C17.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C18.png)

# Create a Database Source

On Teiid Designer perspective view the left side 'Guides' window. Notice a combo box with Model Sources.<br/>
Click on that combo box and select 'Model JDBC Source'

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C19.png)

Double click over 'Define Teiid Model Project' and follow the next steps:

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C20.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C21.png)

Select 'Existing' button.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C22.png)

Select the new created project.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C23.png)

Double click over 'Create JDBC connection' and follow the next steps:

* Select PostgreSQL and setup 'Name' as PostgreSQL

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C24.png)

* Select 'New Driver Definition' icon.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C25.png)

* Setup names

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C26.png)

* Setup JDBC jars:
- Remove posgresql jar driver

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C27.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C28.png)

- Click 'Add JAR/ZIP' and select postgresql 9.4 jdbc jar file.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C29.png)

- Setup database connection (password is 12345678)

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C30.png)

- Test the connection.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C31.png)

- Click Next and Finish

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C32.png)

* Double click on "create source model for JDBC data source" and follow the next steps:

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C33.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C34.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C35.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C36.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C37.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C38.png)

Notice how teiid designer generate an ER diagram with selected tables.

- Save all changes

- Double click on "Preview Data" and follow the next steps for model testing

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C39.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C40.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C41.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C42.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C43.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C44.png)

Notice the Result1 tab. It show the data obtained form the database.

- Let's create a new datasource for our xml file. Select "Model local XML File Source" from Guides combo box.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C45.png)

- Double click on "Create Teiid local XML Connection" to bind the file. Follow the next steps:

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C46.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C47.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C48.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C49.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C50.png)

- Double click "Create source model from XML file source" and follow the next steps:

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C51.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C52.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C53.png)

IMPORTANT: Change the Root Path to /Viajes/Persona before selecting the xml rows.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C54.png)

Expand the xml nodes and select: Nombre, Origen, Destino and click the add button. Review that "Granted SQL Statement" text is the same as the next picture.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C55.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C56.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C57.png)

- Double click on "Preview Data" and follow the next steps

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C58.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C59.png)

- Note how Result1 tab show as structured data the query result to the xml file.

- On the project side, expand and right click over "views" folder and create a "New/Teiid Metadata Model". Follow the next steps.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C60.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C61.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C62.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C63.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C64.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C65.png)

Note how logical tables of "Personas" and "Actividades" are created but not binded to the real tables. 

- Bind the logical views to the real tables by following the next steps:
Expand PostgreSQL.xmi and drag the  Actividades table to "Sources" space of "Actividades" view.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C66.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C67.png)

- Repeat the same steps for "Personas" view. Expand PostgreSQL.xmi and drag the Personas table to "Sources" space of "Personas" view.

- Now we can create a "Profile" table that group all the data on PostgreSQL tables and XML data:
Right click over GlobalViewModel.xmi and follow the next steps:

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C68.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C69.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C70.png)

Note how the Profile table was created but it doesn't show any columns. 

- Double click the Profile table to view its source:

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C71.png)

- Expand GlobalViewModel.xmi and drag and drop Personas and Actividades views to the sources side of Profile Table. Drag and drop Viajes table to the sources side of Profile table and Save all changes

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C72.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C73.png)

- Test data from Profile table. Right click over Profile table and choose "Preview Data".

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C74.png)

Note how the Profile logical table show all data from all logical tables. The data is not related so it shows all existing data from all tables.

- Bind data (join) from all tables. On Profile table, double clich the 'T' arrow. Note how a query editor is opened. The query shown drives the Profile table data.
Replace the query to the one saved on '<WorkshopFileDir>/assets/Queries/ProfileTableQuery.txt' and save all changes on workspace.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C75.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C76.png)

- Preview data again from Profile table. Right click on Profile table and select "Preview Data".

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C77.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C78.png)

Note the Result1 tab.

- Define a Virtual Database (VDB). Double click on "Define VDB" and follow the next steps:

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C79.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C80.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C81.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C82.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C83.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C84.png)

- Now lets deploy the VDB to JBoss Developer Studio. Right click over "Execute VDB" and follow the next steps:

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C85.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C86.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C87.png)

Note how Teiid Designer change to Database Development perspective. The "SQL Scrapbook" is a JDBC database client that connects to any databas (including teiid). Expand GlobalDB and notice the logical tables exists as tables.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C88.png)


- Test data with queries.
On SQL Scrapbook run the next quer. (All queries are defined on <WorkshopFileDir>/assets/Queries/Quieries.txt)

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C89.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C90.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C91.png)

Now lets test filtering by name:

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C92.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C93.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C94.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C95.png)

We can also specify group by. Lets get all travels for one person.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C96.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C97.png)

Lets get all activities for one person.

![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C98.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C99.png)
![Img](https://github.com/igl100/datavirt62-demo/blob/master/docs/image/C100.png)


