pkg_name=demo
pkg_origin=exofaaste
pkg_version="0.1.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("Apache-2.0")
pkg_deps=(core/jre8)
pkg_build_deps=(core/jdk8/8u131 core/maven)
pkg_svc_user="hab"
pkg_svc_run="java -jar ${HAB_CACHE_SRC_PATH}/${pkg_name}-${pkg_version}/target/${pkg_name}.jar"
#pkg_bin_dirs=(bin)


#Prepare before build
do_prepare()
{
    export JAVA_HOME=$(hab pkg path core/jdk8)
}

do_build()
{
	cp -r $PLAN_CONTEXT/../ $HAB_CACHE_SRC_PATH/$pkg_dirname
	cd ${HAB_CACHE_SRC_PATH}/${pkg_dirname}
	mvn clean package -DskipTests
}

do_install()
{
 cp ${HAB_CACHE_SRC_PATH}/${pkg_dirname}/target/${pkg_name}.jar $pkg_prefix/   
 return 0
}
