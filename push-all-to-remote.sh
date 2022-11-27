#!/bin/bash
if [ -z "${2}" ]; then
  echo "Usage: ${0} remote_name remote_url"
  exit
fi
git remote add ${1} ${2}
git push -f ${1} master
git push -f ${1} --all
git push -f ${1} --tags
git push -f ${1} refs/notes/*
