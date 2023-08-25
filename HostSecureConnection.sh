### Create a script that securely transfers files between two remote servers using SSH, while maintaining the directory structure and preserving file permissions.

#!/bin/bash
scp -r -p user1@server1:/pathtofiles user2@server2:/pathtodestination
