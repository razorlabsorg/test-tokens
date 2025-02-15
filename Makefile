# Conditionally include .env file if not running in CI/CD environment
ifndef GITHUB_ACTIONS
  -include .env
endif

# default env values
APTOS_NETWORK ?= custom
ARTIFACTS_LEVEL ?= sparse
DEFAULT_FUND_AMOUNT ?= 100000000
DEFAULT_FUNDER_PRIVATE_KEY ?= 0x0
DEV_ACCOUNT ?= 0xfaded96b72a03b2ed9e2b2dc0bef0642d63e07fd7b1eeeac047188eb1ef34dd6
TEST_TOKEN_ADDRESS ?= 0xb4449b14f25133bf00a18e898ce6a29e70c408cf07673ae7289d547cc6851f9e

# ============================= CLEAN ============================= #
clean:
	rm -rf build

# ===================== PACKAGE AMM ===================== #

compile:
	movement move compile \
	--save-metadata \
	--included-artifacts sparse \
	--named-addresses "razor_test_tokens=$(DEV_ACCOUNT)"

test:
	movement move test \
	--named-addresses "razor_test_tokens=$(DEV_ACCOUNT)" \
	--coverage

publish-testnet:
	movement move create-object-and-publish-package \
	--included-artifacts sparse \
	--named-addresses "razor_test_tokens=$(DEV_ACCOUNT)" \
	--address-name razor_test_tokens

publish-mainnet:
	movement move create-object-and-publish-package \
	--included-artifacts sparse \
	--named-addresses "razor_test_tokens=$(DEV_ACCOUNT)" \
	--address-name razor_test_tokens \
	--profile mainnet

upgrade-testnet:
	movement move upgrade-object-package \
	--included-artifacts sparse \
	--named-addresses "razor_test_tokens=$(DEV_ACCOUNT)" \
	--object-address $(TEST_TOKEN_ADDRESS)

upgrade-mainnet:
	movement move upgrade-object-package \
	--included-artifacts sparse \
	--named-addresses "razor_test_tokens=$(DEV_ACCOUNT)" \
	--object-address $(TEST_TOKEN_ADDRESS) \
	--profile mainnet

docs:
	movement move document \
	--named-addresses "razor_test_tokens=$(TEST_TOKEN_ADDRESS)"
