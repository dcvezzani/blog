CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "body" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "firstname" varchar(255), "lastname" varchar(255), "username" varchar(255), "password" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO schema_migrations (version) VALUES ('20140117013244');

INSERT INTO schema_migrations (version) VALUES ('20140117013334');
