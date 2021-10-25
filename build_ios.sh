node('ci.tourdefarm.com'){
	environment {
		after-gitclone = "/tmp/github/julius/mobile-app-demo1/after-gitclone.sh"
	}
	stage('For iOS') {
		sh '''echo iOS build only'''
	}
	stage('Preparing: documents, data, directories, ') {
		sh '''echo $(pwd)'''
	}
	stage('Prepare context & environment') {
		sh "sudo chmod 755 $after-gitclone"
		sh "$after-gitclone"
	}
	stage('Checkout source code and related tests') {
		sh '''echo stage1 steps!'''
	}
	stage('Validate environment') {
		sh '''echo stage1 steps!!'''
	}
	stage('Setup database') {
		sh '''echo stage1 steps!!'''
	}
	stage('Run tests') {
		sh '''echo stage3 steps!!'''
	}
	stage('Cleanup') {
		sh '''echo cleaning up...!!!!'''
	}
	stage('Send result') {
		sh '''echo sending result...!!!!'''
	}
}