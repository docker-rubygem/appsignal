FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.1.0.beta.1

RUN gem install appsignal --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["appsignal"]
CMD ["--help"]
