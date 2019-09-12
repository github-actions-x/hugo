FROM alpine:3.10

LABEL version="1.0.0"
LABEL repository="https://github.com/github-actions-x/hugo"
LABEL homepage="https://github.com/github-actions-x/hugo"
LABEL maintainer="Ruslan Nasonov <rus.nasonov@gmail.com>"

LABEL com.github.actions.name="Build Hugo Site"
LABEL com.github.actions.description="Build you site with Hugo and Github Actions"
LABEL com.github.actions.icon="settings"
LABEL com.github.actions.color="green"
COPY LICENSE README.md /

RUN apk --update --no-cache add hugo

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]