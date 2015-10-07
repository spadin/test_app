# TestApp

This is an example app showing how to use [Paperclip][1] to save files on a
Rails model.

To get up and running, setup your database in `config/database.yml`

```
$ rake db:create db:migrate
```

### File system for storage

By default the app will save files to your file system at: `public/system`

### S3 for storage

If you're using S3 for storage, you'll need the following environment
variables set up.

```
S3_UPLOAD_ENABLED=true
S3_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXX
S3_SECRET_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
S3_BUCKET=XXXXXXXXXXXXXX
S3_HOST_ALIAS=XXXXXXXXXXXXX.cloudfront.net
```

`S3_HOST_ALIAS` is optional. When set, the image urls will point to this
domain, this works well if you've set up a Cloudfront distribution.

You can use a file named `.env` and the app will load these environment
variables for you.

[1]: https://github.com/thoughtbot/paperclip
