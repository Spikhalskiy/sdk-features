module go.temporal.io/features/features

go 1.18

require (
	github.com/gogo/protobuf v1.3.2
	github.com/google/uuid v1.3.0
	github.com/uber-go/tally/v4 v4.1.1
	go.temporal.io/api v1.13.0
	go.temporal.io/sdk v1.19.0
	go.temporal.io/features/harness/go v1.0.0
	go.temporal.io/sdk/contrib/tally v0.1.0
	golang.org/x/mod v0.6.0-dev.0.20220419223038-86c51ed26bb4
	google.golang.org/grpc v1.50.1
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/facebookgo/clock v0.0.0-20150410010913-600d898af40a // indirect
	github.com/gogo/googleapis v1.4.1 // indirect
	github.com/gogo/status v1.1.1 // indirect
	github.com/golang/mock v1.6.0 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.3.0 // indirect
	github.com/pborman/uuid v1.2.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/robfig/cron v1.2.0 // indirect
	github.com/stretchr/objx v0.5.0 // indirect
	github.com/stretchr/testify v1.8.1 // indirect
	github.com/twmb/murmur3 v1.1.6 // indirect
	go.uber.org/atomic v1.9.0 // indirect
	go.uber.org/multierr v1.7.0 // indirect
	go.uber.org/zap v1.19.1 // indirect
	golang.org/x/net v0.1.0 // indirect
	golang.org/x/sys v0.1.0 // indirect
	golang.org/x/text v0.4.0 // indirect
	golang.org/x/time v0.0.0-20210723032227-1f47c861a9ac // indirect
	google.golang.org/genproto v0.0.0-20221027153422-115e99e71e1c // indirect
	google.golang.org/protobuf v1.28.1 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace go.temporal.io/features/harness/go => ../harness/go
