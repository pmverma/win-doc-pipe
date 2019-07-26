#!/bin/bash

echo $'{"experimental": true}' | tee "/c/ProgramData/Docker/config/daemon.json";
