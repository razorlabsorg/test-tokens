# Conditionally include .env file if not running in CI/CD environment
ifndef GITHUB_ACTIONS
  -include .env
endif

# default env values
APTOS_NETWORK ?= custom
ARTIFACTS_LEVEL ?= sparse
DEFAULT_FUND_AMOUNT ?= 100000000
DEFAULT_FUNDER_PRIVATE_KEY ?= 0x0
DEV_ACCOUNT ?= 0x0133e0a39bdfcf5bbde2b1f4def9f36b2842693345ccc49d6aa6f2ee8c7ccf9a
TEST_TOKEN_ADDRESS ?= 0x4b4c2e725e1088a755c1ae6061fc04e16a094b1a09b275e31aa919da3620eb78

# ============================= CLEAN ============================= #
clean:
	rm -rf build

# ===================== PACKAGE AMM ===================== #

compile:
	aptos move compile \
	--save-metadata \
	--included-artifacts sparse \
	--named-addresses "razor_test_tokens=$(DEV_ACCOUNT)"

test:
	aptos move test \
	--named-addresses "razor_test_tokens=$(DEV_ACCOUNT)" \
	--coverage

publish:
	aptos move deploy-object \
	--included-artifacts sparse \
	--named-addresses "razor_test_tokens=$(DEV_ACCOUNT)" \
	--address-name razor_test_tokens

upgrade:
	aptos move upgrade-object \
	--address-name razor_test_tokens \
	--included-artifacts sparse \
	--named-addresses "razor_test_tokens=$(DEV_ACCOUNT)" \
	--object-address $(TEST_TOKEN_ADDRESS)

docs:
	aptos move document \
	--named-addresses "razor_test_tokens=$(TEST_TOKEN_ADDRESS)"
