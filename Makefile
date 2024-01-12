IMAGE_NAME = weasyprint-image

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -it -p 8080:8080 $(IMAGE_NAME)
