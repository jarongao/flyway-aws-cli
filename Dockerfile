FROM flyway/flyway:11.20.0

RUN apt-get update -y && \
	apt-get install -y \
		jq \
		ssh \
		less \
		unzip \
	&& curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.15.11.zip" -o "awscliv2.zip" \
	&& unzip awscliv2.zip \
	&& ./aws/install