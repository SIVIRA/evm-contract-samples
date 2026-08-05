.PHONY: setup
setup: deps

.PHONY: deps
deps:
	pnpm install --frozen-lockfile

.PHONY: commit
commit:
	pnpm czg

.PHONY: clean
clean:
	pnpm hardhat clean

.PHONY: test
test:
	pnpm hardhat test $(APP_TEST_FLAGS)

.PHONY: build
build: clean
	pnpm hardhat build --no-tests
