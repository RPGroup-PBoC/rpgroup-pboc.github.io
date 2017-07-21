echo "Generating rpgroup website. Please enjoy a nice glass of Kool-Aid. This may take a minute"
bundle exec jekyll build
echo "Pushing to Amazon S3"
s3_website push
