#! /bin/bash

## TEAR DOWN CONTAINERS
docker container rm dn1.example -f
docker container rm nn.example -f
docker container rm kerberos.example -f
docker container rm datapopulator.example -f

## TEAR DOWN IMAGES
docker rmi hadoopkerberos_dn1 --force
docker rmi hadoopkerberos_nn --force
docker rmi hadoopkerberos_kerberos --force
docker rmi hadoopkerberos_datapopulator --force

## TEAR DOWN VOLUME (THIS IS IMPORTANT FOR NEW KEYTABS)
docker volume rm hadoopkerberos_server-keytab