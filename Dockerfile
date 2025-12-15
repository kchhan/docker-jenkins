FROM jenkins/jenkins:2.541

ENV JAVA_OPTS="\
-XX:-OmitStackTraceInFastThrow \
-XX:+UseG1GC \
-XX:+UseStringDeduplication \
-XX:+ParallelRefProcEnabled \
-XX:+DisableExplicitGC \
-XX:+UnlockDiagnosticVMOptions \
-XX:+UnlockExperimentalVMOptions \
-Xmx2g \
-Dfile.encoding=UTF-8 \
-Djenkins.install.runSetupWizard=false"

EXPOSE 8080