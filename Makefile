# Cleanup database
clean:
	rm -fR ./es/data ./db/mysql_data
	mkdir ./es/data

# Destroy all environment
destory:
	cd ./db; \
	rm -fR mysql_data; \
	cd ../; \
	docker-compose down --rmi all --volumes --remove-orphans;

# Shorthand of running docker images
run:
	docker-compose up --build;

# clean and rerun
rerun:
	rm -fR ./es/data ./db/mysql_data
	docker-compose --env-file ./.env up --build;