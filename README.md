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

- `status` must be `Draft`, `Accepted`, `Final`, or `Deferred`

## Prerequisite

- ruby
- bundler (`gem install bundler`)

## Usage

```
gem eip_validator
bundle
```

## Usage

```ruby
eip_validator "FILE_NAME_WITH_WILDCARD"
```

### Example

```
$eip_validator  "/Users/makoto/src/EIPs/EIPS/*[0-9].md"

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
