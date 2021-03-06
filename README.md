# PG Database backup and restore scripts
Dockerfile + scripts to backup and restore from a google cloud bucket

## Service account location
The service account json file should be accessible in /service-account/account.json

## Environment Variables required
- `DATABASE_HOST`
- `DATABASE_USERNAME`
- `DATABASE_PASSWORD`
- `DATABASE_HOST`
- `BUCKET_NAME`
- `FILENAME` # Required for restore only

## Building the image:
```bash
$ docker build -t pg-db-backup .
```

## Backup
```bash
$ docker run --rm pg-db-backup --env-file=.env backup
```

## Restore
```bash
$ docker run --rm pg-db-backup --env-file=.env --env=FILENAME=filename.dump restore
```

## TODO

As of now this is only written to backup using google cloud, I would like to support AWS and Digital ocean in the future
