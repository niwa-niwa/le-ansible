#!/bin/sh

echo "  Type your id that will be your sub domain of your site."
echo "  If you want to cancel this prompt, empty and press the enter button."

read input

if [ ! -z $input ] ; then
  echo "  Start deployment. "
  echo "  please wait for completion."
  echo "  You can access your site \"http://$input.localhost\" after completion."
  ansible-playbook -i ./inventory/containers.ini ./main.yml --extra-vars ent_id=$input
fi

echo "  done  "
