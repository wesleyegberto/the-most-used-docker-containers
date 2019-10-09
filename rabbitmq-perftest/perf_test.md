# RabbitMQ PerfTest

Docs:

* https://rabbitmq.github.io/rabbitmq-perf-test/stable/htmlsingle/
* 'uri': 'amqp://rabbitmq_uri'

## Usage

Params with default values:

* Test id: `--id "my-test"`
* Host:
  * `-h amqp://localhost`
  * `--uri amqp://localhost`
* Num of publishers:
  * `-x 1`
  * `--producers 1`
* Num of consumers:
  * `-y 1`
  * `--consumers 1`
* Name of queue: `-u "my-test-queue"`
* Message size in bytes: `-s 12`
* Auto ACK: `-a`
* Durable queues: `-f persistent`

* Limit the number of consumed messages: `-D 100000`
* Limit the number of published messages: `-C 100000`
* Test with N messages: `-pmessages 100000`
* Test durint N seconds: `-z 30`

### Customising throughput

* QoS: `-q 100`
* Batch ACK: `--multi-ack-every 100`
* Limit publish rate: `--rate 5000`
* Limit consumer rate: `--consumer-rate 2000`

### Customising queue

* Queue args:
  * `--queue-arguments x-max-length=10,x-dead-letter-exchange=some.exchange.name`

### Customising message

* Message with properties:
  * `--message-properties priority=5,timestamp=2007-12-03T10:15:30+01:00`
* Message with headers:
  * `--message-properties priority=10,header1=value1,header2=value2`
* Message using file:
  * `--body content1.json,content2.json --body-content-type application/json`
* Message with random JSON:
  * `--json-body --size 16000`

## Examples

* Run with default configs: `-x 1 -y 1 -a -s 12`
  * `bin/runjava com.rabbitmq.perf.PerfTest --uri amqp://rabbitmq`
  * `docker run -it --rm pivotalrabbitmq/perf-test:latest --uri amqp://rabbitmq`

* Run binary
  * `bin/runjava com.rabbitmq.perf.PerfTest -x 1 -y 2 -u "throughput-test-1" -a --id "test 1"`
  * `docker run -it --rm pivotalrabbitmq/perf-test:latest --uri amqp://rabbitmq -x 1 -y 2 -u "throughput-test-1" -a --id "test 1"`

* Pre-populate a queue:
  * `bin/runjava com.rabbitmq.perf.PerfTest -y 0 -p -u "my-queue-name" -s 1000 -C 1000000 --id "test-14" -f persistent`
  * `docker run -it --rm pivotalrabbitmq/perf-test:latest --uri amqp://rabbitmq -y 0 -p -u "my-queue-name" -s 1000 -C 1000000 --id "test-14" -f persistent`

* Consume a pre-populated queue:
  * `bin/runjava com.rabbitmq.perf.PerfTest -x0 -y10 -p -u "my-queue-name" --id "test-15"`
  * `docker run -it --rm pivotalrabbitmq/perf-test:latest --uri amqp://rabbitmq -x 0 -y 10 -p -u "my-queue-name" --id "test-15"`

* Run using spec Json and exportings results:
  * `$RABBITMQ_PERF_HOME/bin/runjava com.rabbitmq.perf.PerfTestMulti specs.js perftest-result.js`
