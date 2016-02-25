-- 1) Run:  mvn clean package
-- 2) Run:  cd target/
-- 3) Run:  hive
-- 4) Run these lines to verify!

ADD JAR jars/kotlin-runtime-1.0.0.jar;
ADD JAR jars/kotlin-stdlib-1.0.0.jar;
ADD JAR kotlinhive-intro-1.0.0-SNAPSHOT.jar;
CREATE TEMPORARY FUNCTION sandbox AS 'com.mergehead.kotlinhive.intro.SandboxSimpleUDF';
SELECT sandbox('Test Me');
DESCRIBE FUNCTION sandbox;
DESCRIBE FUNCTION EXTENDED sandbox;
