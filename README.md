# EIP validator

## Validation rules

### Mandatory fields

- eip
- title
- author
- type
- category
- status
- created

### Optional fields

- replaces
- requires

### Mandatory values

- `status` must be `Draft`, `Accepted`, `Final`, or `Deferred`

## Prerequisite

- ruby
- bundler (`gem install bundler`)

## Setup

```
cd eip_validator
bundle
```

## Usage

```ruby
ruby bin/eip_validator.rb "FILE_NAME_WITH_WILDCARD"
```

### Example

```
$  ruby bin/eip_validator.rb  "/Users/makoto/src/EIPs/EIPS/*[0-9].md"

/Users/makoto/src/EIPs/EIPS/eip-779.md is NOT valid:	 {:category=>["can't be blank"]}
/Users/makoto/src/EIPs/EIPS/eip-190.md raises error:	 unknown attribute 'Authors' for Validator.
/Users/makoto/src/EIPs/EIPS/eip-608.md is NOT valid:	 {:category=>["can't be blank"]}
/Users/makoto/src/EIPs/EIPS/eip-649.md raises error:	 unknown attribute 'Authors' for Validator.
/Users/makoto/src/EIPs/EIPS/eip-6.md raises error:	 unknown attribute 'layer' for Validator.
/Users/makoto/src/EIPs/EIPS/eip-607.md is NOT valid:	 {:category=>["can't be blank"]}
/Users/makoto/src/EIPs/EIPS/eip-606.md is NOT valid:	 {:category=>["can't be blank"]}
/Users/makoto/src/EIPs/EIPS/eip-158.md raises error:	 unknown attribute 'superseded-by' for Validator.
/Users/makoto/src/EIPs/EIPS/eip-8.md raises error:	 unknown attribute 'layer' for Validator.
/Users/makoto/src/EIPs/EIPS/eip-615.md raises error:	 unknown attribute 'edited' for Validator.
/Users/makoto/src/EIPs/EIPS/eip-1.md is NOT valid:	 {:category=>["can't be blank"], :status=>["is not included in the list"]}
/Users/makoto/src/EIPs/EIPS/eip-101.md is NOT valid:	 {:status=>["is not included in the list"]}
/Users/makoto/src/EIPs/EIPS/eip-4.md raises error:	 unknown attribute 'layer' for Validator.
total:50, valid:37, invalid:6, errors:7
	statuses: ["Draft", "Final", "Accepted"]
	types: ["Standards Track"]
	categories: ["Core", "ERC", "Interface", "Networking"]

total:50, valid:37, invalid:6, errors:7
```
