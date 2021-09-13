FROM testcafe/testcafe

# Install Allure
USER root
RUN apk update && apk add curl && \
    curl -L https://github.com/allure-framework/allurectl/releases/latest/download/allurectl_linux_386 > ./allurectl && \
    chmod +x ./allurectl

ENTRYPOINT ["/usr/bin/env"]