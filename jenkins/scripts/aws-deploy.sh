aws ecs create-cluster --cluster-name ${CLUSTER_NAME} --region ap-southeast-2

aws ecs register-task-definition --cli-input-json file://fargate-task.json --region ap-southeast-2

aws ecs list-task-definitions --region ap-southeast-2

aws ecs create-service --region ap-southeast-2 --cluster ${CLUSTER_NAME} --service-name fargate-service --task-definition cgiprofessionalnetcoreservices --desired-count 1 --launch-type "FARGATE" --network-configuration "awsvpcConfiguration={subnets=[subnet-02963e275ea21ab0b],securityGroups=[sg-04397496595792076],assignPublicIp=ENABLED}"

