FROM golang:latest 
RUN go get github.com/bemasher/rtlamr
RUN go get github.com/bemasher/rtlamr-collect
RUN ls -lah
RUN chmod a+x ./rtlamr*
RUN cd bin
CMD ["./rtlamr -server=$RTLSERVER | ./rtlamr-collect"]
