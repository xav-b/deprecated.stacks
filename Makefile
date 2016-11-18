# vim:ft=make

.PHONY: doc
doc: reset_state copy_content
	docpress build

.PHONY: reset_state
reset_state:
	command -v docpress > /dev/null || npm install docpress
	test -d ./docs && rm -rf ./docs || true

.PHONY: copy_content
copy_content:
	mkdir ./docs
	cp ./toc.md docs/README.md
	cp ./writings.md ./docs
	cp ./notes/*.md ./docs/
	cp ./vault/readme.md ./docs/vault.md
	cp ./flarum/readme.md ./docs/flarum.md
	cp ./electron/readme.md ./docs/electron.md
	cp ./grpc/readme.md ./docs/grpc.md
	cp ./kafka/readme.md ./docs/kafka.md
	cp ./tensorflow/readme.md ./docs/tensorflow.md
	cp ./rmarkdown/readme.md ./docs/rmarkdown.md
	cp ./serverless/readme.md ./docs/serverless.md
	cp ./serverless/fission/readme.md ./docs/fission.md
	cp ./zeit/readme.md ./docs/zeit.md
	cp ./serverless/readme.md ./docs/serverless.md
	cp ./serverless/fission/readme.md ./docs/fission.md

