help:
	@echo "Make sure the FLIIT_DEV_WEBSITE_BUCKET and FLIIT_DEV_SITE_CLOUDFRONT_DIST_ID are set and run 'make deploy'"

deploy:
	aws s3 sync . s3://$(FLIIT_DEV_WEBSITE_BUCKET) --exclude ".git/" --exclude "README.md" --exclude "Makefile" && \
	aws configure set preview.cloudfront true && \
	aws cloudfront create-invalidation --distribution-id $(FLIIT_DEV_SITE_CLOUDFRONT_DIST_ID) --paths /index.html /swagger.yml
