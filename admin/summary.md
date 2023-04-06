## User Management

### Add a new user

`useradd [USERNAME]`

### Change a users passward

`passwd [USERNAME]`

### Add users to a group - existing user

`usermod -a -G [GROUPNAME] [USERNAME]`

### Delete a user

`userdel [USERNAME]`

### View existing users and groups

`cat /etc/passwd | sort`

### Change a users home directory location

`usermod -d -m [NEW_DIRECTORY] [USERNAME]`

### Change a users UID

`usermod -u [UID] [USER_NAME]`
