IMAGE=poum/senchacmd
VERSION=6.5.0

build: Dockerfile
	docker build -t $(IMAGE):$(VERSION) .

test:
	docker run --rm $(IMAGE):$(VERSION) help

tag: 
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):6.5
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):$(VERSION).180
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):latest

push: 
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):6.5
	docker push $(IMAGE):$(VERSION).180
	docker push $(IMAGE):latest
