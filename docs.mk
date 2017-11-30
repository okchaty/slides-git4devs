#
# See ./CONTRIBUTING.rst
#

docs.show: clean
	restview "${FILE_README}"

docs.make.html: clean
	docker-compose run --rm docs bash -c "cd docs && make html"
