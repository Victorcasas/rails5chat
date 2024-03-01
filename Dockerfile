# Start from the official Ruby image
FROM ruby:3.0.3

# Install Node.js and Yarn (needed for Rails asset compilation)
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn

# Set the working directory
WORKDIR /myapp

# Add the Gemfile and Gemfile.lock to the image
COPY Gemfile /myapp/Gemfile
# Actualizar dependencias
RUN bundle update
COPY Gemfile.lock /myapp/Gemfile.lock

# Install gems
RUN gem install bundler:1.13.7
RUN bundle install

# Copy the rest of the application into the image
COPY . /myapp

# Expose the port that the Rails server will run on
EXPOSE 3000

# Define the command to start the server
CMD ["rails", "server", "-b", "0.0.0.0"]
