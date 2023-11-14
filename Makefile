.PHONY: all
all: clean build-avs build-keys

.PHONY: build-avs
build-avs:
	@echo "\n🛠 Building node...\n"
	cd cmd/avs && go build -o ../../dist/avs
	@echo "\n✅ Done.\n"

.PHONY: build-keys
build-keys:
	@echo "\n🛠 Building node keys...\n"
	cd cmd/keys && go build -o ../../dist/avs-keys
	@echo "\n✅ Done.\n"

.PHONY: clean
clean:
	@echo "\n🧹 Cleaning...\n"
	rm -rf dist
	@echo "\n✅ Done.\n"

.PHONY: setup
setup:
	@echo "\n📥 Downloading and extracting runtime...\n"
	mkdir -p /tmp/runtime
	wget -O /tmp/blockless-runtime.tar.gz https://github.com/blocklessnetwork/runtime/releases/download/v0.3.1/blockless-runtime.linux-latest.x86_64.tar.gz
	tar -xzf /tmp/blockless-runtime.tar.gz -C /tmp/runtime
	@echo "\n✅ Done.\n"