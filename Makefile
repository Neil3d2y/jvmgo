# Define the Go binary
GO := go

# Define the directories to build
DIRS := ch01

# Build target
build: 
	@for dir in $(DIRS); do \
		$(GO) build -o bin/$$dir $$dir/*.go; \
	done;

# Clean target 
clean: 
	@rm -rf bin/*

.PHONY: all build clean
