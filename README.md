This repository contains the deployment package allowing to test the RDF QDAG system. This system relies on graph exploration and fragmentation in order to evaluation SPARQL queries. Various libraries and scripts are provided. Queries that integrated BGP, Wildcards, Order by and Group By are supported.

# Deployment steps: 
This deployment package is provided for Ubuntu 18.04 and Jdk 11. However, we will be happy to provide other packages for other systems.

## Update system packages:

`sudo apt-get update`

##Installing Packages: 

### Oracle JDK 11:
download manually the jdk-*_linux-x64_bin.tar.gz file from: [Oracle JDK 11](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html)

`sudo mkdir /var/cache/oracle-jdk11-installer-local/`

`sudo mv jdk-11.0.8_linux-x64_bin.tar.gz /var/cache/oracle-jdk11-installer-local/`

`sudo add-apt-repository ppa:linuxuprising/java`
 
`sudo apt-get update`

`sudo apt-get install oracle-java11-installer-local`


### Build tools

`sudo apt-get install git`

`sudo apt-get install gcc`

`sudo apt-get install g++`

`sudo apt-get install sqlite3`

`sudo apt-get install make `

`sudo apt-get install cmake`

### python 

`sudo apt install python3`

## Download the RDF QDAG deployment package

`git clone https://github.com/amesmoudi/RDF_QDAG.git`

## Load Data: 

`python3 rdf_loader.py rawdata/watdiv100k/watdiv100k bindata/watdiv100k`
* rawdata/watdiv100k/watdiv100k : the path of raw data
* data/watdiv100k : path of binary data

## Run queries: 
`java -jar -Djava.library.path=solibs/ gquery.jar bindata/watdiv100k/ queries/watdiv/gStore/S1.in`



