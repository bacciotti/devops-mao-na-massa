deploy-dev:
	@docker build -t my-apache-server .
	@docker run -d -p 8080:80 --name my-apache-container my-apache-server

