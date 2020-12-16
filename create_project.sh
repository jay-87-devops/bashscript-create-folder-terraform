#!/bin/bash

#
#input project name
#
echo "Input project name"
read name

#
#Create folder and file in modules
#

mkdir modules/$name
mkdir modules/$name/{cdn,ecs,instances,load_balancers,networks,rds,redis,s3,sqs}
touch modules/$name/cdn/{cloudtrail.tf,main.tf,output.tf,route53.tf,variable.tf}
touch modules/$name/ecs/{aim.tf,variable.tf,kms.tf,main.tf}
touch modules/$name/instances/{bastion.tf,variable.tf}
touch modules/$name/load_balancers/{acm.tf,route53.tf,main.tf,variable.tf,output.tf}
touch modules/$name/networks/{vpc.tf,sg.tf,variable.tf,output.tf}
touch modules/$name/rds/{main.tf,variable.tf,vesions.tf}
touch modules/$name/redis/{main.tf,variable.tf}
touch modules/$name/s3/{iam.tf,main.tf,variable.tf,output.tf}
touch modules/$name/sqs/{kms.tf,main.tf,variable.tf,output.tf}
touch modules/$name/{main.tf,variable.tf}

#
#Create foleder và file in workspaces
#

mkdir workspaces/$name-test
touch workspaces/$name-test/{main.tf,variable.tf,acm.tf,aws.tf,cloudflare.tf,ecr.tf,global.tf,locals.tf,remote.tf,route53.tf,version.tf}
