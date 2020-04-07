IMAGE=poum/senchacmd
VERSION=7.2.0

build: Dockerfile
	docker build -t $(IMAGE):$(VERSION) .

test:
	docker run --rm $(IMAGE):$(VERSION) help

tag: 
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):7.2.0.56
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):7.2
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):latest

push: 
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):7.2
	docker push $(IMAGE):latest
