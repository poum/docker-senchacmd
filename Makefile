IMAGE=poum/senchacmd
VERSION=4.0.5.87

build: Dockerfile
	docker build -t $(IMAGE):$(VERSION) .

test:
	docker run --rm $(IMAGE):$(VERSION) help

tag: 
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):4.0.5
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):4.0
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):4

push: 
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):4.0.5
	docker push $(IMAGE):4.0
	docker push $(IMAGE):4
