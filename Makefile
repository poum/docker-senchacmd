IMAGE=poum/senchacmd
VERSION=5.1.3.61

build: Dockerfile
	docker build -t $(IMAGE):$(VERSION) .

test:
	docker run --rm $(IMAGE):$(VERSION) help

tag: 
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):5.1.3
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):5.1
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):5

push: 
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):5.1.3
	docker push $(IMAGE):5.1
	docker push $(IMAGE):5
