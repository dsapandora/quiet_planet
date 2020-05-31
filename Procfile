web: bundle exec puma -C config/puma.rb
worker: bundle exec sidekiq -C config/sidekiq.yml
karafka_server: bundle exec karafka server
karafka_server2: bundle exec karafka server --consumer-groups=INTEGRATION-dicarina-ave
release: rails db:migrate
