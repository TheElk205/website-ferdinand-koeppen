# Lightweight static site server
FROM nginx:alpine

# Drop default nginx content and copy the portfolio in
RUN rm -rf /usr/share/nginx/html/*
COPY index.html photo.jpg ferdinand-koeppen-cv.pdf /usr/share/nginx/html/

EXPOSE 80

# nginx:alpine already has a sensible default CMD; no override needed.