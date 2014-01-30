Feature: Hive
    In order to verify, init or list hive configs
    As a CLI
    I want to see success

    Scenario: Initializing hive
        When I run `zerg init`
            Then the following files should exist:
                | hive/helloworld.ke |
            Then the file "hive/helloworld.ke" should contain:
                """
                {
                    "naming_type": "sequence",
                    "naming_prefix": "zergling",
                    "instances": 1,
                    "tasks": [
                        {
                            "type": "inline",
                            "payload": { "inline": "echo \"ZERG RUSH!\"" },
                            "repeat": 1
                        }        
                    ],
                    "vm": {
                    "driver": "vagrant",
                    "type": "virtualbox",
                    "rebuid": false
                    }
                }
                """

    Scenario: Verifying hive 
        When I run `zerg hive verify`
        Then the output should contain "SUCCESS!"

    Scenario: Listing hive tasks
        When I run `zerg hive list`
        Then the output should contain "1 tasks in current hive:"
