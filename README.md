# Linux Git Server Capstone Project

## Overview

This project demonstrates the setup of a **self-hosted Git server on Linux** with secure SSH authentication and automated backups.

---

## Objectives

* Configure a Git server on Linux
* Implement secure SSH key-based authentication
* Perform version control operations (clone, commit, push)
* Automate backups using shell scripting
* Schedule tasks using cron

---

## Features

### Git Server Setup

* Created a bare repository in `/srv/git/project.git`
* Enabled remote access via SSH

### Secure Authentication

* Configured SSH key-based login
* Disabled password authentication

### Version Control Workflow

* Cloned repository
* Created commits
* Pushed changes to server

### Backup Automation

* Bash script to backup Git repositories
* Compressed backups using `.tar.gz`

### Scheduling

* Automated backups using cron (daily at 2 AM)

---

## Project Structure

```
git-capstone/
├── scripts/
│   └── backup_git.sh
├── screenshots/
│   ├── ssh_login.png
│   ├── git_push.png
│   ├── backup_output.png
│   └── crontab.png
└── README.md
```

---

## How to Run

### Clone Repository

```
git clone gituser@localhost:/srv/git/project.git
```

### Run Backup Script

```
chmod +x scripts/backup_git.sh
./scripts/backup_git.sh
```

---

## Cron Job

```
0 2 * * * /home/aman/backup_git.sh
```

---

## Screenshots

See `screenshots/` folder for:

* SSH login
* Git push
* Backup output
* Cron configuration

---

## Learning Outcomes

* Linux system administration
* Secure remote access (SSH)
* Git version control workflow
* Automation with shell scripting
* Task scheduling with cron

---

##  Conclusion

This project demonstrates practical implementation of a version control system integrated with Linux administration, security, and automation practices.
