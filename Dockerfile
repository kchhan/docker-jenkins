FROM jenkins/jenkins:2.541

# Recommended Java arguments from https://docs.cloudbees.com/docs/cloudbees-ci-kb/latest/best-practices/prepare-jenkins-for-support
ENV JAVA_OPTS="\
-XX:-OmitStackTraceInFastThrow \
-XX:+UseG1GC \
-XX:+UseStringDeduplication \
-XX:+ParallelRefProcEnabled \
-XX:+DisableExplicitGC \
-XX:+UnlockDiagnosticVMOptions \
-XX:+UnlockExperimentalVMOptions \
-XX:+LogVMOutput \
-Xmx2g \
-Dfile.encoding=UTF-8 \
-Djenkins.install.runSetupWizard=false"

COPY plugins.yaml .

# https://github.com/jenkinsci/plugin-installation-manager-tool
RUN jenkins-plugin-cli --plugin-file plugins.yaml

EXPOSE 8080
EXPOSE 50000