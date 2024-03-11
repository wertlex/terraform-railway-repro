FROM ubuntu

WORKDIR /app
COPY ./printenv_loop.sh .
RUN chmod +x printenv_loop.sh
CMD ["./printenv_loop.sh"]
