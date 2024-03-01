pipeline {
    agent any 
    tools {
        terraform 'tf'
    }

    stages {
        stage ('checkout') {
            steps {
                checkout scm
            }
        }
        stage ('init terraform') {
            steps {
                
                withCredentials([aws(credentialsId : 'aws_creds_dmaas')]) {
                    sh """
                        terraform init 
                        terraform plan
                        terraform apply -auto-approve
                    """
                }
            }
        }
    }
    post {
        alwys {
            archiveArtifacts artifacts: 'terraform.tfstate'
        }
    }
}

// pipeline {
//     agent any

//     environment {
//         CLASS = "jenkins_class"
//         NAME = "Mahmoud"
//         DOCKERHUB_CREDS = credentials("dockerhub_credentials")   
//     }
//     stages {
//         stage ('stage #1') {

//             agent {
//                 label "linux"
//             }
//             steps {
//                 sh 'echo "dockerhub_username = ${DOCKERHUB_CREDS_USR}\ndockerhub_passowrd is: ${DOCKERHUB_CREDS_PSW}" > gotted_env.txt'
//                 // sh 'echo "docker build nubmer is: ${env.JOB_NAME}" > "/home/jenkins/workspace/test_job/build_number.txt"'
//                 // sh 'echo "docker build nubmer is: ${env.JOB_NAME}" > /home/jenkins/workspace/test_job/build_number.txt'
//                 sh 'echo "${JOB_NAME}" > "/home/jenkins/workspace/${JOB_NAME}/job_name.txt"'
//                 echo "${BUILD_NUMBER}"
//             }
//         }

//         stage ('Stage #2') {
//             agent {
//                 label "jenkins_machine"
//             }

//             steps {
//                 sh 'echo "CLASS = $CLASS\nNAME = ${NAME}" > gotted_env_agent_2.txt'
//                 echo "${BUILD_NUMBER}"
//             }
//         }
//     }
   
// }