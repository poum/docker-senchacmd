IMAGE=poum/senchacmd
VERSION=6.5.2

build: Dockerfile
	docker build -t $(IMAGE):$(VERSION) .

test:
	docker run --rm $(IMAGE):$(VERSION) help

tag: 
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):6.5.2.15
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):6.5
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):latest

push: 
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):6.5
	docker push $(IMAGE):latest
