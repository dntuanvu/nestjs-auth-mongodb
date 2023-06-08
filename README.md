## Running the app

```bash
# development
$ npm start

# watch mode
$ npm run start:dev
```

```bash
# docker (to have a ready running application with database attached)
docker-compose build

docker-compose up
```

## Test

```bash
# unit tests
$ npm run test

# e2e tests
$ npm run test:e2e

# test coverage
$ npm run test:cov
```

# API Testing with Postman
## register new user
POST localhost:8080/auth/register

sample request body (JSON raw)
```bash
{
    "email": "dntuanvu1@gmail.com",
    "password": "P@ssw0rd123"
}
```

## if user already exists 
```bash
{
    "statusCode": 400,
    "message": "user already exists"
}
```

## login 
POST localhost:8080/auth/login

sample request body (x-www-form-urlencoded)
```bash
email=dntuanvu@gmail.com
password=P@ssword123
```

## Return success and a JWT token if username and password are correct
```bash
{
    "statusCode": 400,
    "message": "user already exists"
}
```

## Return fail if username and password are not matched
```bash
{
    "statusCode": 400,
    "message": "invalid credentials"
}
```

## A user has a maximum of 3 attempts within 5 minutes, otherwise, the user will be locked.
```bash
{
    "statusCode": 400,
    "message": "has reached maximum of 3 attempts within 5 minutes"
}
```

## Return fail if a user is locked
```bash
{
    "statusCode": 400,
    "message": "user is locked"
}
```

## Stay in touch

- Author - [DINH NGOC TUAN VU](dntuanvu@gmail.com)
- Website - [dntuanvu@gmail.com](https://www.linkedin.com/in/dntuanvu)