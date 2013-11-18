CREATE TABLE "microposts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" varchar(255), "string" varchar(255), "user_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "relationships" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "follower_id" integer, "followed_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "email" varchar(255), "created_at" datetime, "updated_at" datetime, "password_digest" varchar(255), "remember_token" varchar(255), "admin" boolean DEFAULT 'f');
CREATE INDEX "index_relationships_on_followed_id" ON "relationships" ("followed_id");
CREATE INDEX "index_relationships_on_follower_id" ON "relationships" ("follower_id");
CREATE UNIQUE INDEX "index_relationships_on_follower_id_and_followed_id" ON "relationships" ("follower_id", "followed_id");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE INDEX "index_users_on_remember_token" ON "users" ("remember_token");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20131003145204');

INSERT INTO schema_migrations (version) VALUES ('20131003185300');

INSERT INTO schema_migrations (version) VALUES ('20131003190555');

INSERT INTO schema_migrations (version) VALUES ('20131028190621');

INSERT INTO schema_migrations (version) VALUES ('20131029185519');

INSERT INTO schema_migrations (version) VALUES ('20131030162823');

INSERT INTO schema_migrations (version) VALUES ('20131105131119');
