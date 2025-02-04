module github.com/grafana/synthetic-monitoring-agent

go 1.16

require (
	github.com/go-kit/kit v0.10.0
	github.com/go-logfmt/logfmt v0.5.0
	github.com/gogo/googleapis v1.4.1
	github.com/gogo/protobuf v1.3.2
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/golang/snappy v0.0.4
	github.com/grafana/loki v1.6.1
	github.com/miekg/dns v1.1.43
	github.com/mmcloughlin/geohash v0.10.0
	github.com/mwitkow/go-conntrack v0.0.0-20190716064945-2f068394615f
	github.com/pkg/errors v0.9.1
	github.com/prometheus/blackbox_exporter v0.19.0
	github.com/prometheus/client_golang v1.11.0
	github.com/prometheus/client_model v0.2.0
	github.com/prometheus/common v0.29.0
	// This is actually version v2.16.0
	//
	// Without this, you get:
	//
	// require github.com/prometheus/prometheus: version "v2.16.0" invalid: module contains a go.mod file, so major version must be compatible: should be v0 or v1, not v2
	//
	// If you add the +incompatible bit that the error message hints
	// at, you get a different error (see below).
	github.com/prometheus/prometheus v1.8.2-0.20200727090838-6f296594a852
	github.com/rs/zerolog v1.23.0
	github.com/stretchr/testify v1.7.0
	golang.org/x/net v0.0.0-20210525063256-abc453219eb5
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/grpc v1.39.0
)

replace github.com/Azure/azure-sdk-for-go => github.com/Azure/azure-sdk-for-go v36.2.0+incompatible

replace github.com/Azure/go-autorest => github.com/Azure/go-autorest v13.3.0+incompatible

// Without the following replace, you get an error like
//
//     k8s.io/client-go@v12.0.0+incompatible: invalid version: +incompatible suffix not allowed: module contains a go.mod file, so semantic import versioning is required
//
// This is telling you that you cannot have a version 12.0.0 and tag
// that as "incompatible", that you should be calling the module
// something like "k8s.io/client-go/v12".
//
// 78d2af792bab is the commit tagged as v12.0.0.

replace k8s.io/client-go => k8s.io/client-go v0.0.0-20190620085101-78d2af792bab
