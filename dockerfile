# Dockerfile for Jekyll site

FROM ruby:3.1

# Set working directory
WORKDIR /usr/src/app

# Copy the site source
COPY . .

# Install dependencies
RUN gem install bundler && bundle install

# Expose port
EXPOSE 4000

# Run the site
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
