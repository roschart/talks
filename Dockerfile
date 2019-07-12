FROM golang:1.12.7
WORKDIR /talk
RUN go get golang.org/x/tools/cmd/present
RUN go install golang.org/x/tools/cmd/present 
CMD [ "present", "-http", "0.0.0.0:3999" ]