pipeline {
    agent none

    environment {
        LOG_FILE_PATH="logs.txt"
    }

    stages {
        stage('Lint') {
            agent { label 'k8s-0' }

            steps {
                sh'''#!/bin/bash
                    echo "$(hostname) $(date) : Running in $(pwd)" > ${LOG_FILE_PATH}
                    tox -e lint
                '''

            }
        }

        stage('Unit') {
            agent { label 'k8s-0' }

            steps {
                sh'''#!/bin/bash
                    echo "$(hostname) $(date) : Running in $(pwd)" > ${LOG_FILE_PATH}
                    tox -e unit
                '''

            }
        }
    }
}