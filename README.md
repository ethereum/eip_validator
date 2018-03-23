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
- layer

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
/Users/makoto/src/EIPs/EIPS/eip-607.md is NOT valid:	 {:category=>["can't be blank"]}
/Users/makoto/src/EIPs/EIPS/eip-606.md is NOT valid:	 {:category=>["can't be blank"]}
/Users/makoto/src/EIPs/EIPS/eip-158.md raises error:	 unknown attribute 'superseded-by' for Validator.
/Users/makoto/src/EIPs/EIPS/eip-8.md is NOT valid:	 {:category=>["can't be blank"]}
/Users/makoto/src/EIPs/EIPS/eip-615.md raises error:	 unknown attribute 'edited' for Validator.
/Users/makoto/src/EIPs/EIPS/eip-1.md is NOT valid:	 {:category=>["can't be blank"], :status=>["is not included in the list"]}
/Users/makoto/src/EIPs/EIPS/eip-101.md is NOT valid:	 {:status=>["is not included in the list"]}
/Users/makoto/src/EIPs/EIPS/eip-4.md is NOT valid:	 {:category=>["can't be blank"]}


total:50, valid:38, invalid:8, errors:4
	statuses: [["Final", 27], ["Draft", 15], ["Accepted", 2], ["Active", 2]]
	types: [["Meta", 5], ["Standards Track", 40], ["Process", 1]]
	categories: [[nil, 7], ["Core", 22], ["ERC", 10], ["Interface", 5], ["Networking", 2]]
	layers: [[nil, 43], ["Applications", 1], ["Networking", 1], ["Process", 1]]
```
