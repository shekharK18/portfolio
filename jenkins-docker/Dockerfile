FROM jenkins/jenkins:lts

USER root

# Install Docker CLI
RUN apt-get update && apt-get install -y docker.io

# Give Jenkins user access to Docker
RUN usermod -aG docker jenkins

USER jenkins
