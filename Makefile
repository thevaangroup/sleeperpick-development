deploy:
	roots clean
	roots compile
	ship public -to netlify

watch:
	roots clean
	roots watch

build:
	roots clean
	roots compile
