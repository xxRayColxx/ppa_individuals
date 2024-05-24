# Create individuals for the fakeCompany business

Make the individuals of the fakeCompany business. 

The source file is an Excel file, with per class an own sheet. Be aware of the LINK sheets! This has to do with how the data is stored in the relations databases.

The output is a turtle file to be imported in a graphDB and if required
loaded into Oracle.

## Features

- Makes use of an internal H2 database, needed for making the relational data.
- Making the turtle file for importing into a grapgDB
- Storing the data also in a oracle database (if required) -> database schema has to be pre setuped!

## Installation
There are no program arguments required.

There are two input files required in the resources directory.

1) input.conf
2) AdministrationDates.txt

### Ad 1.
\# Only if needed if the data has to be stored in oracle:  
user=x  
pw=x

\# Input data  
pathexcel=c:/Users/xb70007/OneDrive - APG/General - PPA collaboration CGI_APG/Testdata/  
excelfile=testdata_v7.xlsx

\# Place of output  
outputpath=C:/Users/xb70007/OneDrive - APG/General - PPA collaboration CGI_APG/generations/
turtlefile=triplyDB.ttl;

\# Early made Enterprise Architect generations (used for input)  
outputpathEAgenerations=C:/Users/xb70007/OneDrive - APG/General - PPA collaboration CGI_APG/generations/enterprisearchitect/

\# Model  
defModel=<https://iamlabdemo.triply.cc/apg/fake-company-ld/model/def/>  
classId=<https://iamlabdemo.triply.cc/apg/fake-company-ld/id/[classname]/>

\# Set addtooracle to 0 for no Oracle handling, 1 for Oracle handling  
addtooracle=0

### Ad 2.
Add in this files all the administraitonsdates from the input data set that has been set by the option in **input.conf**: excelfile

For examples:  
1900-01-01  
2024-01-01


# Running:

<p style="font-family: 'Consolas';">
From Intellj: Run the CreateIndividuals.java<br>

From the prompt: java -cp target\CreateIndividuals-1.0-SNAPSHOT.jar org.ppa.CreateIndividuals</p>

You have to be in the directory below the target directory (app main) or add the path of the directory where the jar file is in.

Example: if you run the script in c:\temp then:

1. make a directory: C:\temp\target\classes
2. copy the input.conf (in resources) to that directory. (input_local.conf can be used if every thing is in c:\temp. You have to rename it to input.conf!)
3. Point the directories in the input.conf to the desired directories. outputpathEAgenerations points to two necessary input files, see 
   the directory metaData in the repositoy. If you point this one to c:\temp, then please copy the two file (datamodelscript.sql and modelmeta.dat) to c:\temp
4. If you point the source file to c:\temp, then you have to copy the source also to the c:\temp (testdata_v7.xlsx is\
   in the repository in the sourceData directory)
5. If you don't need Oracle, then leave the input.conf for that settings as is.
6. copy the AdministrationDates.txt (in resource) to c:\temp\target\classes
7. run from c:/temp -> java -cp target\CreateIndividuals-1.0-SNAPSHOT.jar org.ppa.CreateIndividuals (nb java is free to download version 11 will do)