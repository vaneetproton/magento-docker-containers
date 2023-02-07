#!/bin/bash

mkdir /var/www/sinalite/pub/media/customer_documents_eprint
mkdir /var/www/sinalite/pub/media/customer_documents
mkdir /var/www/sinalite/pub/media/custom_quote_request
mkdir /var/www/sinalite/pub/media/customer_images
mkdir /var/www/sinalite/pub/media/pod_customer_images
mkdir /var/www/sinalite/pub/media/artwork
mkdir /var/www/sinalite/pub/media/emb_customer_images
mkdir /var/www/sinalite/pub/media/box_thumbnail_images
mkdir /var/www/sinalite/pub/media/catalog/category
mkdir /var/www/sinalite/pub/media/catalog/product
mkdir /var/www/sinalite/pub/media/images/marketing-assets
mkdir /var/www/sinalite/pub/media/sitemap
mkdir /var/www/sinalite/pub/ftp
mkdir /var/www/sinalite/pub/media/images/designer
mkdir /var/www/sinalite/pub/media/webinar
mkdir /var/www/sinalite/pub/media/files-gelato
mkdir /var/www/sinalite/pub/uppy/uploads

mount -t nfs -o nolock,hard 3.22.35.10:/sinalite-sinastore-media-dev24/customer_documents_eprint /var/www/sinalite/pub/media/customer_documents_eprint
mount -t nfs -o nolock,hard 3.22.35.10:/sinalite-sinastore-media-dev24/customer_documents /var/www/sinalite/pub/media/customer_documents
mount -t nfs -o nolock,hard 3.22.35.10:/custom-quote-request-dev24/files /var/www/sinalite/pub/media/custom_quote_request
mount -t nfs -o nolock,hard 3.22.35.10:/sinalite-sinastore-media-dev24/customer_images /var/www/sinalite/pub/media/customer_images
mount -t nfs -o nolock,hard 3.22.35.10:/sinalite-sinastore-media-dev24/api2cart_customer_images /var/www/sinalite/pub/media/pod_customer_images
mount -t nfs -o nolock,hard 3.22.35.10:/sinalite-sinastore-media-dev24/artwork /var/www/sinalite/pub/media/artwork
mount -t nfs -o nolock,hard 3.22.35.10:/sinalite-sinastore-media-dev24/emb_customer_images /var/www/sinalite/pub/media/emb_customer_images
mount -t nfs -o nolock,hard 3.22.35.10:/sinalite-sinastore-media-dev24/box_thumbnail_images /var/www/sinalite/pub/media/box_thumbnail_images
mount -t nfs -o nolock,hard 3.22.35.10:/backend-upload-images-dev24/catalog-category /var/www/sinalite/pub/media/catalog/category
mount -t nfs -o nolock,hard 3.22.35.10:/backend-upload-images-dev24/catalog-product /var/www/sinalite/pub/media/catalog/product
mount -t nfs -o nolock,hard 3.22.35.10:/backend-upload-images-dev24/marketing-assets /var/www/sinalite/pub/media/images/marketing-assets
mount -t nfs -o nolock,hard 3.22.35.10:/backend-upload-images-dev24/sitemap /var/www/sinalite/pub/media/sitemap
mount -t nfs -o nolock,hard 3.22.35.10:/sinalite-ftp-dev24 /var/www/sinalite/pub/ftp
mount -t nfs -o nolock,hard 3.22.35.10:/sinalite-sinastore-media-dev24/designer /var/www/sinalite/pub/media/images/designer
mount -t nfs -o nolock,hard 3.22.35.10:/sinalite-sinastore-media-dev24/webinar /var/www/sinalite/pub/media/webinar
mount -t nfs -o nolock,hard 3.22.35.10:/files-gelato-dev24 /var/www/sinalite/pub/media/files-gelato
mount -t nfs -o nolock,hard 3.22.35.10:/sinalite-sinastore-media-dev24/uppy_uploads /var/www/sinalite/pub/uppy/uploads