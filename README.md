# RAILS JWT FROM SCRATCH

## Sign in

You can use email and password in the seed data or create it yourself.

For example, I have a user with email "admin@example.com" and password "123456".

### CURL

```shell
curl -v --data "user[email]=admin@example.com&user[password]=123456" http://localhost:3000/api/v1/auth
```

Use the token value for later requests

## Get the current weather information for a location

You must sign in to get the information.

You can use a location id from the seed data or create it yourself.

For example, I have a location with id 1.

### CURL

```shell
curl -v -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOjEsImV4cCI6MTY0MDg3NTI5MX0.bCeq-ow4O2k-sq36hrRN0WH7QuxAtSWMP2xfzycrcsI" http://localhost:3000/api/v1/locations/1.json
```
