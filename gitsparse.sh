function gitsparse {
	if [ -z $1 ];then
		echo 'Usage: gitsparse git_url file_1 [... file_n]'
		return
       	fi
	local dir_name=${1##*/}
	mkdir $dir_name
	pushd $dir_name >/dev/null
	git init
	git config core.sparsecheckout true
	git remote add origin $1
	shift
	for i in $@
	do
		echo $i >> .git/info/sparse-checkout
	done
	git pull origin master --depth=1
	rm -rf .git
	popd >/dev/null
}
