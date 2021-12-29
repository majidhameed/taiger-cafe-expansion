#!/usr/bin/env bash
orderList=$1
custOrder=$2
orderDate=$3
grep -i $custOrder $orderList | grep $orderDate | sort | head -n 3