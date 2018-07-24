# README

## Usage

This service counts words posted in JSON and returns the total words and each unique word and it's frequency.

`curl --basic --user 'bob' -k -H 'Content-Type: application/json' -X POST --data '{"words": "Hello World!"}' https://198.199.109.116/api/v1/count`

## Testing stuff

echo service (responds with body of the request)

`curl --basic --user 'bob' -k -H 'Content-Type: application/json' -X POST --data '{"words": "Hello World!"}' https://198.199.109.116/api/v1/echo`

hello world service (prints Hello World!)

`curl --basic --user 'bob' -k -H 'Content-Type: application/json' https://198.199.109.116/api/v1/hello`

## Security

The SSL cert is from an unknown CA but adding the certbot Ansible role would remove the validation error. Validation with certbot also requires valid DNS so that could be a thing in the playbook too.

The endpoint uses HTTP Basic Auth. There are better ways to do authentication.

The web server listens on port 80 but doesn't really do anything. The API service only listens on the HTTPS port.

## Development

Install Ruby 2.4.4

```
bundle install
./bin/rails server
```

## Deployment

Requires Ansible 2.6.1

Check in the `deploy` directory. The script `./run.sh` will deploy to a server specified in `deploy/hosts`