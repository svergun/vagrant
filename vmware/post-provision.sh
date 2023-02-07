#!/bin/bash

node_list=$(vagrant status | awk '/node.*/ {print $1}')

for i in $node_list; do
  echo "Updating /etc/hosts on $i..."
  for node in $node_list; do
    ip_node="$(vagrant ssh $node -c 'echo -n $(hostname -I)')"
    echo "  adding $ip_node $node.example.com $node"
    vagrant ssh $i -c "grep -xF '$ip_node $node.example.com $node' /etc/hosts || sudo sh -c \"echo '$ip_node $node.example.com $node' >> /etc/hosts\""
  done
done
