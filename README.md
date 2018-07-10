# EIP validator

## Validation rules

### Mandatory fields

- eip
- title
- author
- type
- category (conditional on type)
- status
- created

### Optional fields

- replaces
- requires
- layer

### Mandatory values

- `status` must be `Draft`, `Accepted`, `Final`, `Deferred`, `Last Call` or `WIP`

## Prerequisite

- ruby

## Setup

```
gem install eip_validator
```

## Usage (command line)

```ruby
eip_validator INPUT_FILES
```

## Usage (as a lib)

```ruby
require 'eip_validator

EipValidator::Runner.run 
```

### Example

```
$eip_validator  ~/src/EIPs/EIPS/*[0-9].md

Warning: /Users/makoto/src/EIPs/EIPS/eip-158.md 	 unknown attribute 'superseded-by' for EipValidator::Validator.
Warning: /Users/makoto/src/EIPs/EIPS/eip-615.md 	 unknown attribute 'edited' for EipValidator::Validator.


total:51, valid:49, invalid:0, errors:2
	statuses: [["Final", 29], ["Draft", 17], ["Accepted", 2], ["Active", 1]]
	types: [["Meta", 6], ["Standards Track", 42], ["Standard Track", 1]]
	categories: [[nil, 6], ["Core", 23], ["ERC", 11], ["Interface", 5], ["Networking", 4]]
	layers: [[nil, 47], ["Applications", 1], ["Process", 1]]

```

## Running tests

```
bundle exec rspec
```

## Releasing new gem

```
gem bump --version patch|minor|major
bundle exec rake release
```
