[{
		'name': 'my-test-scenario',
		'type': 'simple',
		'uri': 'amqp://localhost',
		'params': [{
			'time-limit': 30,
			'producer-count': 4,
			'consumer-count': 2
		}]
	},
	{
		'name': 'message-sizes-and-producers',
		'type': 'varying',
		'uri': 'amqp://localhost',
		'params': [{
			'time-limit': 30,
			'consumer-count': 0
		}],
		'variables': [{
				'name': 'min-msg-size',
				'values': [0, 1000, 10000, 100000]
			},
			{
				'name': 'producer-count',
				'values': [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
			}
		]
	},
	{
		'name': 'message-sizes-large',
		'type': 'varying',
		'uri': 'amqp://localhost',
		'params': [{
			'time-limit': 30
		}],
		'variables': [{
			'name': 'min-msg-size',
			'values': [5000, 10000, 50000, 100000, 500000, 1000000]
		}]
	},
	{
		'name': 'rate-vs-latency',
		'type': 'rate-vs-latency',
		'uri': 'amqp://localhost',
		'params': [{
			'time-limit': 30
		}]
	}
]