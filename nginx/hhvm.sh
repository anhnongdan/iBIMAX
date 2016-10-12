#!/bin/sh
exec hhvm --mode server -vServer.Type=fastcgi -vServer.Port=__HHVM_PORT__
