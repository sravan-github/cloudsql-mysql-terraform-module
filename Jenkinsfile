pipeline {
  //agent any
  agent {
  docker { 
            image 'sravangcpdocker/terraform:7'
            args '-u root:root'
        }
        }
  stages {
    stage('Hello') {
      steps {
        sh '''
            git clone https://github.com/sravan-github/cloudsql-mysql-terraform-module.git
            ls -ltr
            pwd
            export GOOGLE_APPLICATION_CREDENTIALS="./gcp-key.json"
            #terraform init
            #terraform plan
            #terraform apply --auto-approve
            '''
      }
    }
  }
  post {
        always {
        	cleanWs deleteDirs: true
        }
    }
}
