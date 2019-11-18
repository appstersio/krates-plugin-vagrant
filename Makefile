# README: http://makefiletutorial.com
GEM_NAME = krates-plugin-vagrant
GEM_EMAIL = staticpagesio@gmail.com
# Adding PHONY to a target will prevent make from confusing the phony target with a file name.
# In this case, if `test` folder exists, `make test` will still be run.
.PHONY: test build teardown up publish

build:
	@docker-compose build --no-cache --force-rm

# NOTE: Find out more about use of logical OR operators in bash:
# https://bash.cyberciti.biz/guide/Logical_OR
dev:
	@docker-compose -f docker-compose.yml -f docker-compose.d.yml run --rm plugin

release-up:
	@docker-compose up -d && sleep 5 && \
		echo "OK: Successfuly launched all the required components..."

test:
	@docker-compose exec -T plugin bundle exec rspec && \
		echo "OK: Successfuly passed all the tests for this build of the plugin..."

teardown:
	@docker-compose down && \
		echo "OK: Successfuly shutdown and removed all the required components..."

gemspec:
	@docker-compose exec -T plugin gem build $(GEM_NAME).gemspec && \
	echo "OK: Successfuly built .gem file that includes the plugin..."

# NOTE: This is a temporary task until gem has released 3.1.0 version
credspec:
	@docker-compose exec -T plugin bash -c "echo :rubygems_api_key: $$(kontena vault read --value KRATES_GEM_HOST_API_KEY) > ~/.gem/credentials && chmod 0600 ~/.gem/credentials" && \
		echo "OK: Successfuly saved credspec file for publishing..."

publish:
	@docker-compose exec -T plugin bash -c "gem push $$(basename $(GEM_NAME)*.gem)" && \
		echo "OK: Successfuly published plugin to RubyGems.org..."