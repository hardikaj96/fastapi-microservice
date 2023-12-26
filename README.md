# FASTAPI DOCKERCOMPOSE


## Table of Contents
- [Overview](#overview)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
  - [Run Services](#run-services)
  - [Run Tests](#run-tests)
  - [Access Shell](#access-shell)

## Overview

The project is organized into only one app

This app is orchestrated using Docker Compose.

## Getting Started

### Prerequisites

Make sure you have the following installed:

- make
- git
- docker
- docker-compose
- poetry

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/hardikaj96/fastapi-microservice.git
    ```

2. Navigate to the project directory:

    ```bash
    cd fastapi-microservice
    ```

3. Build the Docker images:

    ```bash
    make build
    ```

## Usage

### Run Services

To run the services:

```bash
make up

```
To stop the services:

```bash
make down
```

### Run Tests

```bash
make test
```

### Access Shell

To access the shell of Main Service:

```bash
make shell
```