Testing Github GraphQL API using Ruby

## Usage

```ruby
ghc = GithubClient.new(ENV['GPA_TOKEN'])
query_string = "query { viewer { login }}"
puts ghc.request(query_string)
```
