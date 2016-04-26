function ec2 --argument-names subcommand
  # if test (count $argv) -lt 1
  #   set_color red; echo 'Error: Needs some args'
  #   return 1
  # end

  # set --local subcommand $argv[1]

  # getopts $argv[2..-1] | while read -l key value

  # switch $argv[2]
  #   case 'i-*'
  #     set inst_dns (ec2 dns $inst_id)
  # end

  switch $subcommand
    case ssh
      set --local inst_id $argv[2]
      ssh -i /Users/laughedelic/.aws/aalekhin.pem ec2-user@(ec2 dns $inst_id)

    case log
      set --local inst_id $argv[2]
      ssh -i /Users/laughedelic/.aws/aalekhin.pem ec2-user@(ec2 dns $inst_id) 'tail -n 50 -f /log.txt'

    case kill
      set --local inst_id $argv[2]
      aws ec2 terminate-instances --instance-ids $inst_id

    case dns
      spin --format=" @ Getting public DNS name for $argv[2] \r" \
        "aws --output json ec2 describe-instances --instance-ids $argv[2]" | \
      jq --join-output '.Reservations[0].Instances[0].PublicDnsName'

    case ls

      set -l instances (spin "aws --output json ec2 describe-instances \
        --filters \
          'Name=key-name,Values=aalekhin' \
          'Name=instance-state-name,Values=running,pending' \
        ")

      echo $instances | \
      jq '[ .Reservations | .[] | .Instances | .[] | {id: .InstanceId, key: .KeyName, type: .InstanceType, state: .State.Name,
      group: .Tags | map(select(.Key? == "group")) | .[0]?.Value? } ]'

    case '*'
      set_color red; echo "Unknown subcommand "($subcommand)""
      return 1
  end

end
