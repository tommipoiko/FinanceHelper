build-eslint:
	docker build -t finhel-eslint -f Dockerfile.eslint .

eslint: build-eslint
	docker run --rm -v $(PWD)/frontend:/app/frontend finhel-eslint bash -c "cd frontend && ng lint --fix"
