pipeline {
    agent none

    environment {
        CLASS = "jenkins_class"
        NAME = "Mahmoud"
        DOCKERHUB_CREDS = credentials("dockerhub_credentials")   
    }
    stages {
        stage ('stage #1') {

            agent {
                label "linux"
            }
            steps {
                sh 'echo "dockerhub_username = ${DOCKERHUB_CREDS_USR}\ndockerhub_passowrd is: ${DOCKERHUB_CREDS_PSW}" > gotted_env.txt'
                // sh 'echo "docker build nubmer is: ${env.JOB_NAME}" > "/home/jenkins/workspace/test_job/build_number.txt"'
                // sh 'echo "docker build nubmer is: ${env.JOB_NAME}" > /home/jenkins/workspace/test_job/build_number.txt'
                sh 'echo "${JOB_NAME}" > "/home/jenkins/workspace/${JOB_NAME}/job_name.txt"'
            }
        }

        stage ('Stage #2') {
            agent {
                label "jenkins_machine"
            }

            steps {
                sh 'echo "CLASS = $CLASS\nNAME =${NAME}" > gotted_env_agent_2.txt'
            }
        }
    }
   
}