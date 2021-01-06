FROM fluent/fluentd:v1.3.2

RUN apk add --update --virtual .build-deps \
        sudo build-base ruby-dev \
 && sudo gem install fluent-plugin-cloudwatch-logs \
 && sudo gem sources --clear-all \
 && apk del .build-deps \
 && rm -rf /var/cache/apk/* \
           /home/fluent/.gem/ruby/*/cache/*.gem