# afilichkin/flink-k8s-with-submit-job: Flink Docker image that includes submit job(fat jar) step.

We have two K8s deployment:JobManager (JM) and TaskManager (TM)

When we start JM docker we also submit the FLink job.

Flink job is one for Flink cluster. 

You can use afilichkin/flink-k8s-with-submit-job in jobmanager-deployment.yaml file

docker-entrypoint-custom.sh has only one change:

    
    #Customization start
    #fix for https://issues.apache.org/jira/browse/FLINK-9937
    echo " 127.0.0.1 ${JOB_MANAGER_RPC_ADDRESS}" >> /etc/hosts
   
    echo "Submit flink job in background"
    exec   /submit-flink-job.sh &
    #Customization end


# flink-k8s: Flink image that can work with Kubernetes.
Flink image for Kubernetes that fixes Jobmanage connection issue
https://issues.apache.org/jira/browse/FLINK-9937

You can use afilichkin/flink-k8s in jobmanager-deployment.yaml file

docker-entrypoint-custom.sh has only one change:
echo " 127.0.0.1 ${JOB_MANAGER_RPC_ADDRESS}" >> /etc/hosts
