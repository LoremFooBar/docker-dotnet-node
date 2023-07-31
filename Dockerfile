FROM mcr.microsoft.com/dotnet/sdk:6.0-jammy

# install node 
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

# install yarn
RUN corepack enable && corepack prepare yarn@stable --activate

# update git
RUN apt-get install -y software-properties-common \
    && add-apt-repository ppa:git-core/ppa -y \
    && apt-get update \
    && apt-get upgrade -y git

# delete apt cache
RUN rm -rf /var/lib/apt/lists/*