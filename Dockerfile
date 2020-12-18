FROM alpine:latest

WORKDIR /opt/app
COPY requirements.txt /opt/app/requirements.txt

RUN apk add --update \
		git \
		gcc \
		bash \
		openssh \
		python2 \
		py-setuptools \
		py-pip \
		python2-dev \
		musl-dev \
		libffi-dev \
		openssl-dev

RUN pip install -U setuptools
RUN pip install -r requirements.txt

ENTRYPOINT ["ansible"]
