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

- `status` must be `Draft`, `Accepted`, `Final`,`Deferred`

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
ruby bin/eip_loader.rb "FILE_NAME_WITH_WILDCARD"
```

### Example

```
$ ruby bin/eip_loader.rb "/Users/makoto/src/EIPs/EIPS/*md"

/Users/makoto/src/EIPs/EIPS/eip-779.md is NOT valid:	 {:category=>["can't be blank"]}
/Users/makoto/src/EIPs/EIPS/eip-20-token-standard.md is NOT valid:	 {:eip=>["can't be blank"], :title=>["can't be blank"], :author=>["can't be blank"], :type=>["can't be blank"], :category=>["can't be blank"], :status=>["can't be blank", "is not included in the list"], :created=>["can't be blank"]}
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
/Users/makoto/src/EIPs/EIPS/new_light_client_protocol.md is NOT valid:	 {:eip=>["can't be blank"], :title=>["can't be blank"], :author=>["can't be blank"], :type=>["can't be blank"], :category=>["can't be blank"], :status=>["can't be blank", "is not included in the list"], :created=>["can't be blank"]}
/Users/makoto/src/EIPs/EIPS/eip-101.md is NOT valid:	 {:status=>["is not included in the list"]}
/Users/makoto/src/EIPs/EIPS/eip-4.md raises error:	 unknown attribute 'layer' for Validator.


total:52, valid:37, invalid:8, errors:7
```
