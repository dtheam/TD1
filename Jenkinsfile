pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Étape de Build'
                sh 'echo "Compilation du code en cours..."'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Étape de Test'
                sh 'echo "Exécution des tests unitaires..."'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Étape de Déploiement'
                sh 'echo "Déploiement de l application sur l environnement de test..."'
            }
        }
    }
    
    post {
        success {
            echo 'Le pipeline sest déroulé avec succès !'
        }
        failure {
            echo 'Le pipeline a échoué à une étape.'
        }
    }
}