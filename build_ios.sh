node('ci.tourdefarm.com'){
	stage('For iOS') {
		sh '''echo iOS build only'''
	}
	stage('Preparing: documents, data, directories, ') {
		sh '''echo stage2 steps!!'''
	}
	stage('Prepare context & environment') {
		sh '/tmp/github/julius/mobile-app-demo1/after-gitclone.sh'
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