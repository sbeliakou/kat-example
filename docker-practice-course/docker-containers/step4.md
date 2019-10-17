
Create two containers which will restart:
- 1st - regardless of the exit status;
- 2nd - only if the container exits with a non-zero exit status and has 7 restart retries.  

## Requirements:
- 1st container:
  - should runned in **detach** mode;
  - should restart regardless of the exit status;
  - container name: `restarter_1`;
  - image name: `busybox`;
  - command: `sleep 3`.
- 2nd container:
  - should runned in **detach** mode;
  - should restart only if the container exits with a non-zero exit status;
  - should have 7 restart retries;
  - container name: `restarter_2`;
  - image name: `busybox`;
  - command: `sleep -3`.
