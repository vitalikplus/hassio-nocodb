FROM nocodb/nocodb:latest

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/usr/src/appEntry/start.sh"]

