echo
echo compiling jar file...
echo
/Users/mpshenitsyn/Library/Java/JavaVirtualMachines/liberica-20.0.1/bin/java -Dmaven.multiModuleProjectDirectory=/Users/mpshenitsyn/IdeaProjects/NativesClubLanding -Djansi.passthrough=true -Dmaven.home=/Applications/IntelliJ IDEA.app/Contents/plugins/maven/lib/maven3 -Dclassworlds.conf=/Applications/IntelliJ IDEA.app/Contents/plugins/maven/lib/maven3/bin/m2.conf -Dmaven.ext.class.path=/Applications/IntelliJ IDEA.app/Contents/plugins/maven/lib/maven-event-listener.jar -javaagent:/Applications/IntelliJ IDEA.app/Contents/lib/idea_rt.jar=58732:/Applications/IntelliJ IDEA.app/Contents/bin -Dfile.encoding=UTF-8 -Dsun.stdout.encoding=UTF-8 -Dsun.stderr.encoding=UTF-8 -classpath /Applications/IntelliJ IDEA.app/Contents/plugins/maven/lib/maven3/boot/plexus-classworlds.license:/Applications/IntelliJ IDEA.app/Contents/plugins/maven/lib/maven3/boot/plexus-classworlds-2.6.0.jar org.codehaus.classworlds.Launcher -Didea.version=2023.1 org.apache.maven.plugins:maven-jar-plugin:3.3.0:jar
echo
echo done
echo
echo compiling docker image...
echo
docker build --tag 'landing_image' .
echo
echo done
echo
docker run -p 8080:8080 'landing_image'