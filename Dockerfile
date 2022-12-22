FROM mcr.microsoft.com/dotnet/sdk:7.0

# install node 
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    # install yarn
    && corepack enable \
    && corepack prepare yarn@stable --activate \
    # delete apt cache
    && rm -rf /var/lib/apt/lists/*