FROM golang:latest 
RUN go get github.com/bemasher/rtlamr
RUN go get github.com/bemasher/rtlamr-collect
RUN ls
RUN cd go/bin
CMD ["rtlamr -server=$SERVER | rtlamr-collect"]
