IMAGE=poum/senchacmd
VERSION=6.1.3

build: Dockerfile
	docker build -t $(IMAGE):$(VERSION) .

test:
	docker run --rm $(IMAGE):$(VERSION) help

tag: 
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):6.1
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):$(VERSION).42
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):latest

push: 
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):6.1
	docker push $(IMAGE):$(VERSION).42
	docker push $(IMAGE):latest
