#!/bin/bash
age=$(date --date="-30 days" +%Y-%m-%d)
now=$(date --date="-0 days" +%Y-%m-%d)
diff=$(($now - $age))
aws ec2 describe-instances --region us-east-1 --output table --query 'Reservations[].Instances[?LaunchTime>=`'$age'`][].[InstanceId, InstanceType, State.Name, LaunchTime,`'$now'`,`'$age'`,`'$diff'`]'
