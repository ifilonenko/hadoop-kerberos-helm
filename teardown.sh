#! /bin/bash

## TEAR DOWN PVS
helm delete hdfs-pvs --purge

## TEAR DOWN PODS
helm delete hdfs-pods --purge

## BRING BACK PVS
helm install -n hdfs-pvs pv 

## BRING BACK PODS
helm install -n hdfs-pods deployments