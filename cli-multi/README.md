# GitHub Action for the Docker CLI

The GitHub Action for [Docker](https://docker.com/) wraps the Docker CLI to enable Docker commands to be run. This can be used to build, tag, push and other related tasks inside of an Action.

`cli-multi` allows multiple Docker CLI runs within one Action.

To log into a Docker Registry, we recommend using the [Docker Login](../login) Action.

## Usage

```
action "build" {
  uses = "actions/docker/cli-multi@master"
  args = ["build -t user/repo .", "tag user/repo user/repo:tag"]
}
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE.md).

Container images built with this project include third party materials. See [THIRD_PARTY_NOTICE.md](THIRD_PARTY_NOTICE.md) for details.
