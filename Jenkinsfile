pipeline {
    agent { label "robot" }

    options {
        buildDiscarder logRotator(numToKeepStr: "10")
    }

    stages {
        stage("Update robot") {
            steps {
                sh script: "python3 -m pip install --upgrade robotframework"
            }
        }

        stage("Run Robot") {
            steps {
                sh returnStatus: true, script: "robot --version"
                sh script: "robot --nostatusrc simple.robot", returnStatus: true
            }
            post {
                cleanup {
                    robot(outputPath: ".",
                        passThreshold: 80.0,
                        unstableThreshold: 70.0,
                        disableArchiveOutput: true,
                        logFileName: "log.html",
                        reportFileName: "report.html")
                }
            }
        }
    }

    post {
        always {
            influxDbPublisher(selectedTarget: "Influxdb 1.x")
            influxDbPublisher(selectedTarget: "Influxdb 2.x")
        }
        cleanup {
            cleanWs()
        }
    }
}
