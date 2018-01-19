# Run something in Docker and get any resulting files

This is for convenience as an alternative to maintaining VMs just to do simple junk.

# Instructions

```sh
# rm output/*

# Get a shell to build whatever you want

./dockermake precise
# Send a single command
./dockermake precise echo hello world > out.txt
```

All files created in `/make/` in the docker container will appear in the `output` directory.

