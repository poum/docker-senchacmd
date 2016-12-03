IMAGE=poum/senchacmd
VERSION=6.0.2

build: Dockerfile
	docker build -t $(IMAGE):$(VERSION) .

test:
	docker run --rm $(IMAGE):$(VERSION) help

tag: 
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):6.0
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):$(VERSION).14

push: 
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):6.0
	docker push $(IMAGE):$(VERSION).14
