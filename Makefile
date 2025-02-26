clean:
	rm -rf vendor/

test:
	TF_ACC=1 go test -v -cover ./...

vendor: clean
	go mod tidy && go mod vendor

.PHONY: clean test vendor
