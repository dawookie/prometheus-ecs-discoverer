FROM bitnami/python:3.8-prod

LABEL MAINTAINER="tim.schwenke+trallnag@protonmail.ch"

ARG PYPI_VERSION

RUN until pip install --no-cache-dir "prometheus_ecs_discoverer==${PYPI_VERSION}"; do sleep 15; done

CMD [ "python", "-m", "prometheus_ecs_discoverer.run" ]
