# CV Generator

CV Generator is a simple app to rapidly edit and format your CV.

## Setup Development Environment
1. Start development environment
    ```shell
    docker compose up dev
    ```
2. Setup application's environment
    ```shell
    docker compose exec dev bin/setup
    ```
3. Start development server
    1. Start bash session inside the container
        ```shell
        docker compose exec dev /bin/bash
        ```
    2. In the bash session run
       ```shell
       rails s -b 0.0.0.0
       ```
4. Start javascript builds
    ```shell
    docker exec dev yarn build --watch
    ```
5. Start sass builds
    ```shell
    docker exec dev yarn build:css --watch
    ```
