set -e

while :;
do
	inotifywait -r -e create,modify --format %w ./
	tectonic thesis.tex
	cp thesis.pdf ~/documents/mas/
done
